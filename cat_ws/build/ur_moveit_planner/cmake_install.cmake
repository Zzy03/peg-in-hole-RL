# Install script for directory: /home/wzc/cat_ws/src/ur_moveit_planner

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wzc/cat_ws/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_moveit_planner/msg" TYPE FILE FILES
    "/home/wzc/cat_ws/src/ur_moveit_planner/msg/JointQuantity.msg"
    "/home/wzc/cat_ws/src/ur_moveit_planner/msg/Rpy.msg"
    "/home/wzc/cat_ws/src/ur_moveit_planner/msg/PoseRpy.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_moveit_planner/srv" TYPE FILE FILES
    "/home/wzc/cat_ws/src/ur_moveit_planner/srv/moveToCartesianPose.srv"
    "/home/wzc/cat_ws/src/ur_moveit_planner/srv/moveToJointAngles.srv"
    "/home/wzc/cat_ws/src/ur_moveit_planner/srv/currentPose.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_moveit_planner/action" TYPE FILE FILES
    "/home/wzc/cat_ws/src/ur_moveit_planner/action/moveToCartesianPose.action"
    "/home/wzc/cat_ws/src/ur_moveit_planner/action/moveToJointAngles.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_moveit_planner/msg" TYPE FILE FILES
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToCartesianPoseAction.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToCartesianPoseActionGoal.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToCartesianPoseActionResult.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToCartesianPoseActionFeedback.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToCartesianPoseGoal.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToCartesianPoseResult.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToCartesianPoseFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_moveit_planner/msg" TYPE FILE FILES
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToJointAnglesAction.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToJointAnglesActionGoal.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToJointAnglesActionResult.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToJointAnglesActionFeedback.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToJointAnglesGoal.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToJointAnglesResult.msg"
    "/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg/moveToJointAnglesFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_moveit_planner/cmake" TYPE FILE FILES "/home/wzc/cat_ws/build/ur_moveit_planner/catkin_generated/installspace/ur_moveit_planner-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wzc/cat_ws/devel/include/ur_moveit_planner")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wzc/cat_ws/devel/share/roseus/ros/ur_moveit_planner")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wzc/cat_ws/devel/share/common-lisp/ros/ur_moveit_planner")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/wzc/cat_ws/devel/share/gennodejs/ros/ur_moveit_planner")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/wzc/cat_ws/devel/lib/python2.7/dist-packages/ur_moveit_planner")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/wzc/cat_ws/devel/lib/python2.7/dist-packages/ur_moveit_planner")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wzc/cat_ws/build/ur_moveit_planner/catkin_generated/installspace/ur_moveit_planner.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_moveit_planner/cmake" TYPE FILE FILES "/home/wzc/cat_ws/build/ur_moveit_planner/catkin_generated/installspace/ur_moveit_planner-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_moveit_planner/cmake" TYPE FILE FILES
    "/home/wzc/cat_ws/build/ur_moveit_planner/catkin_generated/installspace/ur_moveit_plannerConfig.cmake"
    "/home/wzc/cat_ws/build/ur_moveit_planner/catkin_generated/installspace/ur_moveit_plannerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ur_moveit_planner" TYPE FILE FILES "/home/wzc/cat_ws/src/ur_moveit_planner/package.xml")
endif()

