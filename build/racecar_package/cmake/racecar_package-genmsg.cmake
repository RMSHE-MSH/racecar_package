# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "racecar_package: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iracecar_package:/home/rmshe/project_ws/src/racecar_package/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(racecar_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg" NAME_WE)
add_custom_target(_racecar_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "racecar_package" "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(racecar_package
  "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/racecar_package
)

### Generating Services

### Generating Module File
_generate_module_cpp(racecar_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/racecar_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(racecar_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(racecar_package_generate_messages racecar_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg" NAME_WE)
add_dependencies(racecar_package_generate_messages_cpp _racecar_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(racecar_package_gencpp)
add_dependencies(racecar_package_gencpp racecar_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS racecar_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(racecar_package
  "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/racecar_package
)

### Generating Services

### Generating Module File
_generate_module_eus(racecar_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/racecar_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(racecar_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(racecar_package_generate_messages racecar_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg" NAME_WE)
add_dependencies(racecar_package_generate_messages_eus _racecar_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(racecar_package_geneus)
add_dependencies(racecar_package_geneus racecar_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS racecar_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(racecar_package
  "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/racecar_package
)

### Generating Services

### Generating Module File
_generate_module_lisp(racecar_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/racecar_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(racecar_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(racecar_package_generate_messages racecar_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg" NAME_WE)
add_dependencies(racecar_package_generate_messages_lisp _racecar_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(racecar_package_genlisp)
add_dependencies(racecar_package_genlisp racecar_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS racecar_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(racecar_package
  "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/racecar_package
)

### Generating Services

### Generating Module File
_generate_module_nodejs(racecar_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/racecar_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(racecar_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(racecar_package_generate_messages racecar_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg" NAME_WE)
add_dependencies(racecar_package_generate_messages_nodejs _racecar_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(racecar_package_gennodejs)
add_dependencies(racecar_package_gennodejs racecar_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS racecar_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(racecar_package
  "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/racecar_package
)

### Generating Services

### Generating Module File
_generate_module_py(racecar_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/racecar_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(racecar_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(racecar_package_generate_messages racecar_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rmshe/project_ws/src/racecar_package/msg/customize_msg.msg" NAME_WE)
add_dependencies(racecar_package_generate_messages_py _racecar_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(racecar_package_genpy)
add_dependencies(racecar_package_genpy racecar_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS racecar_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/racecar_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/racecar_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(racecar_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/racecar_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/racecar_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(racecar_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/racecar_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/racecar_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(racecar_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/racecar_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/racecar_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(racecar_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/racecar_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/racecar_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/racecar_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(racecar_package_generate_messages_py std_msgs_generate_messages_py)
endif()
