//Code from https://github.com/ros-planning/moveit_tutorials/blob/indigo-devel/doc/pr2_tutorials/planning/src/move_group_interface_tutorial.cpp
//Week  11 - Tutorial angepasst
//http://docs.ros.org/indigo/api/moveit_tutorials/html/doc/pr2_tutorials/planning/src/doc/move_group_interface_tutorial.html
#include <moveit/move_group_interface/move_group.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

#include <moveit_msgs/DisplayTrajectory.h>


int main(int argc, char **argv)
{
  ros::init(argc, argv, "triangularpath");
  ROS_INFO("---------------------------------------------------------Node started");
  ros::NodeHandle node_handle;
  ros::AsyncSpinner spinner(1);
  spinner.start();
  sleep(20.0);
  moveit::planning_interface::MoveGroup group("sia5");
  moveit::planning_interface::PlanningSceneInterface planning_scene_interface;
  ros::Publisher display_publisher = node_handle.advertise<moveit_msgs::DisplayTrajectory>("/move_group/display_planned_path", 1, true);
  moveit_msgs::DisplayTrajectory display_trajectory;

  ROS_INFO("Reference frame: %s", group.getPlanningFrame().c_str());
  ROS_INFO("Reference frame: %s", group.getEndEffectorLink().c_str());

  // Planning to a Pose goal
  geometry_msgs::Pose target_pose1;
  target_pose1.orientation.w = 1.0;
  target_pose1.position.x = 0;
  target_pose1.position.y = -0.7;
  target_pose1.position.z = 1.0;
  group.setPoseTarget(target_pose1);

  geometry_msgs::Pose target_pose2;
  target_pose2.orientation.w = 1.0;
  target_pose2.position.x = 0.28;
  target_pose2.position.y = -0.7;
  target_pose2.position.z = 1.0;
  group.setPoseTarget(target_pose2);

  geometry_msgs::Pose target_pose3;
  target_pose3.orientation.w = 1.0;
  target_pose3.position.x = 0.28;
  target_pose3.position.y = -0.7;
  target_pose3.position.z = 1.0;
  group.setPoseTarget(target_pose3);


  moveit::planning_interface::MoveGroup::Plan my_plan;
  bool success = group.plan(my_plan);

  ROS_INFO("Visualizing plan 1 (pose goal) %s",success?"":"FAILED");
  sleep(5.0);

  // Visualizing plans
  if (1)
  {
    ROS_INFO("Visualizing plan 1 (again)");
    display_trajectory.trajectory_start = my_plan.start_state_;
    display_trajectory.trajectory.push_back(my_plan.trajectory_);
    display_publisher.publish(display_trajectory);
    /* Sleep to give Rviz time to visualize the plan. */
    sleep(5.0);
  }



// END_TUTORIAL

  ros::shutdown();
  return 0;
}
