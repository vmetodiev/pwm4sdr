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

# Utility rule file for measurer_swig_swig_doc.

# Include the progress variables for this target.
include swig/CMakeFiles/measurer_swig_swig_doc.dir/progress.make

swig/CMakeFiles/measurer_swig_swig_doc: swig/measurer_swig_doc.i


swig/measurer_swig_doc.i: swig/measurer_swig_doc_swig_docs/xml/index.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/mount/work/gr-measurer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating python docstrings for measurer_swig_doc"
	cd /home/ubuntu/mount/work/gr-measurer/docs/doxygen && /usr/bin/python2 -B /home/ubuntu/mount/work/gr-measurer/docs/doxygen/swig_doc.py /home/ubuntu/mount/work/gr-measurer/build/swig/measurer_swig_doc_swig_docs/xml /home/ubuntu/mount/work/gr-measurer/build/swig/measurer_swig_doc.i

swig/measurer_swig_doc_swig_docs/xml/index.xml: swig/_measurer_swig_doc_tag
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/mount/work/gr-measurer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating doxygen xml for measurer_swig_doc docs"
	cd /home/ubuntu/mount/work/gr-measurer/build/swig && ./_measurer_swig_doc_tag
	cd /home/ubuntu/mount/work/gr-measurer/build/swig && /usr/bin/doxygen /home/ubuntu/mount/work/gr-measurer/build/swig/measurer_swig_doc_swig_docs/Doxyfile

measurer_swig_swig_doc: swig/CMakeFiles/measurer_swig_swig_doc
measurer_swig_swig_doc: swig/measurer_swig_doc.i
measurer_swig_swig_doc: swig/measurer_swig_doc_swig_docs/xml/index.xml
measurer_swig_swig_doc: swig/CMakeFiles/measurer_swig_swig_doc.dir/build.make

.PHONY : measurer_swig_swig_doc

# Rule to build all files generated by this target.
swig/CMakeFiles/measurer_swig_swig_doc.dir/build: measurer_swig_swig_doc

.PHONY : swig/CMakeFiles/measurer_swig_swig_doc.dir/build

swig/CMakeFiles/measurer_swig_swig_doc.dir/clean:
	cd /home/ubuntu/mount/work/gr-measurer/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/measurer_swig_swig_doc.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/measurer_swig_swig_doc.dir/clean

swig/CMakeFiles/measurer_swig_swig_doc.dir/depend:
	cd /home/ubuntu/mount/work/gr-measurer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/mount/work/gr-measurer /home/ubuntu/mount/work/gr-measurer/swig /home/ubuntu/mount/work/gr-measurer/build /home/ubuntu/mount/work/gr-measurer/build/swig /home/ubuntu/mount/work/gr-measurer/build/swig/CMakeFiles/measurer_swig_swig_doc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/measurer_swig_swig_doc.dir/depend
