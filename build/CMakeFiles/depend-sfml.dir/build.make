# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/benji/Documents/Temporality2D

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/benji/Documents/Temporality2D/build

# Utility rule file for depend-sfml.

# Include the progress variables for this target.
include CMakeFiles/depend-sfml.dir/progress.make

CMakeFiles/depend-sfml: CMakeFiles/depend-sfml-complete


CMakeFiles/depend-sfml-complete: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-install
CMakeFiles/depend-sfml-complete: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-mkdir
CMakeFiles/depend-sfml-complete: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-download
CMakeFiles/depend-sfml-complete: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-update
CMakeFiles/depend-sfml-complete: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-patch
CMakeFiles/depend-sfml-complete: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-configure
CMakeFiles/depend-sfml-complete: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-build
CMakeFiles/depend-sfml-complete: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-install
CMakeFiles/depend-sfml-complete: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/benji/Documents/Temporality2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'depend-sfml'"
	/usr/bin/cmake -E make_directory /home/benji/Documents/Temporality2D/build/CMakeFiles
	/usr/bin/cmake -E touch /home/benji/Documents/Temporality2D/build/CMakeFiles/depend-sfml-complete
	/usr/bin/cmake -E touch /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-done

depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-install: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/benji/Documents/Temporality2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'depend-sfml'"
	cd /home/benji/Documents/Temporality2D/build/depend/build/sfml && /usr/bin/cmake -E echo_append
	cd /home/benji/Documents/Temporality2D/build/depend/build/sfml && /usr/bin/cmake -E touch /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-install

depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/benji/Documents/Temporality2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'depend-sfml'"
	/usr/bin/cmake -E make_directory /home/benji/Documents/Temporality2D/build/depend/sfml
	/usr/bin/cmake -E make_directory /home/benji/Documents/Temporality2D/build/depend/build/sfml
	/usr/bin/cmake -E make_directory /home/benji/Documents/Temporality2D/build/depend-sfml-prefix
	/usr/bin/cmake -E make_directory /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/tmp
	/usr/bin/cmake -E make_directory /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/src/depend-sfml-stamp
	/usr/bin/cmake -E make_directory /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/src
	/usr/bin/cmake -E touch /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-mkdir

depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-download: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-gitinfo.txt
depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-download: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/benji/Documents/Temporality2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'depend-sfml'"
	cd /home/benji/Documents/Temporality2D/build/depend && /usr/bin/cmake -P /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/tmp/depend-sfml-gitclone.cmake
	cd /home/benji/Documents/Temporality2D/build/depend && /usr/bin/cmake -E touch /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-download

depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-update: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/benji/Documents/Temporality2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'depend-sfml'"
	cd /home/benji/Documents/Temporality2D/build/depend/sfml && /usr/bin/cmake -E echo_append
	cd /home/benji/Documents/Temporality2D/build/depend/sfml && /usr/bin/cmake -E touch /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-update

depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-patch: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/benji/Documents/Temporality2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'depend-sfml'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-patch

depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-configure: depend-sfml-prefix/tmp/depend-sfml-cfgcmd.txt
depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-configure: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-update
depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-configure: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/benji/Documents/Temporality2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'depend-sfml'"
	cd /home/benji/Documents/Temporality2D/build/depend/build/sfml && /usr/bin/cmake "-GUnix Makefiles" /home/benji/Documents/Temporality2D/build/depend/sfml
	cd /home/benji/Documents/Temporality2D/build/depend/build/sfml && /usr/bin/cmake -E touch /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-configure

depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-build: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/benji/Documents/Temporality2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'depend-sfml'"
	cd /home/benji/Documents/Temporality2D/build/depend/build/sfml && $(MAKE)
	cd /home/benji/Documents/Temporality2D/build/depend/build/sfml && /usr/bin/cmake -E touch /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-build

depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-test: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/benji/Documents/Temporality2D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No test step for 'depend-sfml'"
	cd /home/benji/Documents/Temporality2D/build/depend/build/sfml && /usr/bin/cmake -E echo_append
	cd /home/benji/Documents/Temporality2D/build/depend/build/sfml && /usr/bin/cmake -E touch /home/benji/Documents/Temporality2D/build/depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-test

depend-sfml: CMakeFiles/depend-sfml
depend-sfml: CMakeFiles/depend-sfml-complete
depend-sfml: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-install
depend-sfml: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-mkdir
depend-sfml: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-download
depend-sfml: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-update
depend-sfml: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-patch
depend-sfml: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-configure
depend-sfml: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-build
depend-sfml: depend-sfml-prefix/src/depend-sfml-stamp/depend-sfml-test
depend-sfml: CMakeFiles/depend-sfml.dir/build.make

.PHONY : depend-sfml

# Rule to build all files generated by this target.
CMakeFiles/depend-sfml.dir/build: depend-sfml

.PHONY : CMakeFiles/depend-sfml.dir/build

CMakeFiles/depend-sfml.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/depend-sfml.dir/cmake_clean.cmake
.PHONY : CMakeFiles/depend-sfml.dir/clean

CMakeFiles/depend-sfml.dir/depend:
	cd /home/benji/Documents/Temporality2D/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benji/Documents/Temporality2D /home/benji/Documents/Temporality2D /home/benji/Documents/Temporality2D/build /home/benji/Documents/Temporality2D/build /home/benji/Documents/Temporality2D/build/CMakeFiles/depend-sfml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/depend-sfml.dir/depend
