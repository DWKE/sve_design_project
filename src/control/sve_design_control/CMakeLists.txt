cmake_minimum_required(VERSION 2.8.3)
project(sve_design_control)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  roscpp
  rospy
  std_msgs
  kusv_msgs
)

add_message_files(
  FILES
  # PlanningControl.msg
  driving_control_msg.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES sve_design_control
#  CATKIN_DEPENDS message_runtime roscpp rospy std_msgs kusv_msgs
#  DEPENDS system_lib
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(local_waypoint_follower src/local_waypoint_follower.cpp)
add_dependencies(local_waypoint_follower ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(local_waypoint_follower ${catkin_LIBRARIES})

add_executable(keyboard_interface src/keyboard_interface.cpp)
add_dependencies(keyboard_interface ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(keyboard_interface ${catkin_LIBRARIES})

add_executable(control_node src/control_node.cpp)
add_dependencies(control_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(control_node ${catkin_LIBRARIES})
