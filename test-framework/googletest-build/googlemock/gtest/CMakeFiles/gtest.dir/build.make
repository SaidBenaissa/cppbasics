# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Users/said/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/223.8617.54/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/said/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/223.8617.54/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/said/CLionProjects/C++Basics1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/said/CLionProjects/C++Basics1/cmake-build-debug

# Include any dependencies generated for this target.
include /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/depend.make
# Include the progress variables for this target.
include /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/flags.make

/Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/flags.make
/Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: ../test-framework/googletest-src/googletest/src/gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/said/CLionProjects/C++Basics1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o"
	cd /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest.dir/src/gtest-all.cc.o -c /Users/said/CLionProjects/C++Basics1/test-framework/googletest-src/googletest/src/gtest-all.cc

/Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/said/CLionProjects/C++Basics1/test-framework/googletest-src/googletest/src/gtest-all.cc > CMakeFiles/gtest.dir/src/gtest-all.cc.i

/Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/said/CLionProjects/C++Basics1/test-framework/googletest-src/googletest/src/gtest-all.cc -o CMakeFiles/gtest.dir/src/gtest-all.cc.s

# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/src/gtest-all.cc.o"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

/Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/libgtestd.a: /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o
/Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/libgtestd.a: /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/build.make
/Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/libgtestd.a: /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/said/CLionProjects/C++Basics1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgtestd.a"
	cd /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean_target.cmake
	cd /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
/Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/build: /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/libgtestd.a
.PHONY : /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/build

/Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/clean:
	cd /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/clean

/Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/depend:
	cd /Users/said/CLionProjects/C++Basics1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/said/CLionProjects/C++Basics1 /Users/said/CLionProjects/C++Basics1/test-framework/googletest-src/googletest /Users/said/CLionProjects/C++Basics1/cmake-build-debug /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /Users/said/CLionProjects/C++Basics1/test-framework/googletest-build/googlemock/gtest/CMakeFiles/gtest.dir/depend

