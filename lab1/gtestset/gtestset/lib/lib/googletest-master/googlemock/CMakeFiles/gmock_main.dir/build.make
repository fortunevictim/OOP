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
CMAKE_SOURCE_DIR = D:\Labs\OOOP\lab1_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Labs\OOOP\lab1_project\cmake-build-debug

# Include any dependencies generated for this target.
include ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/depend.make

# Include the progress variables for this target.
include ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/progress.make

# Include the compile flags for this target's objects.
include ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/flags.make

../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.obj: ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/flags.make
../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.obj: ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/includes_CXX.rsp
../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.obj: ../gtestset/lib/googletest-master/googlemock/src/gmock_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Labs\OOOP\lab1_project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.obj"
	cd /d D:\Labs\OOOP\lab1_project\gtestset\lib\lib\googletest-master\googlemock && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gmock_main.dir\src\gmock_main.cc.obj -c D:\Labs\OOOP\lab1_project\gtestset\lib\googletest-master\googlemock\src\gmock_main.cc

../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock_main.dir/src/gmock_main.cc.i"
	cd /d D:\Labs\OOOP\lab1_project\gtestset\lib\lib\googletest-master\googlemock && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Labs\OOOP\lab1_project\gtestset\lib\googletest-master\googlemock\src\gmock_main.cc > CMakeFiles\gmock_main.dir\src\gmock_main.cc.i

../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock_main.dir/src/gmock_main.cc.s"
	cd /d D:\Labs\OOOP\lab1_project\gtestset\lib\lib\googletest-master\googlemock && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Labs\OOOP\lab1_project\gtestset\lib\googletest-master\googlemock\src\gmock_main.cc -o CMakeFiles\gmock_main.dir\src\gmock_main.cc.s

# Object files for target gmock_main
gmock_main_OBJECTS = \
"CMakeFiles/gmock_main.dir/src/gmock_main.cc.obj"

# External object files for target gmock_main
gmock_main_EXTERNAL_OBJECTS =

lib/libgmock_maind.a: ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.obj
lib/libgmock_maind.a: ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/build.make
lib/libgmock_maind.a: ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Labs\OOOP\lab1_project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ..\..\..\..\..\cmake-build-debug\lib\libgmock_maind.a"
	cd /d D:\Labs\OOOP\lab1_project\gtestset\lib\lib\googletest-master\googlemock && $(CMAKE_COMMAND) -P CMakeFiles\gmock_main.dir\cmake_clean_target.cmake
	cd /d D:\Labs\OOOP\lab1_project\gtestset\lib\lib\googletest-master\googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\gmock_main.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/build: lib/libgmock_maind.a

.PHONY : ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/build

../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/clean:
	cd /d D:\Labs\OOOP\lab1_project\gtestset\lib\lib\googletest-master\googlemock && $(CMAKE_COMMAND) -P CMakeFiles\gmock_main.dir\cmake_clean.cmake
.PHONY : ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/clean

../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Labs\OOOP\lab1_project D:\Labs\OOOP\lab1_project\gtestset\lib\googletest-master\googlemock D:\Labs\OOOP\lab1_project\cmake-build-debug D:\Labs\OOOP\lab1_project\gtestset\lib\lib\googletest-master\googlemock D:\Labs\OOOP\lab1_project\gtestset\lib\lib\googletest-master\googlemock\CMakeFiles\gmock_main.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : ../gtestset/lib/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/depend

