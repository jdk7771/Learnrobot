# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "prac_ros: 8 messages, 1 services")

set(MSG_I_FLAGS "-Iprac_ros:/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg;-Iprac_ros:/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(prac_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg" NAME_WE)
add_custom_target(_prac_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prac_ros" "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg" ""
)

get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg" NAME_WE)
add_custom_target(_prac_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prac_ros" "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg" "prac_ros/timebackGoal:std_msgs/Header:prac_ros/timebackActionResult:actionlib_msgs/GoalID:prac_ros/timebackActionFeedback:prac_ros/timebackActionGoal:actionlib_msgs/GoalStatus:prac_ros/timebackFeedback:prac_ros/timebackResult"
)

get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg" NAME_WE)
add_custom_target(_prac_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prac_ros" "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:prac_ros/timebackGoal"
)

get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg" NAME_WE)
add_custom_target(_prac_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prac_ros" "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg" "prac_ros/timebackResult:std_msgs/Header:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg" NAME_WE)
add_custom_target(_prac_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prac_ros" "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg" "std_msgs/Header:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:prac_ros/timebackFeedback"
)

get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg" NAME_WE)
add_custom_target(_prac_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prac_ros" "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg" ""
)

get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg" NAME_WE)
add_custom_target(_prac_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prac_ros" "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg" ""
)

get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg" NAME_WE)
add_custom_target(_prac_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prac_ros" "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg" ""
)

get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv" NAME_WE)
add_custom_target(_prac_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prac_ros" "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros
)
_generate_msg_cpp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros
)
_generate_msg_cpp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros
)
_generate_msg_cpp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros
)
_generate_msg_cpp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros
)
_generate_msg_cpp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros
)
_generate_msg_cpp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros
)
_generate_msg_cpp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros
)

### Generating Services
_generate_srv_cpp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros
)

### Generating Module File
_generate_module_cpp(prac_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(prac_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(prac_ros_generate_messages prac_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_cpp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_cpp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_cpp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_cpp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_cpp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_cpp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_cpp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_cpp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv" NAME_WE)
add_dependencies(prac_ros_generate_messages_cpp _prac_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prac_ros_gencpp)
add_dependencies(prac_ros_gencpp prac_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prac_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros
)
_generate_msg_eus(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros
)
_generate_msg_eus(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros
)
_generate_msg_eus(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros
)
_generate_msg_eus(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros
)
_generate_msg_eus(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros
)
_generate_msg_eus(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros
)
_generate_msg_eus(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros
)

### Generating Services
_generate_srv_eus(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros
)

### Generating Module File
_generate_module_eus(prac_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(prac_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(prac_ros_generate_messages prac_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_eus _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_eus _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_eus _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_eus _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_eus _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_eus _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_eus _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_eus _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv" NAME_WE)
add_dependencies(prac_ros_generate_messages_eus _prac_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prac_ros_geneus)
add_dependencies(prac_ros_geneus prac_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prac_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros
)
_generate_msg_lisp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros
)
_generate_msg_lisp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros
)
_generate_msg_lisp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros
)
_generate_msg_lisp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros
)
_generate_msg_lisp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros
)
_generate_msg_lisp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros
)
_generate_msg_lisp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros
)

### Generating Services
_generate_srv_lisp(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros
)

### Generating Module File
_generate_module_lisp(prac_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(prac_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(prac_ros_generate_messages prac_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_lisp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_lisp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_lisp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_lisp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_lisp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_lisp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_lisp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_lisp _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv" NAME_WE)
add_dependencies(prac_ros_generate_messages_lisp _prac_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prac_ros_genlisp)
add_dependencies(prac_ros_genlisp prac_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prac_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros
)
_generate_msg_nodejs(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros
)
_generate_msg_nodejs(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros
)
_generate_msg_nodejs(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros
)
_generate_msg_nodejs(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros
)
_generate_msg_nodejs(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros
)
_generate_msg_nodejs(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros
)
_generate_msg_nodejs(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros
)

### Generating Services
_generate_srv_nodejs(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros
)

### Generating Module File
_generate_module_nodejs(prac_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(prac_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(prac_ros_generate_messages prac_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_nodejs _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_nodejs _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_nodejs _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_nodejs _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_nodejs _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_nodejs _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_nodejs _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_nodejs _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv" NAME_WE)
add_dependencies(prac_ros_generate_messages_nodejs _prac_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prac_ros_gennodejs)
add_dependencies(prac_ros_gennodejs prac_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prac_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros
)
_generate_msg_py(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros
)
_generate_msg_py(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros
)
_generate_msg_py(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros
)
_generate_msg_py(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros
)
_generate_msg_py(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros
)
_generate_msg_py(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros
)
_generate_msg_py(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros
)

### Generating Services
_generate_srv_py(prac_ros
  "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros
)

### Generating Module File
_generate_module_py(prac_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(prac_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(prac_ros_generate_messages prac_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_py _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_py _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_py _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_py _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_py _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_py _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_py _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg" NAME_WE)
add_dependencies(prac_ros_generate_messages_py _prac_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv" NAME_WE)
add_dependencies(prac_ros_generate_messages_py _prac_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prac_ros_genpy)
add_dependencies(prac_ros_genpy prac_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prac_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prac_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(prac_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(prac_ros_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prac_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(prac_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(prac_ros_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prac_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(prac_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(prac_ros_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prac_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(prac_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(prac_ros_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prac_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(prac_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(prac_ros_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
