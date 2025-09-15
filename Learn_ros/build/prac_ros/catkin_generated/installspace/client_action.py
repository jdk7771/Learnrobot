#!/usr/bin/env python3
import rospy
import actionlib
from prac_ros.msg import timebackAction, timebackGoal

# 修复2：参数拼写错误（feeedback → feedback）
def feedback_cb(feedback):
    # 打印时格式化，避免显示0.2而是20.00%，更直观
    print(f"客户端收到反馈：当前进度={feedback.progress:.2%}")

rospy.init_node("clientaction_node")
# 修复3：变量拼写错误（clinet → client，虽不影响执行但规范）
client = actionlib.SimpleActionClient("gotop", timebackAction)

# 修复4：添加服务器等待（超时10秒），避免目标被拒绝
print("客户端：等待服务器启动...")
if not client.wait_for_server(rospy.Duration(10)):
    print("客户端：服务器连接超时！请先启动服务器")
    exit()  # 超时退出，避免无效执行
print("客户端：已连接到服务器，开始发送目标")

goal = timebackGoal()
goal.dish_count = 5
client.send_goal(goal, feedback_cb=feedback_cb)
print(f"客户端：已发送目标（dish_count={goal.dish_count}），等待结果...")

client.wait_for_result()
result = client.get_result()
# 格式化结果打印，明确显示success和result_message
print(f"\n客户端收到结果：")
print(f"  - 是否成功：{result.success}")
print(f"  - 结果消息：{result.result_message}")

rospy.spin()
