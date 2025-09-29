#! usr/bin/env python

import rospy
import numpy as np
import os
import yaml
import math

class Arm_Parameters:
    def __init__(self, arm_type):

        self.path = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        self.kinematcs_path = os.path.join(self.path, "universal_robot" , "ur_description", "config", arm_type,"default_kinematics.yaml")
        self.joint_name = [None]*6
        self.R = np.zeros((6,4,4))
        self.kinematics = self.get_kinematics()

    def get_joint_matrix(self, joint_name, joint_angle):
        joint_rot_axis = {
            "shoulder":'z',
            "upper_arm":'y'
        }

    def get_kinematics(self):
        with open(self.kinematcs_path) as file:
            self.kinematics_yaml = yaml.safe_load(file)
            self.kinematics = self.kinematics_yaml['kinematics']
            if 'hash' in self.kinematics:
                del self.kinematics['hash']
        print(self.kinematics)
        return self.kinematics
    
    def rpy2roation(self, roll, pitch, yaw):

        Rz_yaw = np.array([
            [math.cos(yaw), -math.sin(yaw) ,0 ],
            [math.sin(yaw), math.cos(yaw),0],
            [0,0,1]
            ])
        
        Rx_roll = np.array([
            [1,0,0],
            [0, math.cos(roll), math.sin(roll)],
            [0, -math.sin(roll), math.cos(roll)]
            ])
        
        Ry_pitch = np.array([
            [math.cos(pitch), 0 , math.sin(pitch)],
            [0, 1, 0],
            [-math.sin(pitch), 0, math.cos(pitch)]
            ])
        
        R = np.dot(Rx_roll, np.dot(Ry_pitch, Rz_yaw))

        return R

    def rpy_to_rotation(self, R, x, y, z):
        rotation  = np.eye(4)
        rotation[:3, :3] = R
        rotation[0,3] = x
        rotation[1,3] = y
        rotation[2,3] = z
        
        return rotation
    

    def joint_get_rotation(self, joint):
        x = joint['x']
        y = joint['y']
        z = joint['z']
        roll = joint['roll']
        pitch = joint['pitch']
        yaw = joint['yaw']
        R = self.rpy2roation(roll, pitch, yaw)
        rotation = self.rpy_to_rotation(R, x, y, z)
        # print(x,y,z,rotation)
        return rotation


    def get_rotation2effect(self):
        R = np.zeros((6,4,4))
        # print(self.kinematics)
        for i,(joint,joint_rotation) in enumerate(self.kinematics.items()):
            self.joint_name[i] = joint
            R[i] = self.joint_get_rotation(joint_rotation)
        return R
    


if __name__ == "__main__":
    ur5e = Arm_Parameters("ur5e")
    print(ur5e.get_rotation2effect())