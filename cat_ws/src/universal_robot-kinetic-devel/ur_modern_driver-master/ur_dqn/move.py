#!/usr/bin/env python
import time
import roslib
import rospy
import actionlib
import numpy as np
import matplotlib.pyplot as plt

from geometry_msgs.msg import WrenchStamped
from control_msgs.msg import *
from trajectory_msgs.msg import *
from sensor_msgs.msg import JointState
from math import pi
from ur_kin_py.kin import Kinematics

kin = Kinematics('ur5')  # or ur10

JOINT_NAMES = ['shoulder_pan_joint', 'shoulder_lift_joint', 'elbow_joint',
               'wrist_1_joint', 'wrist_2_joint', 'wrist_3_joint']
#归零状态
Q = [0, -1.5, 0, 0, 0, 0]
#初始位置
QQ = [1.39793490e+00, -8.88942791e-01, 8.49105951e-01, 3.98530081e-02, 1.39793228e+00, 1.47085210e-06]

#只绕Y轴转
Q2 = np.matrix([[0e-2,     1, 0e-2, 1],
                [    1, 0e-2, 0e-2, 1],
                [0e-2, 0e-2,     1, 1],
                [0, 0, 0, 1]])
client = None
run_time = 0.3
ft_e  = np.matrix(np.zeros([10, 6]))

def mat_xyzrpy():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        xyzrpy = np.array(np.zeros(6))
        xyzrpy[0] = joints_pos_kin[0, 3]
        xyzrpy[1] = joints_pos_kin[1, 3]
        xyzrpy[2] = joints_pos_kin[2, 3]
        xyzrpy[3] = np.arctan2(joints_pos_kin[1, 0], joints_pos_kin[0, 0])
        xyzrpy[4] = np.arctan2(-joints_pos_kin[2, 0],
                               np.cos(xyzrpy[3])*joints_pos_kin[0, 1]+np.sin(xyzrpy[3])*joints_pos_kin[1, 0])
        xyzrpy[5] = np.arctan2(np.sin(xyzrpy[3])*joints_pos_kin[0, 2]-np.cos(xyzrpy[3])*joints_pos_kin[1, 2],
                               -np.sin(xyzrpy[3])*joints_pos_kin[1, 0]+np.cos(xyzrpy[3])*joints_pos_kin[1, 1])
        return xyzrpy
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise


def first():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        Q1 = Q
        x = Q1[0]
        Q1[0] = Q1[2]
        Q1[2] = x
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        joints_pos_kin = np.multiply(joints_pos_kin, Q2)
        #print joints_pos_kin
        g.trajectory.points = [
            #JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=Q1, velocities=[0] * 6, time_from_start=rospy.Duration(1)),
            JointTrajectoryPoint(positions=QQ, velocities=[0] * 6, time_from_start=rospy.Duration(2))]
        client.send_goal(g)
        client.wait_for_result()
        return True
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise

