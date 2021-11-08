#pragma once

#include <vector>
#include <memory>
#include <chrono>
#include <cmath>

#include <ws2811.h>
#include "Color.hpp"

typedef uint16_t ui;

void updateLED(ws2811_t* led_strip , const int& led_id, const Color& color)
{
    led_strip->channel[0].leds[led_id] = color.convert();
}

void updateAllLED(ws2811_t* led_strip , const ui& num_leds, const Color& color)
{
    for (auto i = 0; i < num_leds; i++)
        led_strip->channel[0].leds[i] = color.convert();
}

void turnOffLED(ws2811_t* led_strip , const ui& led_id)
{
    led_strip->channel[0].leds[led_id] = Colors::BlackConverted;
}

void turnOffAllLED(ws2811_t* led_strip , const ui& num_leds)
{
    for (auto i = 0; i < num_leds; i++)
        led_strip->channel[0].leds[i] = Colors::BlackConverted;
}

void render(ws2811_t* led_strip)
{
    ws2811_render(led_strip);  
}



class Animator
{
public:

    Animator();
    Animator(ws2811_t* strip, const ui& LED, const ui& steps);

    ~Animator();

    bool isActive() const;
    virtual void update();

    void setSteps(const ui& steps);
    void setCounter(const ui& counter);
    void setLED(const ui& LED);
    
    ws2811_t* m_strip;
    uint16_t m_steps;   // num of animation steps
    uint16_t m_counter; // current position in animation
    uint16_t m_LED;     // LED to animate

};


Animator::Animator() :
    m_steps(0),
    m_counter(0),
    m_LED(0)
{}

Animator::Animator(ws2811_t* strip, const ui& LED, const ui& steps) :
    m_steps(steps),
    m_counter(0),
    m_LED(LED),
    m_strip(strip)
{}

Animator::~Animator()
{
    turnOffLED(m_strip ,m_LED);
}

void Animator::update()
{}

bool Animator::isActive() const
{
    return m_counter < m_steps;
}

void Animator::setSteps(const ui& steps)
{
    m_steps = steps;
}

void Animator::setCounter(const ui& counter)
{
    m_counter = counter;
}

void Animator::setLED(const ui& LED)
{
    m_LED = LED;
}





class ColorAnimator : Animator
{
public:

    ColorAnimator();
    ColorAnimator(ws2811_t* strip, const ui& LED, const ui& steps, const Color& color);
    //ColorAnimator(ws2811_t& strip, const ui& LED, const ui& steps, const Color& color_start, const Color& color_end);

    virtual void update() override;

private:

    Color m_colorstep; // incrementor for each step

};


ColorAnimator::ColorAnimator() :
    m_colorstep(0),
    Animator()
{}

ColorAnimator::ColorAnimator(ws2811_t* strip, const ui& LED, const ui& steps, const Color& color) :
    m_colorstep(color / steps ),
    Animator(strip, LED, steps * 2)
{}

/*
ColorAnimator::ColorAnimator(ws2811_t& strip, const ui& LED, const ui& steps, const Color& color_start, const Color& color_end) :
    m_colorstep( (color_end - color_start ) / steps ),
    Animator(strip, LED, steps * 2)
{}
*/

void ColorAnimator::update()
{
    if (!isActive())
        return;
    if (m_counter < (m_steps / 2))
    {
        //Color newColor(m_colorstep * m_counter );
        updateLED(m_strip, m_LED, m_colorstep * m_counter++);
        //std::cout << "Update: " << newColor.r << " " << newColor.g << " " << newColor.b << "\n";
    }
    else
    {
        //Color newColor(m_colorstep * (m_steps - m_counter - 1));
        updateLED(m_strip, m_LED, m_colorstep * (m_steps - m_counter++ - 1));
        //std::cout << "Update: " << newColor.r << " " << newColor.g << " " << newColor.b << "\n";
    }
        
    
}


class Animation 
{
public:

    Animation();
    Animation(ws2811_t* strip, std::chrono::milliseconds animation_time);
    
    Animation(const Animation&) = delete;
    Animation(Animation&&) = delete;

    Animation& operator =(const Animation&) = delete;
    Animation& operator =(Animation&&) = delete;

    ~Animation();
    
    virtual void animate() = 0;

    ws2811_t* m_strip;
    std::chrono::milliseconds m_animation_time;

};

Animation::Animation() :
    m_animation_time(0),
    m_strip(nullptr)
{}

Animation::Animation(ws2811_t* strip, std::chrono::milliseconds animation_time) :
    m_animation_time(animation_time),
    m_strip(strip)
{}

Animation::~Animation()
{}



class PulseAnimation : public Animation
{
public:

    PulseAnimation();
    PulseAnimation(ws2811_t* strip, std::chrono::milliseconds animation_time);
    ~PulseAnimation();

    virtual void animate() override;

};

PulseAnimation::PulseAnimation() : 
    Animation()
{}

PulseAnimation::PulseAnimation(ws2811_t* strip, std::chrono::milliseconds animation_time) :
    Animation(strip, animation_time)
{}

PulseAnimation::~PulseAnimation()
{}

// to be run in thread
void PulseAnimation::animate()
{

    constexpr int FRAME_LENGTH = 20;

    // calculate num steps
    auto num_steps = m_animation_time / std::chrono::milliseconds(FRAME_LENGTH);
    //std::cout << "Steps: " << num_steps << "\n" ;

    // initialize Actors
    std::vector<ColorAnimator> animators;
    for (int i = 0; i < 32; i++)
    animators.emplace_back(m_strip, i, num_steps / 2, Color(0.3f, 0.f, 0.3f));

    auto update_time = std::chrono::system_clock::now();

    // update actors according to timer
    for (auto i = 0; i < num_steps; i++)
    {
        // only continue when condition met
        while (std::chrono::system_clock::now() < update_time)
            ; // wait

        // edit next wait time
        update_time = std::chrono::system_clock::now() + std::chrono::milliseconds(FRAME_LENGTH);

        // update actors
        for (auto& actor : animators)
            actor.update();

        // render
        render(m_strip);
    }

 
}
