#!/usr/bin/env python3
import rospy
from prac_ros.srv import SrvJdk,SrvJdkResponse

def callback(request):
    num = list(request.words.split())
    return {'count':len(num)}
rospy.init_node("srv_server")

service = rospy.Service('word_count',SrvJdk,callback)

rospy.spin()