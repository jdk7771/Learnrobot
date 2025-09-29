# Install script for directory: /home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ljx/snap/Learnrobot/Learn_ros/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/prac_ros/msg" TYPE FILE FILES "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/msg/jdk.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/prac_ros/srv" TYPE FILE FILES "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/srv/SrvJdk.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/prac_ros/action" TYPE FILE FILES "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/action/timeback.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/prac_ros/msg" TYPE FILE FILES
    "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackAction.msg"
    "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionGoal.msg"
    "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionResult.msg"
    "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackActionFeedback.msg"
    "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackGoal.msg"
    "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackResult.msg"
    "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/prac_ros/msg/timebackFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/prac_ros/cmake" TYPE FILE FILES "/home/ljx/snap/Learnrobot/Learn_ros/build/prac_ros/catkin_generated/installspace/prac_ros-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ljx/snap/Learnrobot/Learn_ros/devel/include/prac_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/roseus/ros/prac_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/common-lisp/ros/prac_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ljx/snap/Learnrobot/Learn_ros/devel/share/gennodejs/ros/prac_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ljx/snap/Learnrobot/Learn_ros/devel/lib/python3/dist-packages/prac_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ljx/snap/Learnrobot/Learn_ros/devel/lib/python3/dist-packages/prac_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ljx/snap/Learnrobot/Learn_ros/build/prac_ros/catkin_generated/installspace/prac_ros.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/prac_ros/cmake" TYPE FILE FILES "/home/ljx/snap/Learnrobot/Learn_ros/build/prac_ros/catkin_generated/installspace/prac_ros-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/prac_ros/cmake" TYPE FILE FILES
    "/home/ljx/snap/Learnrobot/Learn_ros/build/prac_ros/catkin_generated/installspace/prac_rosConfig.cmake"
    "/home/ljx/snap/Learnrobot/Learn_ros/build/prac_ros/catkin_generated/installspace/prac_rosConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/prac_ros" TYPE FILE FILES "/home/ljx/snap/Learnrobot/Learn_ros/src/prac_ros/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/prac_ros" TYPE PROGRAM FILES "/home/ljx/snap/Learnrobot/Learn_ros/build/prac_ros/catkin_generated/installspace/topic_publisher.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/prac_ros" TYPE PROGRAM FILES "/home/ljx/snap/Learnrobot/Learn_ros/build/prac_ros/catkin_generated/installspace/topic_sub.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/prac_ros" TYPE PROGRAM FILES "/home/ljx/snap/Learnrobot/Learn_ros/build/prac_ros/catkin_generated/installspace/ser_request.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/prac_ros" TYPE PROGRAM FILES "/home/ljx/snap/Learnrobot/Learn_ros/build/prac_ros/catkin_generated/installspace/ser_service.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/prac_ros" TYPE PROGRAM FILES "/home/ljx/snap/Learnrobot/Learn_ros/build/prac_ros/catkin_generated/installspace/server_action.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/prac_ros" TYPE PROGRAM FILES "/home/ljx/snap/Learnrobot/Learn_ros/build/prac_ros/catkin_generated/installspace/client_action.py")
endif()

