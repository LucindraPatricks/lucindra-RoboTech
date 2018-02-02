#!/usr/bin/env python

#mouse position and one button being clicked or not

import rospy
import struct
from mouse_reader.msg import Mousemove
from std_msgs.msg import String
from geometry_msgs.msg import Point
rospy.init_node('mouse_reader', anonymous=True)
pub = rospy.Publisher('mouse', Mousemove, queue_size=10)
#pub2 = rospy.Publisher('mouse2', Data, queue_size=10)
rate = rospy.Rate(200)

bewegung = Mousemove()
#def process_event(event):

#    return Point(2.0,4.0,0.0)

#while not rospy.is_shutdown():
#    pub.publish(process_event(0))
#    rate.sleep()


file = open( "/dev/input/mice", "rb" );

def getMouseEvent():
  buf = file.read(3);
  button = ord( buf[0] );
  bLeft = button & 0x1;
  bMiddle = ( button & 0x4 ) > 0;
  bRight = ( button & 0x2 ) > 0;
  x,y = struct.unpack( "bb", buf[1:] );
  # print ("L:%d, M: %d, R: %d, x: %d, y: %d\n" % (bLeft, bMiddle, bRight, x, y) );
  z = 0;
  message = createMessage(bLeft, bMiddle, bRight, x, y, z);
  pub.publish(message);

def createMessage(bLeft, bMiddle, bRight, x, y, z):
  bewegung.move = Point(x, y, z)
  bewegung.button_pressed = bLeft or bMiddle or bRight
  return bewegung

while not rospy.is_shutdown():
  getMouseEvent();
  
file.close();







