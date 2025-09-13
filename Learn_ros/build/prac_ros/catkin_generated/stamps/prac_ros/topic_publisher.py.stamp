#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

rospy.init_node("Topic_node")
pub = rospy.Publisher('pubilish_int32',Int32)
rate = rospy.Rate(2)
count = 0
msg = Int32(count)
while not rospy.is_shutdown():

    msg.data+=1
    pub.publish(msg)
    rate.sleep()