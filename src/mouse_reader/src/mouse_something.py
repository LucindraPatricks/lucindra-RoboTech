#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Point
rospy.init_node('mouse_reader', anonymous=True)
pub = rospy.Publisher('mouse', Point, queue_size=10)
rate = rospy.Rate(200)

def process_event(event):
    return Point(2.0,4.0,0.0)

while not rospy.is_shutdown():
    pub.publish(process_event(0))
    rate.sleep()