# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/LutziLEDProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/LutziLEDProject/build

# Include any dependencies generated for this target.
include CMakeFiles/Lutzi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Lutzi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lutzi.dir/flags.make

CMakeFiles/Lutzi.dir/main.cpp.o: CMakeFiles/Lutzi.dir/flags.make
CMakeFiles/Lutzi.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LutziLEDProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Lutzi.dir/main.cpp.o"
	/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Lutzi.dir/main.cpp.o -c /home/pi/LutziLEDProject/main.cpp

CMakeFiles/Lutzi.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lutzi.dir/main.cpp.i"
	/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/LutziLEDProject/main.cpp > CMakeFiles/Lutzi.dir/main.cpp.i

CMakeFiles/Lutzi.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lutzi.dir/main.cpp.s"
	/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/LutziLEDProject/main.cpp -o CMakeFiles/Lutzi.dir/main.cpp.s

CMakeFiles/Lutzi.dir/setup.cpp.o: CMakeFiles/Lutzi.dir/flags.make
CMakeFiles/Lutzi.dir/setup.cpp.o: ../setup.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LutziLEDProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Lutzi.dir/setup.cpp.o"
	/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Lutzi.dir/setup.cpp.o -c /home/pi/LutziLEDProject/setup.cpp

CMakeFiles/Lutzi.dir/setup.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lutzi.dir/setup.cpp.i"
	/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/LutziLEDProject/setup.cpp > CMakeFiles/Lutzi.dir/setup.cpp.i

CMakeFiles/Lutzi.dir/setup.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lutzi.dir/setup.cpp.s"
	/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/LutziLEDProject/setup.cpp -o CMakeFiles/Lutzi.dir/setup.cpp.s

CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.o: CMakeFiles/Lutzi.dir/flags.make
CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.o: ../rpi_ws281x/dma.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LutziLEDProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.o"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.o   -c /home/pi/LutziLEDProject/rpi_ws281x/dma.c

CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.i"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LutziLEDProject/rpi_ws281x/dma.c > CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.i

CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.s"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LutziLEDProject/rpi_ws281x/dma.c -o CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.s

CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.o: CMakeFiles/Lutzi.dir/flags.make
CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.o: ../rpi_ws281x/pwm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LutziLEDProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.o"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.o   -c /home/pi/LutziLEDProject/rpi_ws281x/pwm.c

CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.i"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LutziLEDProject/rpi_ws281x/pwm.c > CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.i

CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.s"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LutziLEDProject/rpi_ws281x/pwm.c -o CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.s

CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.o: CMakeFiles/Lutzi.dir/flags.make
CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.o: ../rpi_ws281x/pcm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LutziLEDProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.o"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.o   -c /home/pi/LutziLEDProject/rpi_ws281x/pcm.c

CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.i"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LutziLEDProject/rpi_ws281x/pcm.c > CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.i

CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.s"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LutziLEDProject/rpi_ws281x/pcm.c -o CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.s

CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.o: CMakeFiles/Lutzi.dir/flags.make
CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.o: ../rpi_ws281x/rpihw.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LutziLEDProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.o"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.o   -c /home/pi/LutziLEDProject/rpi_ws281x/rpihw.c

CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.i"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LutziLEDProject/rpi_ws281x/rpihw.c > CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.i

CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.s"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LutziLEDProject/rpi_ws281x/rpihw.c -o CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.s

CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.o: CMakeFiles/Lutzi.dir/flags.make
CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.o: ../rpi_ws281x/ws2811.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LutziLEDProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.o"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.o   -c /home/pi/LutziLEDProject/rpi_ws281x/ws2811.c

CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.i"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LutziLEDProject/rpi_ws281x/ws2811.c > CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.i

CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.s"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LutziLEDProject/rpi_ws281x/ws2811.c -o CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.s

CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.o: CMakeFiles/Lutzi.dir/flags.make
CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.o: ../rpi_ws281x/mailbox.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LutziLEDProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.o"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.o   -c /home/pi/LutziLEDProject/rpi_ws281x/mailbox.c

CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.i"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LutziLEDProject/rpi_ws281x/mailbox.c > CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.i

CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.s"
	/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LutziLEDProject/rpi_ws281x/mailbox.c -o CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.s

# Object files for target Lutzi
Lutzi_OBJECTS = \
"CMakeFiles/Lutzi.dir/main.cpp.o" \
"CMakeFiles/Lutzi.dir/setup.cpp.o" \
"CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.o" \
"CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.o" \
"CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.o" \
"CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.o" \
"CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.o" \
"CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.o"

# External object files for target Lutzi
Lutzi_EXTERNAL_OBJECTS =

Lutzi: CMakeFiles/Lutzi.dir/main.cpp.o
Lutzi: CMakeFiles/Lutzi.dir/setup.cpp.o
Lutzi: CMakeFiles/Lutzi.dir/rpi_ws281x/dma.c.o
Lutzi: CMakeFiles/Lutzi.dir/rpi_ws281x/pwm.c.o
Lutzi: CMakeFiles/Lutzi.dir/rpi_ws281x/pcm.c.o
Lutzi: CMakeFiles/Lutzi.dir/rpi_ws281x/rpihw.c.o
Lutzi: CMakeFiles/Lutzi.dir/rpi_ws281x/ws2811.c.o
Lutzi: CMakeFiles/Lutzi.dir/rpi_ws281x/mailbox.c.o
Lutzi: CMakeFiles/Lutzi.dir/build.make
Lutzi: SoundLib/libSoundAnalyzer.a
Lutzi: /usr/lib/arm-linux-gnueabihf/libasound.so
Lutzi: CMakeFiles/Lutzi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/LutziLEDProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable Lutzi"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lutzi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lutzi.dir/build: Lutzi

.PHONY : CMakeFiles/Lutzi.dir/build

CMakeFiles/Lutzi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lutzi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lutzi.dir/clean

CMakeFiles/Lutzi.dir/depend:
	cd /home/pi/LutziLEDProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/LutziLEDProject /home/pi/LutziLEDProject /home/pi/LutziLEDProject/build /home/pi/LutziLEDProject/build /home/pi/LutziLEDProject/build/CMakeFiles/Lutzi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Lutzi.dir/depend

