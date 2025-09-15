#!/usr/bin/env python3 
import rospy
import actionlib

from prac_ros.msg import timebackAction, timebackGoal

def feedback_cb(feeedback):
    print(f"当前进度{feeedback.progress}")


rospy.init_node("clientaction_node")
clinet = actionlib.SimpleActionClient("gotop",timebackAction)
goal = timebackGoal()
goal.dish_count = 5
clinet.send_goal(goal,feedback_cb)
clinet.wait_for_result()
result = clinet.get_result()
print(f"结果为{result}")
rospy.spin()