def second():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        #Gazebo和UR_Modern_driver关节定义不一致
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        Q1 = Q
        x = Q1[0]
        Q1[0] = Q1[2]
        Q1[2] = x
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        joints_pos_kin = np.multiply(joints_pos_kin, Q2)
        #print joints_pos_kin
        g.trajectory.points = [
            #JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=QQ, velocities=[0] * 6, time_from_start=rospy.Duration(2))]
        client.send_goal(g)
        client.wait_for_result()
        return True
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise


def left():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        joints_pos_kin[1, 0] = 1
        joints_pos_kin[0, 1] = 1
        joints_pos_kin[2, 2] = -1
        left_move = np.multiply(joints_pos_kin, Q2)
        left_move = np.multiply(left_move, Q2)
        #left_move = np.matrix(joints_pos_kin)
        left_move += np.array([[0, 0, 0, -0.1e-02],
                               [0, 0, 0, -0.00000323],
                               [0, 0, 0, 0],
                               [0, 0, 0, 0]])
        left_move = kin.inverse(left_move)
        g.trajectory.points = [
            # JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=left_move, velocities=[0] * 6, time_from_start=rospy.Duration(run_time))]
        client.send_goal(g)
        client.wait_for_result()
        return True

    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise


def right():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        joints_pos_kin[1, 0] = 1
        joints_pos_kin[0, 1] = 1
        joints_pos_kin[2, 2] = -1
        right_move = np.multiply(joints_pos_kin, Q2)
        #right_move = kin.forward(joints_pos)
        right_move += np.array([[0, 0, 0, 0.1e-02],
                                [0, 0, 0, -0.00000323],
                                [0, 0, 0, 0],
                                [0, 0, 0, 0]])
        right_move = kin.inverse(right_move)
        g.trajectory.points = [
            #JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=right_move, velocities=[0] * 6, time_from_start=rospy.Duration(run_time))]
        client.send_goal(g)
        client.wait_for_result()
        return True
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise


def up():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        joints_pos_kin[1, 0] = 1
        joints_pos_kin[0, 1] = 1
        joints_pos_kin[2, 2] = -1
        up_move = np.multiply(joints_pos_kin, Q2)
        # up_move = np.matrix(joints_pos_kin)
        up_move += np.array([[0, 0, 0, 0],
                             [0, 0, 0, -0.00000323],
                             [0, 0, 0, 0.01e-01],
                             [0, 0, 0, 0]])
        up_move = np.array(up_move)
        up_move = kin.inverse(up_move)
        g.trajectory.points = [
            #JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=up_move, velocities=[0] * 6, time_from_start=rospy.Duration(run_time))]
        client.send_goal(g)
        client.wait_for_result()
        return True
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise


def down():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        joints_pos_kin[1, 0] = 1
        joints_pos_kin[0, 1] = 1
        joints_pos_kin[2, 2] = -1
        down_move = np.multiply(joints_pos_kin, Q2)
        #down_move = np.matrix(joints_pos_kin)
        down_move += np.array([[0, 0, 0, 0],
                               [0, 0, 0, -0.00000324],
                               [0, 0, 0, -0.01e-01],
                               [0, 0, 0, 0]])
        down_move = kin.inverse(down_move)
        g.trajectory.points = [
            #JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=down_move, velocities=[0] * 6, time_from_start=rospy.Duration(run_time))]
        client.send_goal(g)
        client.wait_for_result()
        return True
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise


def forward():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        joints_pos_kin[1, 0] = 1
        joints_pos_kin[0, 1] = 1
        joints_pos_kin[2, 2] = -1
        forward_move = np.multiply(joints_pos_kin, Q2)
        forward_move += np.array([[0, 0, 0, 0],
                                  [0, 0, 0, 0.0025e-01],#0.0025e-01
                                  [0, 0, 0, 0],
                                  [0, 0, 0, 0]])
        forward_move = kin.inverse(forward_move)
        g.trajectory.points = [
            #JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=forward_move, velocities=[0] * 6, time_from_start=rospy.Duration(run_time))]
        client.send_goal(g)
        client.wait_for_result()
        return True
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise

def forward1():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        joints_pos_kin[1, 0] = 1
        joints_pos_kin[0, 1] = 1
        joints_pos_kin[2, 2] = -1
        forward_move = np.multiply(joints_pos_kin, Q2)
        forward_move += np.array([[0, 0, 0, 0],
                                  [0, 0, 0, 0.1e-01],
                                  [0, 0, 0, 0],
                                  [0, 0, 0, 0]])
        forward_move = kin.inverse(forward_move)
        g.trajectory.points = [
            #JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=forward_move, velocities=[0] * 6, time_from_start=rospy.Duration(run_time))]
        client.send_goal(g)
        client.wait_for_result()
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise


def back():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        joints_pos_kin[1, 0] = 1
        joints_pos_kin[0, 1] = 1
        joints_pos_kin[2, 2] = -1
        back_move = np.multiply(joints_pos_kin, Q2)
        back_move += np.array([[0, 0, 0, 0],
                               [0, 0, 0, -0.0025e-01],
                               [0, 0, 0, 0],
                               [0, 0, 0, 0]])
        back_move = kin.inverse(back_move)
        g.trajectory.points = [
            #JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=back_move, velocities=[0] * 6, time_from_start=rospy.Duration(1.0))]
        client.send_goal(g)
        client.wait_for_result()
        return True
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise

def back1():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        joints_pos_kin[1, 0] = 1
        joints_pos_kin[0, 1] = 1
        joints_pos_kin[2, 2] = -1
        back_move = np.multiply(joints_pos_kin, Q2)
        back_move += np.array([[0, 0, 0, 0],
                               [0, 0, 0, -0.1e-01],
                               [0, 0, 0, 0],
                               [0, 0, 0, 0]])
        back_move = kin.inverse(back_move)
        g.trajectory.points = [
            #JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=back_move, velocities=[0] * 6, time_from_start=rospy.Duration(1.0))]
        client.send_goal(g)
        client.wait_for_result()
        return True
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise

def force_pid():
    global joints_pos, y
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        joints_pos_kin[1, 0] = 1
        joints_pos_kin[0, 1] = 1
        joints_pos_kin[2, 2] = -1
        force_con = np.multiply(joints_pos_kin, Q2)
        ft_states = rospy.wait_for_message("ft_sensor_topic", WrenchStamped)
        force = ft_states.wrench.force
        force_y = np.int(force.y)
        force_e = force_y + 60
        pos_y = 0.000005e-01*force_e
        force_con += np.array([[0, 0, 0, 0],
                               [0, 0, 0, pos_y],
                               [0, 0, 0, 0],
                               [0, 0, 0, 0]])
        print pos_y
        # if (force > "47") and (force < "52"):
        #     y = 1
        # elif force > "52":
        #     force_con += np.array([[0, 0, 0, 0],
        #                            [0, 0, 0, -0.001e-01],
        #                            [0, 0, 0, 0],
        #                            [0, 0, 0, 0]])
        #     y = 0
        # elif force < "47":
        #     force_con += np.array([[0, 0, 0, 0],
        #                            [0, 0, 0, 0.001e-01],
        #                            [0, 0, 0, 0],
        #                            [0, 0, 0, 0]])
        #     y = 0
        force_con = kin.inverse(force_con)
        g.trajectory.points = [
            JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=force_con, velocities=[0] * 6, time_from_start=rospy.Duration(1.0))]
        client.send_goal(g)
        client.wait_for_result()
        return force_e

    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise

def kin_for():
    global joints_pos
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = np.array(joint_states.position)
        print joints_pos
        shoulder_pan_joint = joints_pos[0]
        joints_pos[0] = joints_pos[2]
        joints_pos[2] = shoulder_pan_joint
        joints_pos_kin = kin.forward(joints_pos)
        joints_pos_kin = np.matrix(joints_pos_kin)
        # joints_pos_kin[1, 0] = 1
        # joints_pos_kin[0, 1] = 1
        # joints_pos_kin[2, 2] = -1
        # joints_pos_kin = np.multiply(joints_pos_kin,Q2)
        print joints_pos_kin
        ft_states = rospy.wait_for_message("ft_sensor_topic", WrenchStamped)
        force = ft_states.wrench.force
        torque = ft_states.wrench.torque
        print force, torque
        g.trajectory.points = [
            JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0))]
        client.send_goal(g)
        client.wait_for_result()
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise


def ft():
    try:
        ft_states = rospy.wait_for_message("ft_sensor_topic", WrenchStamped)
        ft_seq = ft_states.header.seq
        force = ft_states.wrench.force
        torque = ft_states.wrench.torque
        force_xyz = np.array([force.x, force.y, force.z])
        torque_xyz = np.array([torque.x, torque.y, torque.z])
        ft_set = np.concatenate((force_xyz, torque_xyz))
        # print ft_set
        return ft_set, ft_seq
    except:
        raise


def move_disordered():
    order = [4, 2, 3, 1, 5, 0]
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = [JOINT_NAMES[i] for i in order]
    q1 = [Q1[i] for i in order]
    q2 = [Q2[i] for i in order]
    q3 = [Q3[i] for i in order]
    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = joint_states.position
        g.trajectory.points = [
            JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=q1, velocities=[0] * 6, time_from_start=rospy.Duration(2.0)),
            JointTrajectoryPoint(positions=q2, velocities=[0] * 6, time_from_start=rospy.Duration(3.0)),
            JointTrajectoryPoint(positions=q3, velocities=[0] * 6, time_from_start=rospy.Duration(4.0))]
        client.send_goal(g)
        client.wait_for_result()
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise


def move_repeated():
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES
    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = joint_states.position
        d = 2.0
        g.trajectory.points = [
            JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0))]
        for i in range(10):
            g.trajectory.points.append(
                JointTrajectoryPoint(positions=Q1, velocities=[0] * 6, time_from_start=rospy.Duration(d)))
            d += 1
            g.trajectory.points.append(
                JointTrajectoryPoint(positions=Q2, velocities=[0] * 6, time_from_start=rospy.Duration(d)))
            d += 1
            g.trajectory.points.append(
                JointTrajectoryPoint(positions=Q3, velocities=[0] * 6, time_from_start=rospy.Duration(d)))
            d += 2
        client.send_goal(g)
        client.wait_for_result()
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise


def move_interrupt():
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES
    try:
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = joint_states.position
        g.trajectory.points = [
            JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=Q1, velocities=[0] * 6, time_from_start=rospy.Duration(2.0)),
            JointTrajectoryPoint(positions=Q2, velocities=[0] * 6, time_from_start=rospy.Duration(3.0)),
            JointTrajectoryPoint(positions=Q3, velocities=[0] * 6, time_from_start=rospy.Duration(4.0))]

        client.send_goal(g)
        time.sleep(3.0)
        print "Interrupting"
        joint_states = rospy.wait_for_message("joint_states", JointState)
        joints_pos = joint_states.position
        g.trajectory.points = [
            JointTrajectoryPoint(positions=joints_pos, velocities=[0] * 6, time_from_start=rospy.Duration(0.0)),
            JointTrajectoryPoint(positions=Q1, velocities=[0] * 6, time_from_start=rospy.Duration(2.0)),
            JointTrajectoryPoint(positions=Q2, velocities=[0] * 6, time_from_start=rospy.Duration(3.0)),
            JointTrajectoryPoint(positions=Q3, velocities=[0] * 6, time_from_start=rospy.Duration(4.0))]
        client.send_goal(g)
        client.wait_for_result()
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
    except:
        raise


def move_first():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        #print "Waiting for server..."
        client.wait_for_server()
        #print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name

        done = first()
        mat_xyzrpy()
        return done
    except:
        raise


def move_second():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        #print "Waiting for server..."
        client.wait_for_server()
        #print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name

        done = second()
        mat_xyzrpy()
        return done
    except:
        raise


def move_left():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        #print "Waiting for server..."
        client.wait_for_server()
        #print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name

        done = left()
        mat_xyzrpy()
        return done
        #move_force_con()
    except :
        raise


def move_right():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        #print "Waiting for server..."
        client.wait_for_server()
        #print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name

        done = right()
        mat_xyzrpy()
        #move_force_con()
        return done
    except :
        raise


def move_up():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        #print "Waiting for server..."
        client.wait_for_server()
        #print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name

        done = up()
        return done
    except :
        raise


def move_down():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        #print "Waiting for server..."
        client.wait_for_server()
        #print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name

        done = down()
        return done
    except :
        raise


def move_forward():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        #print "Waiting for server..."
        client.wait_for_server()
        #print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name

        done = forward()
        return done
    except :
        raise

def move_forward1():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        #print "Waiting for server..."
        client.wait_for_server()
        #print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name

        forward1()
    except :
        raise


def move_back():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        print "Waiting for server..."
        client.wait_for_server()
        print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name

            done = back()
            return done
    except :
        raise

def move_back1():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        print "Waiting for server..."
        client.wait_for_server()
        print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name

            done = back1()
            return done
    except :
        raise

def read_xyzrpy():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        #print "Waiting for server..."
        client.wait_for_server()
        #print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name
        xyz_rpy = mat_xyzrpy()
        xyz_rpy[0] = xyz_rpy[0] * 1e03
        xyz_rpy[1] = xyz_rpy[1] * 1e01
        xyz_rpy[2] = (xyz_rpy[2]-3.4e-01) * 1e03
        return xyz_rpy

    except :
        raise

def kin_forward():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        print "Waiting for server..."
        client.wait_for_server()
        print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name

        kin_for()
    except:
        raise


def ft_plot():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        print "Waiting for server..."
        client.wait_for_server()
        print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name
        ft_set = []
        ft_set_p = []
        ft_seq = []
        while(1):
                ft_once, ft_seq_once = ft()
                ft_seq = np.append(ft_seq, ft_seq_once)
                l = len(ft_seq[:])
                ft_set_p = np.append(ft_set_p, ft_once)
                if l % 50 == 0:
                    if l == 50:
                        a1 = np.matrix(ft_set_p)
                        a1 = a1.reshape([50, 6])
                        a1 = np.mean(a1, axis=0)
                    ft_set_p = np.matrix(ft_set_p)
                    ft_set_p = ft_set_p.reshape([50, 6])
                    ft_set_n = np.mean(ft_set_p, axis=0)
                    ft_set = np.append(ft_set, ft_set_n - a1)
                    ft_set_n = []
                    ft_set_p = []
                if l == 1500:
                    break
        ft_set = np.matrix(ft_set)
        ft_set = ft_set.reshape([30, 6])
        plt.plot(np.arange(30), ft_set[:, 5], "x-", label="torque_z")
        plt.plot(np.arange(30), ft_set[:, 3], "+-", label="torque_x")
        plt.ylim(-0.2, 0.2)
        plt.xlim(0, 30)
        plt.show()
        # print ft_seq.shape, ft_set.shape, ft_set[:, 5], ft_set[0, 2]
    except:
        raise

def ft_read():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        #print "Waiting for server..."
        client.wait_for_server()
        #print "Connected to server"
        parameters = rospy.get_param(None)
        index = str(parameters).find('prefix')
        if (index > 0):
            prefix = str(parameters)[index + len("prefix': '"):(
            index + len("prefix': '") + str(parameters)[index + len("prefix': '"):-1].find("'"))]
            for i, name in enumerate(JOINT_NAMES):
                JOINT_NAMES[i] = prefix + name
        # for i in np.arange(10):
        #     ft_once, ft_seq_once = ft()
        #     ft_e[i, :] = ft_once
        #
        # ft_ave = np.array(np.sum(ft_e, axis=0)/10)
        # ft_ave = ft_ave[0, :]
        ft_once, ft_seq_once = ft()
        ft_once[3] = (ft_once[3] + 0.97)*1000
        ft_once[4] = (ft_once[4] + 0.09)*100
        ft_once[5] = (ft_once[5] - 0.17)*1000
        return ft_once
    except:
        raise


if __name__ == '__main__':ft_read()
