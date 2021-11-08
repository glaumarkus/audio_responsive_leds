cmake_minimum_required(VERSION 3.0.0)
project(Lutzi VERSION 0.1.0)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

SET(GCC_COVERAGE_COMPILE_FLAGS "-fpermissive")


find_package(Threads REQUIRED)

add_subdirectory(SoundLib)

include(CTest)
enable_testing()

set(
    SRC 
    main.cpp
    setup.cpp
    rpi_ws281x/dma.c
    rpi_ws281x/pwm.c
    rpi_ws281x/pcm.c
    rpi_ws281x/rpihw.c
    rpi_ws281x/ws2811.c
    rpi_ws281x/mailbox.c
)

add_definitions(${GCC_COVERAGE_COMPILE_FLAGS})
add_executable(Lutzi ${SRC})

target_include_directories(Lutzi PUBLIC rpi_ws281x)

target_link_libraries(Lutzi PRIVATE 
Threads::Threads
SoundAnalyzer
)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
