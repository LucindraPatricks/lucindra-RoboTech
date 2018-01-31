#include <moveit/move_group_interface/move_group.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>
#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>
#include <sstream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "triangularpath");
  ros::NodeHandle node_handle;
  ros::AsyncSpinner spinner(1);
  spinner.start();

  moveit::planning_interface::MoveGroup group("sia5");
  sleep(5.0);

  std::stringstream s1;
  s1 << "first";
  std::stringstream s2;
  s2 << "second";
  std::stringstream s3;
  s3 << "third";

  while(ros::ok()){
  group.setNamedTarget(s1.str());
  moveit::planning_interface::MoveGroup::Plan my_plan1;
  sleep(2.0);
  group.move();
  sleep(2.0);
  group.setNamedTarget(s2.str());
  moveit::planning_interface::MoveGroup::Plan my_plan2;
  sleep(2.0);
  group.move();
  sleep(2.0);
  group.setNamedTarget(s3.str());
  moveit::planning_interface::MoveGroup::Plan my_plan3;
  sleep(2.0);
  group.move();
  sleep(2.0);
  }
}
