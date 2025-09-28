#! usr/bin/env python

import rospy
import numpy as np


class Arm_Parameters:
    def __init__(self):
        self.ur5_dh = np.array([[0,],])