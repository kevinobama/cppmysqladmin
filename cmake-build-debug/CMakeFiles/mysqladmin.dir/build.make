# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /snap/clion/169/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/169/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kevin/Downloads/www/cpp/mysqladmin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kevin/Downloads/www/cpp/mysqladmin/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/mysqladmin.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/mysqladmin.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mysqladmin.dir/flags.make

CMakeFiles/mysqladmin.dir/main.cpp.o: CMakeFiles/mysqladmin.dir/flags.make
CMakeFiles/mysqladmin.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kevin/Downloads/www/cpp/mysqladmin/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mysqladmin.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mysqladmin.dir/main.cpp.o -c /home/kevin/Downloads/www/cpp/mysqladmin/main.cpp

CMakeFiles/mysqladmin.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mysqladmin.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kevin/Downloads/www/cpp/mysqladmin/main.cpp > CMakeFiles/mysqladmin.dir/main.cpp.i

CMakeFiles/mysqladmin.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mysqladmin.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kevin/Downloads/www/cpp/mysqladmin/main.cpp -o CMakeFiles/mysqladmin.dir/main.cpp.s

# Object files for target mysqladmin
mysqladmin_OBJECTS = \
"CMakeFiles/mysqladmin.dir/main.cpp.o"

# External object files for target mysqladmin
mysqladmin_EXTERNAL_OBJECTS =

mysqladmin: CMakeFiles/mysqladmin.dir/main.cpp.o
mysqladmin: CMakeFiles/mysqladmin.dir/build.make
mysqladmin: CMakeFiles/mysqladmin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kevin/Downloads/www/cpp/mysqladmin/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mysqladmin"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mysqladmin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mysqladmin.dir/build: mysqladmin
.PHONY : CMakeFiles/mysqladmin.dir/build

CMakeFiles/mysqladmin.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mysqladmin.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mysqladmin.dir/clean

CMakeFiles/mysqladmin.dir/depend:
	cd /home/kevin/Downloads/www/cpp/mysqladmin/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/Downloads/www/cpp/mysqladmin /home/kevin/Downloads/www/cpp/mysqladmin /home/kevin/Downloads/www/cpp/mysqladmin/cmake-build-debug /home/kevin/Downloads/www/cpp/mysqladmin/cmake-build-debug /home/kevin/Downloads/www/cpp/mysqladmin/cmake-build-debug/CMakeFiles/mysqladmin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mysqladmin.dir/depend

