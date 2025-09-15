#!/usr/bin/env python3
import rospy
from prac_ros.srv import SrvJdk,SrvJdkResponse


rospy.init_node("srv_server")

try:
    rospy.wait_for_service('word_count')
except Exception as e:
    print(f"跑出的异常为{e}")
service = rospy.ServiceProxy("word_count",SrvJdk)
response = service("hihihih hhi hi ")

print(response)