# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "myturtlebot: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(myturtlebot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv" NAME_WE)
add_custom_target(_myturtlebot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "myturtlebot" "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(myturtlebot
  "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myturtlebot
)

### Generating Module File
_generate_module_cpp(myturtlebot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myturtlebot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(myturtlebot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(myturtlebot_generate_messages myturtlebot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv" NAME_WE)
add_dependencies(myturtlebot_generate_messages_cpp _myturtlebot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myturtlebot_gencpp)
add_dependencies(myturtlebot_gencpp myturtlebot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myturtlebot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(myturtlebot
  "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myturtlebot
)

### Generating Module File
_generate_module_eus(myturtlebot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myturtlebot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(myturtlebot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(myturtlebot_generate_messages myturtlebot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv" NAME_WE)
add_dependencies(myturtlebot_generate_messages_eus _myturtlebot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myturtlebot_geneus)
add_dependencies(myturtlebot_geneus myturtlebot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myturtlebot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(myturtlebot
  "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myturtlebot
)

### Generating Module File
_generate_module_lisp(myturtlebot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myturtlebot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(myturtlebot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(myturtlebot_generate_messages myturtlebot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv" NAME_WE)
add_dependencies(myturtlebot_generate_messages_lisp _myturtlebot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myturtlebot_genlisp)
add_dependencies(myturtlebot_genlisp myturtlebot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myturtlebot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(myturtlebot
  "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myturtlebot
)

### Generating Module File
_generate_module_nodejs(myturtlebot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myturtlebot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(myturtlebot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(myturtlebot_generate_messages myturtlebot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv" NAME_WE)
add_dependencies(myturtlebot_generate_messages_nodejs _myturtlebot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myturtlebot_gennodejs)
add_dependencies(myturtlebot_gennodejs myturtlebot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myturtlebot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(myturtlebot
  "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myturtlebot
)

### Generating Module File
_generate_module_py(myturtlebot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myturtlebot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(myturtlebot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(myturtlebot_generate_messages myturtlebot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rflab/robot_ws/src/myturtlebot/srv/TurtlebotStatus.srv" NAME_WE)
add_dependencies(myturtlebot_generate_messages_py _myturtlebot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myturtlebot_genpy)
add_dependencies(myturtlebot_genpy myturtlebot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myturtlebot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myturtlebot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myturtlebot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(myturtlebot_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(myturtlebot_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(myturtlebot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myturtlebot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myturtlebot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(myturtlebot_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(myturtlebot_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(myturtlebot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myturtlebot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myturtlebot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(myturtlebot_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(myturtlebot_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(myturtlebot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myturtlebot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myturtlebot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(myturtlebot_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(myturtlebot_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(myturtlebot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myturtlebot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myturtlebot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myturtlebot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(myturtlebot_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(myturtlebot_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(myturtlebot_generate_messages_py std_msgs_generate_messages_py)
endif()
