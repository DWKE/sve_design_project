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
CMAKE_SOURCE_DIR = /home/soo/sve_design_project/src/localization/ublox/ublox_gps

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/soo/sve_design_project/build/ublox_gps

# Include any dependencies generated for this target.
include CMakeFiles/ublox_gps_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ublox_gps_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ublox_gps_node.dir/flags.make

CMakeFiles/ublox_gps_node.dir/src/node.cpp.o: CMakeFiles/ublox_gps_node.dir/flags.make
CMakeFiles/ublox_gps_node.dir/src/node.cpp.o: /home/soo/sve_design_project/src/localization/ublox/ublox_gps/src/node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soo/sve_design_project/build/ublox_gps/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ublox_gps_node.dir/src/node.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ublox_gps_node.dir/src/node.cpp.o -c /home/soo/sve_design_project/src/localization/ublox/ublox_gps/src/node.cpp

CMakeFiles/ublox_gps_node.dir/src/node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ublox_gps_node.dir/src/node.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/soo/sve_design_project/src/localization/ublox/ublox_gps/src/node.cpp > CMakeFiles/ublox_gps_node.dir/src/node.cpp.i

CMakeFiles/ublox_gps_node.dir/src/node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ublox_gps_node.dir/src/node.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/soo/sve_design_project/src/localization/ublox/ublox_gps/src/node.cpp -o CMakeFiles/ublox_gps_node.dir/src/node.cpp.s

CMakeFiles/ublox_gps_node.dir/src/node.cpp.o.requires:

.PHONY : CMakeFiles/ublox_gps_node.dir/src/node.cpp.o.requires

CMakeFiles/ublox_gps_node.dir/src/node.cpp.o.provides: CMakeFiles/ublox_gps_node.dir/src/node.cpp.o.requires
	$(MAKE) -f CMakeFiles/ublox_gps_node.dir/build.make CMakeFiles/ublox_gps_node.dir/src/node.cpp.o.provides.build
.PHONY : CMakeFiles/ublox_gps_node.dir/src/node.cpp.o.provides

CMakeFiles/ublox_gps_node.dir/src/node.cpp.o.provides.build: CMakeFiles/ublox_gps_node.dir/src/node.cpp.o


CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o: CMakeFiles/ublox_gps_node.dir/flags.make
CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o: /home/soo/sve_design_project/src/localization/ublox/ublox_gps/src/mkgmtime.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soo/sve_design_project/build/ublox_gps/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o   -c /home/soo/sve_design_project/src/localization/ublox/ublox_gps/src/mkgmtime.c

CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soo/sve_design_project/src/localization/ublox/ublox_gps/src/mkgmtime.c > CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.i

CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soo/sve_design_project/src/localization/ublox/ublox_gps/src/mkgmtime.c -o CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.s

CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o.requires:

.PHONY : CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o.requires

CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o.provides: CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o.requires
	$(MAKE) -f CMakeFiles/ublox_gps_node.dir/build.make CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o.provides.build
.PHONY : CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o.provides

CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o.provides.build: CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o


# Object files for target ublox_gps_node
ublox_gps_node_OBJECTS = \
"CMakeFiles/ublox_gps_node.dir/src/node.cpp.o" \
"CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o"

# External object files for target ublox_gps_node
ublox_gps_node_EXTERNAL_OBJECTS =

/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: CMakeFiles/ublox_gps_node.dir/src/node.cpp.o
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: CMakeFiles/ublox_gps_node.dir/build.make
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /home/soo/sve_design_project/devel/lib/libublox_msgs.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/libroscpp.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/librosconsole.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/librostime.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/libcpp_common.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /home/soo/sve_design_project/devel/lib/libublox_gps.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /home/soo/sve_design_project/devel/lib/libublox_msgs.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/libroscpp.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/librosconsole.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/librostime.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /opt/ros/melodic/lib/libcpp_common.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps: CMakeFiles/ublox_gps_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/soo/sve_design_project/build/ublox_gps/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ublox_gps_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ublox_gps_node.dir/build: /home/soo/sve_design_project/devel/lib/ublox_gps/ublox_gps

.PHONY : CMakeFiles/ublox_gps_node.dir/build

CMakeFiles/ublox_gps_node.dir/requires: CMakeFiles/ublox_gps_node.dir/src/node.cpp.o.requires
CMakeFiles/ublox_gps_node.dir/requires: CMakeFiles/ublox_gps_node.dir/src/mkgmtime.c.o.requires

.PHONY : CMakeFiles/ublox_gps_node.dir/requires

CMakeFiles/ublox_gps_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ublox_gps_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ublox_gps_node.dir/clean

CMakeFiles/ublox_gps_node.dir/depend:
	cd /home/soo/sve_design_project/build/ublox_gps && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/soo/sve_design_project/src/localization/ublox/ublox_gps /home/soo/sve_design_project/src/localization/ublox/ublox_gps /home/soo/sve_design_project/build/ublox_gps /home/soo/sve_design_project/build/ublox_gps /home/soo/sve_design_project/build/ublox_gps/CMakeFiles/ublox_gps_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ublox_gps_node.dir/depend

