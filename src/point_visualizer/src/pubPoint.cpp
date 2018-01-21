#include "ros/ros.h"
#include "std_msgs/String.h"
#include "tf/transform_listener.h"
#include "tf/message_filter.h"
#include "message_filters/subscriber.h"
#include "geometry_msgs/PointStamped.h"
#include <sstream>
#include "../../../devel/include/mouse_reader/Mousemove.h"

geometry_msgs::PointStamped point_out;
bool processed = false;

void chatterCallback(const mouse_reader::Mousemove msg)
{
  //ROS_INFO("I heard: [%s]", msg->data.c_str());

    point_out.point=msg.move;
    point_out.header.frame_id="felina";

    processed = true;
}

int main(int argc, char **argv)
{

  ros::init(argc, argv, "pubPoint");
  ros::NodeHandle n;
  ros::Publisher chatter_pub=n.advertise<geometry_msgs::PointStamped>("pointStamp", 1000);
  //ros::Rate loop_rate(10);
  ros::Subscriber sub = n.subscribe("mouse", 1000, chatterCallback);

  ros::Rate loopRate(20);
  while (ros::ok())
  {
    if (processed){
      chatter_pub.publish(point_out);
      processed = false;
    }
    ros::spinOnce();
    loopRate.sleep();
  }

  return 0;
}
