# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/ubuntu/mount/work/gr-measurer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/mount/work/gr-measurer/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/test-measurer.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/test-measurer.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/test-measurer.dir/flags.make

lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o: lib/CMakeFiles/test-measurer.dir/flags.make
lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o: ../lib/test_measurer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/mount/work/gr-measurer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o"
	cd /home/ubuntu/mount/work/gr-measurer/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-measurer.dir/test_measurer.cc.o -c /home/ubuntu/mount/work/gr-measurer/lib/test_measurer.cc

lib/CMakeFiles/test-measurer.dir/test_measurer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-measurer.dir/test_measurer.cc.i"
	cd /home/ubuntu/mount/work/gr-measurer/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/mount/work/gr-measurer/lib/test_measurer.cc > CMakeFiles/test-measurer.dir/test_measurer.cc.i

lib/CMakeFiles/test-measurer.dir/test_measurer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-measurer.dir/test_measurer.cc.s"
	cd /home/ubuntu/mount/work/gr-measurer/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/mount/work/gr-measurer/lib/test_measurer.cc -o CMakeFiles/test-measurer.dir/test_measurer.cc.s

lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o.requires:

.PHONY : lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o.requires

lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o.provides: lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-measurer.dir/build.make lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o.provides

lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o.provides.build: lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o


lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o: lib/CMakeFiles/test-measurer.dir/flags.make
lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o: ../lib/qa_measurer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/mount/work/gr-measurer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o"
	cd /home/ubuntu/mount/work/gr-measurer/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-measurer.dir/qa_measurer.cc.o -c /home/ubuntu/mount/work/gr-measurer/lib/qa_measurer.cc

lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-measurer.dir/qa_measurer.cc.i"
	cd /home/ubuntu/mount/work/gr-measurer/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/mount/work/gr-measurer/lib/qa_measurer.cc > CMakeFiles/test-measurer.dir/qa_measurer.cc.i

lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-measurer.dir/qa_measurer.cc.s"
	cd /home/ubuntu/mount/work/gr-measurer/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/mount/work/gr-measurer/lib/qa_measurer.cc -o CMakeFiles/test-measurer.dir/qa_measurer.cc.s

lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o.requires:

.PHONY : lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o.requires

lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o.provides: lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-measurer.dir/build.make lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o.provides

lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o.provides.build: lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o


# Object files for target test-measurer
test__measurer_OBJECTS = \
"CMakeFiles/test-measurer.dir/test_measurer.cc.o" \
"CMakeFiles/test-measurer.dir/qa_measurer.cc.o"

# External object files for target test-measurer
test__measurer_EXTERNAL_OBJECTS =

lib/test-measurer: lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o
lib/test-measurer: lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o
lib/test-measurer: lib/CMakeFiles/test-measurer.dir/build.make
lib/test-measurer: /usr/local/lib/libgnuradio-runtime.so
lib/test-measurer: /usr/local/lib/libgnuradio-pmt.so
lib/test-measurer: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/test-measurer: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/test-measurer: /usr/lib/x86_64-linux-gnu/libcppunit.so
lib/test-measurer: lib/libgnuradio-measurer-1.0.0git.so.0.0.0
lib/test-measurer: /usr/local/lib/libgnuradio-runtime.so
lib/test-measurer: /usr/local/lib/libgnuradio-pmt.so
lib/test-measurer: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/test-measurer: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/test-measurer: lib/CMakeFiles/test-measurer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/mount/work/gr-measurer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test-measurer"
	cd /home/ubuntu/mount/work/gr-measurer/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-measurer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/test-measurer.dir/build: lib/test-measurer

.PHONY : lib/CMakeFiles/test-measurer.dir/build

lib/CMakeFiles/test-measurer.dir/requires: lib/CMakeFiles/test-measurer.dir/test_measurer.cc.o.requires
lib/CMakeFiles/test-measurer.dir/requires: lib/CMakeFiles/test-measurer.dir/qa_measurer.cc.o.requires

.PHONY : lib/CMakeFiles/test-measurer.dir/requires

lib/CMakeFiles/test-measurer.dir/clean:
	cd /home/ubuntu/mount/work/gr-measurer/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/test-measurer.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/test-measurer.dir/clean

lib/CMakeFiles/test-measurer.dir/depend:
	cd /home/ubuntu/mount/work/gr-measurer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/mount/work/gr-measurer /home/ubuntu/mount/work/gr-measurer/lib /home/ubuntu/mount/work/gr-measurer/build /home/ubuntu/mount/work/gr-measurer/build/lib /home/ubuntu/mount/work/gr-measurer/build/lib/CMakeFiles/test-measurer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/test-measurer.dir/depend

