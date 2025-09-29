#! /usr/bin/env python

import rospy
from calcuate_arm_forward import*

class GetEePose:
    def __init__(self, anonymous = False):
        rospy.init_node("get_ee_pose", anonymous)
        
