# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/bin/cmake.exe

# The command to remove a file.
RM = /usr/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/Hello/CLionProjects/Clock

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/Hello/CLionProjects/Clock/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Clock.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Clock.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Clock.dir/flags.make

CMakeFiles/Clock.dir/main.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Hello/CLionProjects/Clock/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Clock.dir/main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Clock.dir/main.cpp.o -c /cygdrive/c/Users/Hello/CLionProjects/Clock/main.cpp

CMakeFiles/Clock.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Hello/CLionProjects/Clock/main.cpp > CMakeFiles/Clock.dir/main.cpp.i

CMakeFiles/Clock.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Hello/CLionProjects/Clock/main.cpp -o CMakeFiles/Clock.dir/main.cpp.s

CMakeFiles/Clock.dir/clock.cpp.o: CMakeFiles/Clock.dir/flags.make
CMakeFiles/Clock.dir/clock.cpp.o: ../clock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Hello/CLionProjects/Clock/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Clock.dir/clock.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Clock.dir/clock.cpp.o -c /cygdrive/c/Users/Hello/CLionProjects/Clock/clock.cpp

CMakeFiles/Clock.dir/clock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Clock.dir/clock.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/Hello/CLionProjects/Clock/clock.cpp > CMakeFiles/Clock.dir/clock.cpp.i

CMakeFiles/Clock.dir/clock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Clock.dir/clock.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/Hello/CLionProjects/Clock/clock.cpp -o CMakeFiles/Clock.dir/clock.cpp.s

# Object files for target Clock
Clock_OBJECTS = \
"CMakeFiles/Clock.dir/main.cpp.o" \
"CMakeFiles/Clock.dir/clock.cpp.o"

# External object files for target Clock
Clock_EXTERNAL_OBJECTS =

Clock.exe: CMakeFiles/Clock.dir/main.cpp.o
Clock.exe: CMakeFiles/Clock.dir/clock.cpp.o
Clock.exe: CMakeFiles/Clock.dir/build.make
Clock.exe: CMakeFiles/Clock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Hello/CLionProjects/Clock/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Clock.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Clock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Clock.dir/build: Clock.exe

.PHONY : CMakeFiles/Clock.dir/build

CMakeFiles/Clock.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Clock.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Clock.dir/clean

CMakeFiles/Clock.dir/depend:
	cd /cygdrive/c/Users/Hello/CLionProjects/Clock/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Hello/CLionProjects/Clock /cygdrive/c/Users/Hello/CLionProjects/Clock /cygdrive/c/Users/Hello/CLionProjects/Clock/cmake-build-debug /cygdrive/c/Users/Hello/CLionProjects/Clock/cmake-build-debug /cygdrive/c/Users/Hello/CLionProjects/Clock/cmake-build-debug/CMakeFiles/Clock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Clock.dir/depend

