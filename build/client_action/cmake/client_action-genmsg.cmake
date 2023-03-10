# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "client_action: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iclient_action:/root/Myassignment/src/client_action/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(client_action_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/Myassignment/src/client_action/msg/custommsg.msg" NAME_WE)
add_custom_target(_client_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "client_action" "/root/Myassignment/src/client_action/msg/custommsg.msg" "geometry_msgs/Point:geometry_msgs/Vector3"
)

get_filename_component(_filename "/root/Myassignment/src/client_action/srv/my_service.srv" NAME_WE)
add_custom_target(_client_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "client_action" "/root/Myassignment/src/client_action/srv/my_service.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(client_action
  "/root/Myassignment/src/client_action/msg/custommsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/client_action
)

### Generating Services
_generate_srv_cpp(client_action
  "/root/Myassignment/src/client_action/srv/my_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/client_action
)

### Generating Module File
_generate_module_cpp(client_action
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/client_action
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(client_action_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(client_action_generate_messages client_action_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Myassignment/src/client_action/msg/custommsg.msg" NAME_WE)
add_dependencies(client_action_generate_messages_cpp _client_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/Myassignment/src/client_action/srv/my_service.srv" NAME_WE)
add_dependencies(client_action_generate_messages_cpp _client_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(client_action_gencpp)
add_dependencies(client_action_gencpp client_action_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS client_action_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(client_action
  "/root/Myassignment/src/client_action/msg/custommsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/client_action
)

### Generating Services
_generate_srv_eus(client_action
  "/root/Myassignment/src/client_action/srv/my_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/client_action
)

### Generating Module File
_generate_module_eus(client_action
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/client_action
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(client_action_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(client_action_generate_messages client_action_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Myassignment/src/client_action/msg/custommsg.msg" NAME_WE)
add_dependencies(client_action_generate_messages_eus _client_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/Myassignment/src/client_action/srv/my_service.srv" NAME_WE)
add_dependencies(client_action_generate_messages_eus _client_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(client_action_geneus)
add_dependencies(client_action_geneus client_action_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS client_action_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(client_action
  "/root/Myassignment/src/client_action/msg/custommsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/client_action
)

### Generating Services
_generate_srv_lisp(client_action
  "/root/Myassignment/src/client_action/srv/my_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/client_action
)

### Generating Module File
_generate_module_lisp(client_action
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/client_action
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(client_action_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(client_action_generate_messages client_action_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Myassignment/src/client_action/msg/custommsg.msg" NAME_WE)
add_dependencies(client_action_generate_messages_lisp _client_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/Myassignment/src/client_action/srv/my_service.srv" NAME_WE)
add_dependencies(client_action_generate_messages_lisp _client_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(client_action_genlisp)
add_dependencies(client_action_genlisp client_action_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS client_action_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(client_action
  "/root/Myassignment/src/client_action/msg/custommsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/client_action
)

### Generating Services
_generate_srv_nodejs(client_action
  "/root/Myassignment/src/client_action/srv/my_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/client_action
)

### Generating Module File
_generate_module_nodejs(client_action
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/client_action
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(client_action_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(client_action_generate_messages client_action_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Myassignment/src/client_action/msg/custommsg.msg" NAME_WE)
add_dependencies(client_action_generate_messages_nodejs _client_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/Myassignment/src/client_action/srv/my_service.srv" NAME_WE)
add_dependencies(client_action_generate_messages_nodejs _client_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(client_action_gennodejs)
add_dependencies(client_action_gennodejs client_action_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS client_action_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(client_action
  "/root/Myassignment/src/client_action/msg/custommsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_action
)

### Generating Services
_generate_srv_py(client_action
  "/root/Myassignment/src/client_action/srv/my_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_action
)

### Generating Module File
_generate_module_py(client_action
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_action
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(client_action_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(client_action_generate_messages client_action_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Myassignment/src/client_action/msg/custommsg.msg" NAME_WE)
add_dependencies(client_action_generate_messages_py _client_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/Myassignment/src/client_action/srv/my_service.srv" NAME_WE)
add_dependencies(client_action_generate_messages_py _client_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(client_action_genpy)
add_dependencies(client_action_genpy client_action_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS client_action_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/client_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/client_action
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(client_action_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(client_action_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/client_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/client_action
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(client_action_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(client_action_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/client_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/client_action
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(client_action_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(client_action_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/client_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/client_action
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(client_action_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(client_action_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_action)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_action\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/client_action
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(client_action_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(client_action_generate_messages_py std_msgs_generate_messages_py)
endif()
