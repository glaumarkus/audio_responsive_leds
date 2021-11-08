#include <wiringPiI2C.h>
#include <ws2811.h>



constexpr long      TARGET_FREQ = WS2811_TARGET_FREQ;
constexpr int       GPIO_PIN = 18;
constexpr int       DMA = 10;
constexpr uint32_t  STRIP_TYPE = WS2811_STRIP_GBR;
constexpr int       LED_COUNT = 32;



void setup(ws2811_t& led_strip);
