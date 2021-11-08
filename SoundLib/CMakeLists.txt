cmake_minimum_required(VERSION 3.0.0)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

project(SoundAnalyzer VERSION 0.1.0)



include(CTest)
enable_testing()


set(SRC_FILES 
${PROJECT_SOURCE_DIR}/src/recorder.cpp
${PROJECT_SOURCE_DIR}/src/processor.cpp
)

set(TARGET SoundAnalyzer)

find_package(ALSA REQUIRED)

add_library(${TARGET} ${SRC_FILES})

target_include_directories( ${TARGET} PUBLIC
${PROJECT_SOURCE_DIR}/include
${PROJECT_SOURCE_DIR}/DSP-Cpp-filters
)

if (ALSA_FOUND)                                                
    include_directories(${ALSA_INCLUDE_DIRS} )                  
    target_link_libraries (${TARGET} ${ALSA_LIBRARIES})      
endif(ALSA_FOUND)  

target_link_libraries(${TARGET} -lpthread -lm)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
