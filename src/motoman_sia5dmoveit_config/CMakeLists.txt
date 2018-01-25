cmake_minimum_required(VERSION 2.8.3)
project(motoman_sia5dmoveit_config)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  rospy
  std_msgs
  moveit_msgs
  moveit_ros_planning_interface
)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


catkin_package(
#  INCLUDE_DIRS include
  LIBRARIES motoman_sia5dmoveit_config
  CATKIN_DEPENDS geometry_msgs roscpp rospy std_msgs moveit_msgs moveit_ros_planning_interface
  DEPENDS system_lib
)



## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
#  include
  ${catkin_INCLUDE_DIRS}
)




include_directories(include ${catkin_INCLUDE_DIRS})


add_executable(triangularpath src/triangularpath.cpp)
target_link_libraries(triangularpath ${catkin_LIBRARIES})
