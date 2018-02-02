import os
import pprint
import pygame
from pygame.locals import *
import rospy
import struct
from std_msgs.msg import String
from geometry_msgs.msg import *


rospy.init_node('moveRobot', anonymous=True)
pub = rospy.Publisher('movements', Twist, queue_size=10)
#pub2 = rospy.Publisher('mouse2', Data, queue_size=10)
rate = rospy.Rate(200)

mover = Twist()



def createMessage(inputvalue):
  mover.linear = Vector3(inputvalue[0], 0, 0)
  mover.angular = Vector3(0, 0, inputvalue[1])
  return mover







class PS4Controller(object):
    """Class representing the PS4 controller. Pretty straightforward functionality."""

    controller = None
    axis_data = None
    button_data = None
    hat_data = None

    def init(self):
        """Initialize the joystick components"""

        pygame.init()
        pygame.joystick.init()
        self.controller = pygame.joystick.Joystick(0)
        self.controller.init()

    def listen(self):
        """Listen for events to happen"""

        if not self.axis_data:
            self.axis_data = {}

        if not self.button_data:
            self.button_data = {}
            for i in range(self.controller.get_numbuttons()):
                self.button_data[i] = False

        if not self.hat_data:
            self.hat_data = {}
            for i in range(self.controller.get_numhats()):
                self.hat_data[i] = (0, 0)

        while True:
            for event in pygame.event.get():
                if event.type == pygame.JOYAXISMOTION:
                    self.axis_data[event.axis] = round(event.value,2)
                elif event.type == pygame.JOYBUTTONDOWN:
                    self.button_data[event.button] = True
                elif event.type == pygame.JOYBUTTONUP:
                    self.button_data[event.button] = False
                elif event.type == pygame.JOYHATMOTION:
                    self.hat_data[event.hat] = event.value

                # Insert your code on what you would like to happen for each event here!
                # In the current setup, I have the state simply printing out to the screen.

                os.system('clear')
                pprint.pprint("keys")
                pprint.pprint(self.hat_data)


                message = createMessage(self.hat_data)

                pub.publish(message);


if __name__ == "__main__":
    ps4 = PS4Controller()
    ps4.init()
ps4.listen()


while not rospy.is_shutdown():
    PS4Controller.listen(self)
