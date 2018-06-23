#!/usr/bin/env python

import numpy as np
import move as robot


hole_depth = 10
hole_xy = np.array([0, 0.1 * 1e02])
e_area = 0.12e02#0.2e-01
k_max = 150
k_step = 0


class UR5:
    def __init__(self):
        self.action_space = ['u', 'd', 'l', 'r']
        self.n_action = len(self.action_space)
        self.n_features = 12
        self.init_xy = np.array(np.zeros([1, 2]))
        self.init_tor = np.array(np.zeros([1, 2]))
        self.last_tor = np.array(np.zeros([1, 2]))

    def reset(self):
        global k_step
        robot.move_second()
        robot.move_forward()
        xyz_rpy = robot.read_xyzrpy()
        for_toq = robot.ft_read()
        state = np.concatenate((xyz_rpy, for_toq))
        self.init_xy = np.array([xyz_rpy[0], xyz_rpy[2]])
        k_step = 0
        return state

    def step(self, action):
        global k_step
        done = False
        if action == 0:
            done = robot.move_up()
        elif action == 1:
            done = robot.move_down()
        elif action == 2:
            done = robot.move_left()
        elif action == 3:
            done = robot.move_right()

        if done:
            k_step += 1
            xyz_rpy = robot.read_xyzrpy()
            for_toq = robot.ft_read()
            state = np.concatenate((xyz_rpy, for_toq))
            r, down, success = self._r_func(state)

            return state, r, down, success
        else:
            step(self, action)

    def _r_func(self, state):
        global k_step, down
        success = False
        down = False
        init_distance = np.array(self.init_xy - hole_xy)
        init_distance = np.sqrt(np.sum(np.square(init_distance)))
        distance = np.array([state[0], state[2]]) - hole_xy
        distance = np.sqrt(np.sum(np.square(distance)))

        ft = state[6: 9]
        ft_size = np.sqrt(np.sum(np.square(ft)))
        tor = state[9: 12]
        tor_size = np.sqrt(np.sum(np.square(tor)))
        # judge episode terminal is come or not

        if k_step > k_max: #or tor_size > 200:#0.13e-01
            reward = 0
            down = True
        elif distance > e_area:
            reward = - (distance - init_distance)/(e_area - init_distance)
            down = True
        elif ft_size < 1:
            reward = 1 - k_step/k_max
            success = True
            down = True
        else:
            reward = 0
            down = False

        return reward, down, success

    def read_xz(self):
        xyzrpy = robot.read_xyzrpy()
        xz = np.array([xyzrpy[0], xyzrpy[2]])



