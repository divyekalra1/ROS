# Install script for directory: /home/divye_kalra/catkin_ws/src/compound_assignment

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/divye_kalra/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/compound_assignment/srv" TYPE FILE FILES "/home/divye_kalra/catkin_ws/src/compound_assignment/srv/CustomServiceMessage.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/compound_assignment/action" TYPE FILE FILES "/home/divye_kalra/catkin_ws/src/compound_assignment/action/odomData.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/compound_assignment/msg" TYPE FILE FILES
    "/home/divye_kalra/catkin_ws/devel/share/compound_assignment/msg/odomDataAction.msg"
    "/home/divye_kalra/catkin_ws/devel/share/compound_assignment/msg/odomDataActionGoal.msg"
    "/home/divye_kalra/catkin_ws/devel/share/compound_assignment/msg/odomDataActionResult.msg"
    "/home/divye_kalra/catkin_ws/devel/share/compound_assignment/msg/odomDataActionFeedback.msg"
    "/home/divye_kalra/catkin_ws/devel/share/compound_assignment/msg/odomDataGoal.msg"
    "/home/divye_kalra/catkin_ws/devel/share/compound_assignment/msg/odomDataResult.msg"
    "/home/divye_kalra/catkin_ws/devel/share/compound_assignment/msg/odomDataFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/compound_assignment/cmake" TYPE FILE FILES "/home/divye_kalra/catkin_ws/build/compound_assignment/catkin_generated/installspace/compound_assignment-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/divye_kalra/catkin_ws/devel/include/compound_assignment")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/divye_kalra/catkin_ws/devel/share/roseus/ros/compound_assignment")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/divye_kalra/catkin_ws/devel/share/common-lisp/ros/compound_assignment")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/divye_kalra/catkin_ws/devel/share/gennodejs/ros/compound_assignment")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/divye_kalra/catkin_ws/devel/lib/python2.7/dist-packages/compound_assignment")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/divye_kalra/catkin_ws/devel/lib/python2.7/dist-packages/compound_assignment")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/divye_kalra/catkin_ws/build/compound_assignment/catkin_generated/installspace/compound_assignment.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/compound_assignment/cmake" TYPE FILE FILES "/home/divye_kalra/catkin_ws/build/compound_assignment/catkin_generated/installspace/compound_assignment-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/compound_assignment/cmake" TYPE FILE FILES
    "/home/divye_kalra/catkin_ws/build/compound_assignment/catkin_generated/installspace/compound_assignmentConfig.cmake"
    "/home/divye_kalra/catkin_ws/build/compound_assignment/catkin_generated/installspace/compound_assignmentConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/compound_assignment" TYPE FILE FILES "/home/divye_kalra/catkin_ws/src/compound_assignment/package.xml")
endif()

