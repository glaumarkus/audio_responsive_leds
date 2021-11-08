
#pragma once

/*
* Conversion of RGB Values to LED values
*/
struct Color
{
    Color();
    Color(const float& f);
    Color(const float& r, const float& g, const float& b);

    uint32_t convert() const;
    
    Color& operator +=(const float& f);
    Color& operator +=(const Color& other);

    Color& operator -=(const float& f);
    Color& operator -=(const Color& other);
    
    Color& operator *=(const float& f);
    Color& operator *=(const Color& other);
    
    Color& operator /=(const float& f);
    Color& operator /=(const Color& other);
    
    float r;
    float g;
    float b;

private:

    void inBounds();

};

Color operator +(const Color& first, const float& f);
Color operator -(const Color& first, const float& f);
Color operator *(const Color& first, const float& f);
Color operator /(const Color& first, const float& f);

Color operator +(const Color& first, const Color& second);
Color operator -(const Color& first, const Color& second);
Color operator *(const Color& first, const Color& second);
Color operator /(const Color& first, const Color& second);


Color::Color() :
    r(0.0f),
    g(0.0f),
    b(0.0f)
{}


Color::Color(const float& f) :
    r(f),
    g(f),
    b(f)
{}

Color::Color(const float& r, const float& g, const float& b) :
    r(r),
    g(g),
    b(b)
{}

void Color::inBounds()
{
    r = r > 1 ? r = 1 : (r < 0 ? r = 0 : r);
    g = g > 1 ? g = 1 : (g < 0 ? g = 0 : g);
    b = b > 1 ? b = 1 : (b < 0 ? b = 0 : b);
}

uint32_t Color::convert() const
{
    uint32_t ret = (uint8_t)0 << 24 | (uint8_t)(r * 255.9f) << 16 | (uint8_t)(g * 255.9f) << 8 | (uint8_t)(b * 255.9f);
    return ret;
}

Color& Color::operator +=(const float& f)
{
    r += f;
    g += f;
    b += f;
    return *this;
}

Color& Color::operator +=(const Color& other)
{
    r += other.r;
    g += other.g;
    b += other.b;
    return *this;
}

Color& Color::operator -=(const float& f)
{
    r -= f;
    g -= f;
    b -= f;
    return *this;
}

Color& Color::operator -=(const Color& other)
{
    r -= other.r;
    g -= other.g;
    b -= other.b;
    return *this;
}

Color& Color::operator *=(const float& f)
{
    r *= f;
    g *= f;
    b *= f;
    return *this;
}

Color& Color::operator *=(const Color& other)
{
    r *= other.r;
    g *= other.g;
    b *= other.b;
    return *this;
}

Color& Color::operator /=(const float& f)
{
    r /= f;
    g /= f;
    b /= f;
    return *this;
}

Color& Color::operator /=(const Color& other)
{
    r /= other.r;
    g /= other.g;
    b /= other.b;
    return *this;
}

Color operator +(const Color& first, const float& f)
{
   return Color(first.r + f, first.g + f, first.b + f);  
}

Color operator -(const Color& first, const float& f)
{
   return Color(first.r - f, first.g - f, first.b - f);  
}

Color operator *(const Color& first, const float& f)
{
   return Color(first.r * f, first.g * f, first.b * f);  
}

Color operator /(const Color& first, const float& f)
{
   return Color(first.r / f,first.g / f,first.b / f);  
}

Color operator +(const Color& first, const Color& second)
{
    return Color(first.r + second.r, first.g + second.g, first.b + second.b);
}

Color operator -(const Color& first, const Color& second)
{
    return Color(first.r - second.r, first.g - second.g, first.b - second.b);
}

Color operator *(const Color& first, const Color& second)
{
    return Color(first.r * second.r, first.g * second.g, first.b * second.b);
}

Color operator /(const Color& first, const Color& second)
{
    return Color(first.r / second.r, first.g / second.g, first.b / second.b);
}

// static colors

namespace Colors 
{
    Color Black(0);
    uint32_t BlackConverted = Black.convert();

}