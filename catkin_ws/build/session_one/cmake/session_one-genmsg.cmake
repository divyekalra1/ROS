# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "session_one: 1 messages, 1 services")

set(MSG_I_FLAGS "-Isession_one:/home/divye_kalra/catkin_ws/src/session_one/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(session_one_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv" NAME_WE)
add_custom_target(_session_one_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "session_one" "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv" ""
)

get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg" NAME_WE)
add_custom_target(_session_one_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "session_one" "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg" "std_msgs/String:std_msgs/Int32"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(session_one
  "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/session_one
)

### Generating Services
_generate_srv_cpp(session_one
  "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/session_one
)

### Generating Module File
_generate_module_cpp(session_one
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/session_one
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(session_one_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(session_one_generate_messages session_one_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv" NAME_WE)
add_dependencies(session_one_generate_messages_cpp _session_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg" NAME_WE)
add_dependencies(session_one_generate_messages_cpp _session_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(session_one_gencpp)
add_dependencies(session_one_gencpp session_one_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS session_one_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(session_one
  "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/session_one
)

### Generating Services
_generate_srv_eus(session_one
  "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/session_one
)

### Generating Module File
_generate_module_eus(session_one
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/session_one
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(session_one_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(session_one_generate_messages session_one_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv" NAME_WE)
add_dependencies(session_one_generate_messages_eus _session_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg" NAME_WE)
add_dependencies(session_one_generate_messages_eus _session_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(session_one_geneus)
add_dependencies(session_one_geneus session_one_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS session_one_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(session_one
  "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/session_one
)

### Generating Services
_generate_srv_lisp(session_one
  "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/session_one
)

### Generating Module File
_generate_module_lisp(session_one
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/session_one
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(session_one_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(session_one_generate_messages session_one_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv" NAME_WE)
add_dependencies(session_one_generate_messages_lisp _session_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg" NAME_WE)
add_dependencies(session_one_generate_messages_lisp _session_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(session_one_genlisp)
add_dependencies(session_one_genlisp session_one_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS session_one_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(session_one
  "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/session_one
)

### Generating Services
_generate_srv_nodejs(session_one
  "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/session_one
)

### Generating Module File
_generate_module_nodejs(session_one
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/session_one
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(session_one_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(session_one_generate_messages session_one_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv" NAME_WE)
add_dependencies(session_one_generate_messages_nodejs _session_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg" NAME_WE)
add_dependencies(session_one_generate_messages_nodejs _session_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(session_one_gennodejs)
add_dependencies(session_one_gennodejs session_one_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS session_one_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(session_one
  "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/session_one
)

### Generating Services
_generate_srv_py(session_one
  "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/session_one
)

### Generating Module File
_generate_module_py(session_one
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/session_one
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(session_one_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(session_one_generate_messages session_one_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/srv/CustomServiceMessage.srv" NAME_WE)
add_dependencies(session_one_generate_messages_py _session_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/divye_kalra/catkin_ws/src/session_one/msg/JangoFett.msg" NAME_WE)
add_dependencies(session_one_generate_messages_py _session_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(session_one_genpy)
add_dependencies(session_one_genpy session_one_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS session_one_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/session_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/session_one
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(session_one_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/session_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/session_one
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(session_one_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/session_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/session_one
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(session_one_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/session_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/session_one
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(session_one_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/session_one)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/session_one\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/session_one
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(session_one_generate_messages_py std_msgs_generate_messages_py)
endif()
