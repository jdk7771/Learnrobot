#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

rospy.init_node("Topic_node")
pub = rospy.Publisher('pubilish_int32',Int32)
rate = rospy.Rate(2)
count = 0
while not rospy.is_shutdown:
    msg = Int32(count)
    msg.data+=1
    pub.publish(msg)
    rate.sleep()