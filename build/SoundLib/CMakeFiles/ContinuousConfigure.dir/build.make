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

# Utility rule file for ContinuousConfigure.

# Include the progress variables for this target.
include SoundLib/CMakeFiles/ContinuousConfigure.dir/progress.make

SoundLib/CMakeFiles/ContinuousConfigure:
	cd /home/pi/LutziLEDProject/build/SoundLib && /usr/bin/ctest -D ContinuousConfigure

ContinuousConfigure: SoundLib/CMakeFiles/ContinuousConfigure
ContinuousConfigure: SoundLib/CMakeFiles/ContinuousConfigure.dir/build.make

.PHONY : ContinuousConfigure

# Rule to build all files generated by this target.
SoundLib/CMakeFiles/ContinuousConfigure.dir/build: ContinuousConfigure

.PHONY : SoundLib/CMakeFiles/ContinuousConfigure.dir/build

SoundLib/CMakeFiles/ContinuousConfigure.dir/clean:
	cd /home/pi/LutziLEDProject/build/SoundLib && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousConfigure.dir/cmake_clean.cmake
.PHONY : SoundLib/CMakeFiles/ContinuousConfigure.dir/clean

SoundLib/CMakeFiles/ContinuousConfigure.dir/depend:
	cd /home/pi/LutziLEDProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/LutziLEDProject /home/pi/LutziLEDProject/SoundLib /home/pi/LutziLEDProject/build /home/pi/LutziLEDProject/build/SoundLib /home/pi/LutziLEDProject/build/SoundLib/CMakeFiles/ContinuousConfigure.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : SoundLib/CMakeFiles/ContinuousConfigure.dir/depend

