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
CMAKE_SOURCE_DIR = /root/Myassignment/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Myassignment/build

# Utility rule file for client_action_generate_messages_py.

# Include the progress variables for this target.
include client_action/CMakeFiles/client_action_generate_messages_py.dir/progress.make

client_action/CMakeFiles/client_action_generate_messages_py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/_custommsg.py
client_action/CMakeFiles/client_action_generate_messages_py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/srv/_my_service.py
client_action/CMakeFiles/client_action_generate_messages_py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/__init__.py
client_action/CMakeFiles/client_action_generate_messages_py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/srv/__init__.py


/root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/_custommsg.py: /opt/ros/noetic/lib/genpy/genmsg_py.py
/root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/_custommsg.py: /root/Myassignment/src/client_action/msg/custommsg.msg
/root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/_custommsg.py: /opt/ros/noetic/share/geometry_msgs/msg/Point.msg
/root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/_custommsg.py: /opt/ros/noetic/share/geometry_msgs/msg/Vector3.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Myassignment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Python from MSG client_action/custommsg"
	cd /root/Myassignment/build/client_action && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py /root/Myassignment/src/client_action/msg/custommsg.msg -Iclient_action:/root/Myassignment/src/client_action/msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p client_action -o /root/Myassignment/devel/lib/python3/dist-packages/client_action/msg

/root/Myassignment/devel/lib/python3/dist-packages/client_action/srv/_my_service.py: /opt/ros/noetic/lib/genpy/gensrv_py.py
/root/Myassignment/devel/lib/python3/dist-packages/client_action/srv/_my_service.py: /root/Myassignment/src/client_action/srv/my_service.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Myassignment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Python code from SRV client_action/my_service"
	cd /root/Myassignment/build/client_action && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/genpy/cmake/../../../lib/genpy/gensrv_py.py /root/Myassignment/src/client_action/srv/my_service.srv -Iclient_action:/root/Myassignment/src/client_action/msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p client_action -o /root/Myassignment/devel/lib/python3/dist-packages/client_action/srv

/root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/__init__.py: /opt/ros/noetic/lib/genpy/genmsg_py.py
/root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/__init__.py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/_custommsg.py
/root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/__init__.py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/srv/_my_service.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Myassignment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating Python msg __init__.py for client_action"
	cd /root/Myassignment/build/client_action && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /root/Myassignment/devel/lib/python3/dist-packages/client_action/msg --initpy

/root/Myassignment/devel/lib/python3/dist-packages/client_action/srv/__init__.py: /opt/ros/noetic/lib/genpy/genmsg_py.py
/root/Myassignment/devel/lib/python3/dist-packages/client_action/srv/__init__.py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/_custommsg.py
/root/Myassignment/devel/lib/python3/dist-packages/client_action/srv/__init__.py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/srv/_my_service.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/Myassignment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating Python srv __init__.py for client_action"
	cd /root/Myassignment/build/client_action && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /root/Myassignment/devel/lib/python3/dist-packages/client_action/srv --initpy

client_action_generate_messages_py: client_action/CMakeFiles/client_action_generate_messages_py
client_action_generate_messages_py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/_custommsg.py
client_action_generate_messages_py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/srv/_my_service.py
client_action_generate_messages_py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/msg/__init__.py
client_action_generate_messages_py: /root/Myassignment/devel/lib/python3/dist-packages/client_action/srv/__init__.py
client_action_generate_messages_py: client_action/CMakeFiles/client_action_generate_messages_py.dir/build.make

.PHONY : client_action_generate_messages_py

# Rule to build all files generated by this target.
client_action/CMakeFiles/client_action_generate_messages_py.dir/build: client_action_generate_messages_py

.PHONY : client_action/CMakeFiles/client_action_generate_messages_py.dir/build

client_action/CMakeFiles/client_action_generate_messages_py.dir/clean:
	cd /root/Myassignment/build/client_action && $(CMAKE_COMMAND) -P CMakeFiles/client_action_generate_messages_py.dir/cmake_clean.cmake
.PHONY : client_action/CMakeFiles/client_action_generate_messages_py.dir/clean

client_action/CMakeFiles/client_action_generate_messages_py.dir/depend:
	cd /root/Myassignment/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Myassignment/src /root/Myassignment/src/client_action /root/Myassignment/build /root/Myassignment/build/client_action /root/Myassignment/build/client_action/CMakeFiles/client_action_generate_messages_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : client_action/CMakeFiles/client_action_generate_messages_py.dir/depend

