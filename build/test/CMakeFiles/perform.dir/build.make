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
CMAKE_SOURCE_DIR = /root/huangqz/codes/filter/bloom

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/huangqz/codes/filter/bloom/build

# Include any dependencies generated for this target.
include test/CMakeFiles/perform.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/perform.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/perform.dir/flags.make

test/CMakeFiles/perform.dir/performTest.cc.o: test/CMakeFiles/perform.dir/flags.make
test/CMakeFiles/perform.dir/performTest.cc.o: ../test/performTest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/huangqz/codes/filter/bloom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/perform.dir/performTest.cc.o"
	cd /root/huangqz/codes/filter/bloom/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/perform.dir/performTest.cc.o -c /root/huangqz/codes/filter/bloom/test/performTest.cc

test/CMakeFiles/perform.dir/performTest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/perform.dir/performTest.cc.i"
	cd /root/huangqz/codes/filter/bloom/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/huangqz/codes/filter/bloom/test/performTest.cc > CMakeFiles/perform.dir/performTest.cc.i

test/CMakeFiles/perform.dir/performTest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/perform.dir/performTest.cc.s"
	cd /root/huangqz/codes/filter/bloom/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/huangqz/codes/filter/bloom/test/performTest.cc -o CMakeFiles/perform.dir/performTest.cc.s

# Object files for target perform
perform_OBJECTS = \
"CMakeFiles/perform.dir/performTest.cc.o"

# External object files for target perform
perform_EXTERNAL_OBJECTS =

test/perform: test/CMakeFiles/perform.dir/performTest.cc.o
test/perform: test/CMakeFiles/perform.dir/build.make
test/perform: src/libbloom.so
test/perform: test/CMakeFiles/perform.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/huangqz/codes/filter/bloom/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable perform"
	cd /root/huangqz/codes/filter/bloom/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/perform.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/perform.dir/build: test/perform

.PHONY : test/CMakeFiles/perform.dir/build

test/CMakeFiles/perform.dir/clean:
	cd /root/huangqz/codes/filter/bloom/build/test && $(CMAKE_COMMAND) -P CMakeFiles/perform.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/perform.dir/clean

test/CMakeFiles/perform.dir/depend:
	cd /root/huangqz/codes/filter/bloom/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/huangqz/codes/filter/bloom /root/huangqz/codes/filter/bloom/test /root/huangqz/codes/filter/bloom/build /root/huangqz/codes/filter/bloom/build/test /root/huangqz/codes/filter/bloom/build/test/CMakeFiles/perform.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/perform.dir/depend

