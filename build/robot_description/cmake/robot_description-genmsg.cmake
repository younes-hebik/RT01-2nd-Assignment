# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_description: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_description_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv" NAME_WE)
add_custom_target(_robot_description_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_description" "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(robot_description
  "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_description
)

### Generating Module File
_generate_module_cpp(robot_description
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_description
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_description_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_description_generate_messages robot_description_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv" NAME_WE)
add_dependencies(robot_description_generate_messages_cpp _robot_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_description_gencpp)
add_dependencies(robot_description_gencpp robot_description_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_description_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(robot_description
  "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_description
)

### Generating Module File
_generate_module_eus(robot_description
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_description
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_description_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_description_generate_messages robot_description_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv" NAME_WE)
add_dependencies(robot_description_generate_messages_eus _robot_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_description_geneus)
add_dependencies(robot_description_geneus robot_description_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_description_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(robot_description
  "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_description
)

### Generating Module File
_generate_module_lisp(robot_description
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_description
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_description_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_description_generate_messages robot_description_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv" NAME_WE)
add_dependencies(robot_description_generate_messages_lisp _robot_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_description_genlisp)
add_dependencies(robot_description_genlisp robot_description_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_description_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(robot_description
  "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_description
)

### Generating Module File
_generate_module_nodejs(robot_description
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_description
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_description_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_description_generate_messages robot_description_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv" NAME_WE)
add_dependencies(robot_description_generate_messages_nodejs _robot_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_description_gennodejs)
add_dependencies(robot_description_gennodejs robot_description_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_description_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(robot_description
  "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_description
)

### Generating Module File
_generate_module_py(robot_description
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_description
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_description_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_description_generate_messages robot_description_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/Desktop/ResearchTrack1/my_ros/src/robot_description/srv/Position.srv" NAME_WE)
add_dependencies(robot_description_generate_messages_py _robot_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_description_genpy)
add_dependencies(robot_description_genpy robot_description_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_description_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_description
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_description
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_description
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_description
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_description)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_description\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_description
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
