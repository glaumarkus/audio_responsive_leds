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

# Utility rule file for ContinuousCoverage.

# Include the progress variables for this target.
include SoundLib/CMakeFiles/ContinuousCoverage.dir/progress.make

SoundLib/CMakeFiles/ContinuousCoverage:
	cd /home/pi/LutziLEDProject/build/SoundLib && /usr/bin/ctest -D ContinuousCoverage

ContinuousCoverage: SoundLib/CMakeFiles/ContinuousCoverage
ContinuousCoverage: SoundLib/CMakeFiles/ContinuousCoverage.dir/build.make

.PHONY : ContinuousCoverage

# Rule to build all files generated by this target.
SoundLib/CMakeFiles/ContinuousCoverage.dir/build: ContinuousCoverage

.PHONY : SoundLib/CMakeFiles/ContinuousCoverage.dir/build

SoundLib/CMakeFiles/ContinuousCoverage.dir/clean:
	cd /home/pi/LutziLEDProject/build/SoundLib && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousCoverage.dir/cmake_clean.cmake
.PHONY : SoundLib/CMakeFiles/ContinuousCoverage.dir/clean

SoundLib/CMakeFiles/ContinuousCoverage.dir/depend:
	cd /home/pi/LutziLEDProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/LutziLEDProject /home/pi/LutziLEDProject/SoundLib /home/pi/LutziLEDProject/build /home/pi/LutziLEDProject/build/SoundLib /home/pi/LutziLEDProject/build/SoundLib/CMakeFiles/ContinuousCoverage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : SoundLib/CMakeFiles/ContinuousCoverage.dir/depend

