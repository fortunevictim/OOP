# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Labs\OOOP\lab1_project\gtestset

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Labs\OOOP\lab1_project\gtestset\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/gtestset.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gtestset.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gtestset.dir/flags.make

CMakeFiles/gtestset.dir/main.cpp.obj: CMakeFiles/gtestset.dir/flags.make
CMakeFiles/gtestset.dir/main.cpp.obj: CMakeFiles/gtestset.dir/includes_CXX.rsp
CMakeFiles/gtestset.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Labs\OOOP\lab1_project\gtestset\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gtestset.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gtestset.dir\main.cpp.obj -c D:\Labs\OOOP\lab1_project\gtestset\main.cpp

CMakeFiles/gtestset.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtestset.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Labs\OOOP\lab1_project\gtestset\main.cpp > CMakeFiles\gtestset.dir\main.cpp.i

CMakeFiles/gtestset.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtestset.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Labs\OOOP\lab1_project\gtestset\main.cpp -o CMakeFiles\gtestset.dir\main.cpp.s

CMakeFiles/gtestset.dir/tests/TestForSet.cpp.obj: CMakeFiles/gtestset.dir/flags.make
CMakeFiles/gtestset.dir/tests/TestForSet.cpp.obj: CMakeFiles/gtestset.dir/includes_CXX.rsp
CMakeFiles/gtestset.dir/tests/TestForSet.cpp.obj: ../tests/TestForSet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Labs\OOOP\lab1_project\gtestset\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gtestset.dir/tests/TestForSet.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gtestset.dir\tests\TestForSet.cpp.obj -c D:\Labs\OOOP\lab1_project\gtestset\tests\TestForSet.cpp

CMakeFiles/gtestset.dir/tests/TestForSet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtestset.dir/tests/TestForSet.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Labs\OOOP\lab1_project\gtestset\tests\TestForSet.cpp > CMakeFiles\gtestset.dir\tests\TestForSet.cpp.i

CMakeFiles/gtestset.dir/tests/TestForSet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtestset.dir/tests/TestForSet.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Labs\OOOP\lab1_project\gtestset\tests\TestForSet.cpp -o CMakeFiles\gtestset.dir\tests\TestForSet.cpp.s

# Object files for target gtestset
gtestset_OBJECTS = \
"CMakeFiles/gtestset.dir/main.cpp.obj" \
"CMakeFiles/gtestset.dir/tests/TestForSet.cpp.obj"

# External object files for target gtestset
gtestset_EXTERNAL_OBJECTS =

gtestset.exe: CMakeFiles/gtestset.dir/main.cpp.obj
gtestset.exe: CMakeFiles/gtestset.dir/tests/TestForSet.cpp.obj
gtestset.exe: CMakeFiles/gtestset.dir/build.make
gtestset.exe: lib/libgtestd.a
gtestset.exe: lib/libgtest_maind.a
gtestset.exe: lib/libgtestd.a
gtestset.exe: CMakeFiles/gtestset.dir/linklibs.rsp
gtestset.exe: CMakeFiles/gtestset.dir/objects1.rsp
gtestset.exe: CMakeFiles/gtestset.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Labs\OOOP\lab1_project\gtestset\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable gtestset.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\gtestset.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gtestset.dir/build: gtestset.exe

.PHONY : CMakeFiles/gtestset.dir/build

CMakeFiles/gtestset.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\gtestset.dir\cmake_clean.cmake
.PHONY : CMakeFiles/gtestset.dir/clean

CMakeFiles/gtestset.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Labs\OOOP\lab1_project\gtestset D:\Labs\OOOP\lab1_project\gtestset D:\Labs\OOOP\lab1_project\gtestset\cmake-build-debug D:\Labs\OOOP\lab1_project\gtestset\cmake-build-debug D:\Labs\OOOP\lab1_project\gtestset\cmake-build-debug\CMakeFiles\gtestset.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gtestset.dir/depend

