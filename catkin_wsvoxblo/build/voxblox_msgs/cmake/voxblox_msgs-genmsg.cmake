# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "voxblox_msgs: 6 messages, 1 services")

set(MSG_I_FLAGS "-Ivoxblox_msgs:/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(voxblox_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg" NAME_WE)
add_custom_target(_voxblox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "voxblox_msgs" "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg" ""
)

get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg" NAME_WE)
add_custom_target(_voxblox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "voxblox_msgs" "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg" "voxblox_msgs/Triangle"
)

get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg" NAME_WE)
add_custom_target(_voxblox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "voxblox_msgs" "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg" ""
)

get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg" NAME_WE)
add_custom_target(_voxblox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "voxblox_msgs" "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg" "voxblox_msgs/MeshBlock:voxblox_msgs/Triangle:std_msgs/Header"
)

get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg" NAME_WE)
add_custom_target(_voxblox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "voxblox_msgs" "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg" ""
)

get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg" NAME_WE)
add_custom_target(_voxblox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "voxblox_msgs" "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg" "voxblox_msgs/Block"
)

get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv" NAME_WE)
add_custom_target(_voxblox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "voxblox_msgs" "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_cpp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_cpp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_cpp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg;/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_cpp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_cpp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxblox_msgs
)

### Generating Services
_generate_srv_cpp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxblox_msgs
)

### Generating Module File
_generate_module_cpp(voxblox_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxblox_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(voxblox_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(voxblox_msgs_generate_messages voxblox_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_cpp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_cpp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_cpp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_cpp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_cpp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_cpp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_cpp _voxblox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(voxblox_msgs_gencpp)
add_dependencies(voxblox_msgs_gencpp voxblox_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS voxblox_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_eus(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_eus(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_eus(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg;/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_eus(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_eus(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxblox_msgs
)

### Generating Services
_generate_srv_eus(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxblox_msgs
)

### Generating Module File
_generate_module_eus(voxblox_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxblox_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(voxblox_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(voxblox_msgs_generate_messages voxblox_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_eus _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_eus _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_eus _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_eus _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_eus _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_eus _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_eus _voxblox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(voxblox_msgs_geneus)
add_dependencies(voxblox_msgs_geneus voxblox_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS voxblox_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_lisp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_lisp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_lisp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg;/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_lisp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_lisp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxblox_msgs
)

### Generating Services
_generate_srv_lisp(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxblox_msgs
)

### Generating Module File
_generate_module_lisp(voxblox_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxblox_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(voxblox_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(voxblox_msgs_generate_messages voxblox_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_lisp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_lisp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_lisp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_lisp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_lisp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_lisp _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_lisp _voxblox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(voxblox_msgs_genlisp)
add_dependencies(voxblox_msgs_genlisp voxblox_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS voxblox_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_nodejs(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_nodejs(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_nodejs(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg;/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_nodejs(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_nodejs(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxblox_msgs
)

### Generating Services
_generate_srv_nodejs(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxblox_msgs
)

### Generating Module File
_generate_module_nodejs(voxblox_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxblox_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(voxblox_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(voxblox_msgs_generate_messages voxblox_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_nodejs _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_nodejs _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_nodejs _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_nodejs _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_nodejs _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_nodejs _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_nodejs _voxblox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(voxblox_msgs_gennodejs)
add_dependencies(voxblox_msgs_gennodejs voxblox_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS voxblox_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_py(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_py(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_py(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg;/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_py(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxblox_msgs
)
_generate_msg_py(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg"
  "${MSG_I_FLAGS}"
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxblox_msgs
)

### Generating Services
_generate_srv_py(voxblox_msgs
  "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxblox_msgs
)

### Generating Module File
_generate_module_py(voxblox_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxblox_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(voxblox_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(voxblox_msgs_generate_messages voxblox_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Triangle.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_py _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/MeshBlock.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_py _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Block.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_py _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Mesh.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_py _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/VoxelEvaluationDetails.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_py _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg/Layer.msg" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_py _voxblox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/srv/FilePath.srv" NAME_WE)
add_dependencies(voxblox_msgs_generate_messages_py _voxblox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(voxblox_msgs_genpy)
add_dependencies(voxblox_msgs_genpy voxblox_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS voxblox_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxblox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/voxblox_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(voxblox_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxblox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/voxblox_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(voxblox_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxblox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/voxblox_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(voxblox_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxblox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/voxblox_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(voxblox_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxblox_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxblox_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/voxblox_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(voxblox_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
