#! /usr/bin/env python

import rospy
import numpy as np
import os
import yaml
import math

class Arm_Parameters:
    def __init__(self, arm_type):

        self.path = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        self.kinematics_path = os.path.join(self.path, "universal_robot" , "ur_description", "config", arm_type,"default_kinematics.yaml")
        self.joint_name = [None]*6
        self.R = np.zeros((6,4,4))
        self.R_forward = np.zeros((6,4,4))
        self.rot_max_ee = np.zeros((4,4))
        self.rot_max_ee_forward = np.eye(4)
        self.kinematics = self.get_kinematics()
        self.R = self.get_rotation2effect()

    def get_TT(self, joint_angle):
        self.rot_max_ee_forward = np.eye(4)
        
        for i,(angle ,roation_begin) in enumerate(zip(joint_angle, self.R)):
            tem_rot = self.get_joint_matrix(self.joint_name[i], angle)
            self.R_forward[i] = np.dot(tem_rot,roation_begin)
        for i in range(len(self.R_forward)):
            self.rot_max_ee_forward = np.dot(self.R_forward[i],self.rot_max_ee_forward)

        return self.rot_max_ee_forward
    


    def get_joint_matrix(self, joint_name, joint_angle):
        #有问题 到时候详细看一下是否关节角是这个名字  要写一个接口

        joint_rot_axis = {
            "shoulder":'z',
            "upper_arm":'y',
            "forearm":'z',
            "wrist_1":'z',
            "wrist_2":'y',
            "wrist_3":'z'
        }
        rot_axis  = joint_rot_axis.get(joint_name,'z')

        if rot_axis=='x':
            Rot_matrix = np.array([
                [1,0,0],
                [0, math.cos(joint_angle), -math.sin(joint_angle)],
                [0, math.sin(joint_angle), math.cos(joint_angle)]
                ])
        elif rot_axis=='z':
            Rot_matrix = np.array([
                [math.cos(joint_angle), -math.sin(joint_angle) ,0 ],
                [math.sin(joint_angle), math.cos(joint_angle),0],
                [0,0,1]
                ])
            
        elif rot_axis=='y':
            Rot_matrix = np.array([
                [math.cos(joint_angle), 0 , math.sin(joint_angle)],
                [0, 1, 0],
                [-math.sin(joint_angle), 0, math.cos(joint_angle)]
                ])
        else:
            raise ValueError(f"错误的旋转轴{rot_axis}")
        return self.rpy_to_rotation(Rot_matrix, 0, 0, 0)

            
    def get_kinematics(self):
        with open(self.kinematics_path) as file:
            self.kinematics_yaml = yaml.safe_load(file)
            self.kinematics = self.kinematics_yaml['kinematics']
            if 'hash' in self.kinematics:
                del self.kinematics['hash']
        print(self.kinematics)
        return self.kinematics
    
    def rpy2rotation(self, roll, pitch, yaw):

        Rz_yaw = np.array([
            [math.cos(yaw), -math.sin(yaw) ,0 ],
            [math.sin(yaw), math.cos(yaw),0],
            [0,0,1]
            ])
        
        Rx_roll = np.array([
            [1,0,0],
            [0, math.cos(roll), -math.sin(roll)],
            [0, math.sin(roll), math.cos(roll)]
            ])
        
        Ry_pitch = np.array([
            [math.cos(pitch), 0 , math.sin(pitch)],
            [0, 1, 0],
            [-math.sin(pitch), 0, math.cos(pitch)]
            ])
        
        R = np.dot(Rz_yaw, np.dot(Ry_pitch, Rx_roll))
        
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
        R = self.rpy2rotation(roll, pitch, yaw)
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