#include <iostream>
#include <fstream>
#include <thread>
#include <chrono>

#include <wiringPiI2C.h>
#include <ws2811.h>

#include "Color.hpp"
#include "SoundLib/include/recorder.h"


constexpr long      TARGET_FREQ = WS2811_TARGET_FREQ;
constexpr int       GPIO_PIN = 18;
constexpr int       DMA = 10;
constexpr uint32_t  STRIP_TYPE = WS2811_STRIP_GBR;
constexpr int       LED_COUNT = 32;



void updateLED(ws2811_t* led_strip , const int& led_id, const Color& color)
{
    led_strip->channel[0].leds[led_id] = color.convert();
}

void render(ws2811_t* led_strip)
{
    ws2811_render(led_strip);  
}


ws2811_t led_strip;

int main()
{

    // setup strip control
    
    led_strip.freq = TARGET_FREQ;
    led_strip.dmanum = DMA;
    led_strip.channel[0].gpionum = GPIO_PIN;
    led_strip.channel[0].count = LED_COUNT;
    led_strip.channel[0].invert = 0;
    led_strip.channel[0].brightness = 255;
    led_strip.channel[0].strip_type = STRIP_TYPE;
    led_strip.channel[1].gpionum = 0;
    led_strip.channel[1].count = 0;
    led_strip.channel[1].invert = 0;
    led_strip.channel[1].brightness = 0;
    ws2811_init(&led_strip);


    // create recorder interface
    Audio::A_Recorder rec;
    rec.setup();

    // create processor interface
    Audio::AudioProcessor2 proc(rec.getStream());

    // open thread for reading audio stream
    std::thread reader(
        [&rec]()
        {
        rec.Start();
        }
        );

    // process block in seperate thread
    std::thread processor([&proc]()
        {
        proc.Start();
        });
    

    // keep recording for n seconds
    const auto timepoint_to_run = std::chrono::system_clock::now() + std::chrono::seconds(60);
    while (std::chrono::system_clock::now() < timepoint_to_run)
    {
        // if there are amplitudes available..
        if (!proc.getSamples().empty())
        {   

            // print to file
            auto value = proc.getSamples().pop_front();

            //print the current amplitude per buffer
            auto amplitude = proc.getAmplitude().pop_front();
            
            // cast color from amplitude
            Color amp_color(amplitude);
            
            // convert color
            const auto conv_color = amp_color.convert();

            // update LED value
            for (int i = 0; i < LED_COUNT; i++)
                led_strip.channel[0].leds[i] = conv_color;

            // render
            ws2811_render(&led_strip);
            
        }
    }


    // stop threads
    rec.Stop();
    proc.Stop();

    // join threads
    if (reader.joinable())
        reader.join();
    if (processor.joinable())
        processor.join();



    return 0;
}


class LEDAnimator
{
public:

    LEDAnimator();
    ~LEDAnimator();

    void update(const float& sample);

private:

    ws2811_t* m_strip;                                                                                              
    float m_lastSample;
    int m_LED;
    int m_step;


};


void LEDAnimator::update(const float& sample)
{
    Color amplitude;

    // increase brightness
    if (sample > m_lastSample)
    {
        amplitude = Color(sample);
        m_step = 100;
    }
    // gradually decrease
    else if
    {
        amplitude =  Color(m_lastSample * (m_step--));
    }
    
    m_lastSample = sample;
    m_strip->channel[0].leds[m_LED] = amplitude.convert();
}
