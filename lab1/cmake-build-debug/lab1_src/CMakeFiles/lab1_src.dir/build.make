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
include lab1_src/CMakeFiles/lab1_src.dir/depend.make

# Include the progress variables for this target.
include lab1_src/CMakeFiles/lab1_src.dir/progress.make

# Include the compile flags for this target's objects.
include lab1_src/CMakeFiles/lab1_src.dir/flags.make

lab1_src/CMakeFiles/lab1_src.dir/main.cpp.obj: lab1_src/CMakeFiles/lab1_src.dir/flags.make
lab1_src/CMakeFiles/lab1_src.dir/main.cpp.obj: ../lab1_src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Labs\OOOP\lab1_project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lab1_src/CMakeFiles/lab1_src.dir/main.cpp.obj"
	cd /d D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\lab1_src.dir\main.cpp.obj -c D:\Labs\OOOP\lab1_project\lab1_src\main.cpp

lab1_src/CMakeFiles/lab1_src.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab1_src.dir/main.cpp.i"
	cd /d D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Labs\OOOP\lab1_project\lab1_src\main.cpp > CMakeFiles\lab1_src.dir\main.cpp.i

lab1_src/CMakeFiles/lab1_src.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab1_src.dir/main.cpp.s"
	cd /d D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Labs\OOOP\lab1_project\lab1_src\main.cpp -o CMakeFiles\lab1_src.dir\main.cpp.s

lab1_src/CMakeFiles/lab1_src.dir/Trit.cpp.obj: lab1_src/CMakeFiles/lab1_src.dir/flags.make
lab1_src/CMakeFiles/lab1_src.dir/Trit.cpp.obj: ../lab1_src/Trit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Labs\OOOP\lab1_project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lab1_src/CMakeFiles/lab1_src.dir/Trit.cpp.obj"
	cd /d D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\lab1_src.dir\Trit.cpp.obj -c D:\Labs\OOOP\lab1_project\lab1_src\Trit.cpp

lab1_src/CMakeFiles/lab1_src.dir/Trit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab1_src.dir/Trit.cpp.i"
	cd /d D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Labs\OOOP\lab1_project\lab1_src\Trit.cpp > CMakeFiles\lab1_src.dir\Trit.cpp.i

lab1_src/CMakeFiles/lab1_src.dir/Trit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab1_src.dir/Trit.cpp.s"
	cd /d D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Labs\OOOP\lab1_project\lab1_src\Trit.cpp -o CMakeFiles\lab1_src.dir\Trit.cpp.s

lab1_src/CMakeFiles/lab1_src.dir/TritSet.cpp.obj: lab1_src/CMakeFiles/lab1_src.dir/flags.make
lab1_src/CMakeFiles/lab1_src.dir/TritSet.cpp.obj: ../lab1_src/TritSet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Labs\OOOP\lab1_project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lab1_src/CMakeFiles/lab1_src.dir/TritSet.cpp.obj"
	cd /d D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\lab1_src.dir\TritSet.cpp.obj -c D:\Labs\OOOP\lab1_project\lab1_src\TritSet.cpp

lab1_src/CMakeFiles/lab1_src.dir/TritSet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab1_src.dir/TritSet.cpp.i"
	cd /d D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Labs\OOOP\lab1_project\lab1_src\TritSet.cpp > CMakeFiles\lab1_src.dir\TritSet.cpp.i

lab1_src/CMakeFiles/lab1_src.dir/TritSet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab1_src.dir/TritSet.cpp.s"
	cd /d D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Labs\OOOP\lab1_project\lab1_src\TritSet.cpp -o CMakeFiles\lab1_src.dir\TritSet.cpp.s

# Object files for target lab1_src
lab1_src_OBJECTS = \
"CMakeFiles/lab1_src.dir/main.cpp.obj" \
"CMakeFiles/lab1_src.dir/Trit.cpp.obj" \
"CMakeFiles/lab1_src.dir/TritSet.cpp.obj"

# External object files for target lab1_src
lab1_src_EXTERNAL_OBJECTS =

lab1_src/lab1_src.exe: lab1_src/CMakeFiles/lab1_src.dir/main.cpp.obj
lab1_src/lab1_src.exe: lab1_src/CMakeFiles/lab1_src.dir/Trit.cpp.obj
lab1_src/lab1_src.exe: lab1_src/CMakeFiles/lab1_src.dir/TritSet.cpp.obj
lab1_src/lab1_src.exe: lab1_src/CMakeFiles/lab1_src.dir/build.make
lab1_src/lab1_src.exe: lab1_src/CMakeFiles/lab1_src.dir/linklibs.rsp
lab1_src/lab1_src.exe: lab1_src/CMakeFiles/lab1_src.dir/objects1.rsp
lab1_src/lab1_src.exe: lab1_src/CMakeFiles/lab1_src.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Labs\OOOP\lab1_project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable lab1_src.exe"
	cd /d D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\lab1_src.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lab1_src/CMakeFiles/lab1_src.dir/build: lab1_src/lab1_src.exe

.PHONY : lab1_src/CMakeFiles/lab1_src.dir/build

lab1_src/CMakeFiles/lab1_src.dir/clean:
	cd /d D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src && $(CMAKE_COMMAND) -P CMakeFiles\lab1_src.dir\cmake_clean.cmake
.PHONY : lab1_src/CMakeFiles/lab1_src.dir/clean

lab1_src/CMakeFiles/lab1_src.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Labs\OOOP\lab1_project D:\Labs\OOOP\lab1_project\lab1_src D:\Labs\OOOP\lab1_project\cmake-build-debug D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src D:\Labs\OOOP\lab1_project\cmake-build-debug\lab1_src\CMakeFiles\lab1_src.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : lab1_src/CMakeFiles/lab1_src.dir/depend

