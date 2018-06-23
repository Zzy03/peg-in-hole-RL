#!/usr/bin/env python

import numpy as np
import tensorflow as tf
import os

if __name__ == '__main__':
    main()
np.random.seed(1)
tf.set_random_seed(1)


# Deep Q Network off-policy
class DeepQNetwork:
    def __init__(
            self,
            n_actions,
            n_features,
            learning_rate=0.1,
            reward_decay=0.9,
            e_greedy=1,
            replace_target_iter=30,
            memory_size=2000,
            batch_size=200,
            e_greedy_increment=0,
            n_l1=100,
            n_l2=40,
            output_graph=False,
    ):
        self.n_actions = n_actions
        self.n_features = n_features
        self.lr = learning_rate
        self.gamma = reward_decay
        self.epsilon_max = e_greedy
        self.replace_target_iter = replace_target_iter
        self.memory_size = memory_size
        self.batch_size = batch_size
        self.epsilon_increment = e_greedy_increment
        self.epsilon = 1 if e_greedy_increment is not None else self.epsilon_max
        self.n_l1 = n_l1
        self.n_l2 = n_l2

        # total learning step
        self.learn_step_counter = 0

        # initialize zero memory [s, a, r, s_]
        self.memory = np.zeros((self.memory_size, n_features * 2 + 2))

        # consist of [target_net, evaluate_net]
        self._build_net()

        t_params = tf.get_collection(tf.GraphKeys.GLOBAL_VARIABLES, scope='target_net')
        e_params = tf.get_collection(tf.GraphKeys.GLOBAL_VARIABLES, scope='eval_net')

        with tf.variable_scope('soft_replacement'):
            self.target_replace_op = [tf.assign(t, e) for t, e in zip(t_params, e_params)]

        self.sess = tf.Session()

        if output_graph:
            # $ tensorboard --logdir=logs
            tf.summary.FileWriter("logs/", self.sess.graph)
        if os.path.exists('save/2/checkpoint'):
            saver = tf.train.Saver()
            saver.restore(self.sess, 'save/2/wb.ckpt')
            print 111
        else:
            self.sess.run(tf.global_variables_initializer())
            print 222
        #self.sess.run(tf.global_variables_initializer())
        self.cost_his = []

    def _build_net(self):
        # ------------------ all inputs ------------------------
        self.s = tf.placeholder(tf.float32, [None, self.n_features], name='s')  # input State
        self.s_ = tf.placeholder(tf.float32, [None, self.n_features], name='s_')  # input Next State
        self.r = tf.placeholder(tf.float32, [None, ], name='r')  # input Reward
        self.a = tf.placeholder(tf.int32, [None, ], name='a')  # input Action
        w_initializer, b_initializer = tf.random_normal_initializer(0., 0.3), tf.constant_initializer(0.1)

        # ------------------ build evaluate_net ------------------
        with tf.variable_scope('eval_net'):
            e1 = tf.layers.dense(self.s, self.n_l1, tf.nn.relu, kernel_initializer=w_initializer,
                                 bias_initializer=b_initializer, name='e1')
            e2 = tf.layers.dense(e1, self.n_l2, tf.nn.relu, kernel_initializer=w_initializer,
                                 bias_initializer=b_initializer, name='e2')
            self.q_eval = tf.layers.dense(e2, self.n_actions, kernel_initializer=w_initializer,
                                          bias_initializer=b_initializer, name='q')
#             c_names = ['eval_net_params', tf.GraphKeys.GLOBAL_VARIABLES]
#             with tf.variable_scope('l1'):
#                 w1 = tf.get_variable('w1', [self.n_features, self.n_l1], initializer=w_initializer, collections=c_names)
#                 b1 = tf.get_variable('b1', [1, self.n_l1], initializer=b_initializer, collections=c_names)
#                 l1 = tf.nn.relu(tf.matmul(self.s, w1) + b1)
#             with tf.variable_scope('l2'):
#                 w2 = tf.get_variable('w2', [self.n_l1, self.n_l2], initializer=w_initializer, collections=c_names)
#                 b2 = tf.get_variable('b2', [1, self.n_l2], initializer=b_initializer, collections=c_names)
#                 l2 = tf.nn.relu(tf.matmul(l1, w2) + b2)
#             with tf.variable_scope('l3'):
#                 w3 = tf.get_variable('w3', [self.n_l2, self.n_actions], initializer=w_initializer, collections=c_names)
#                 b3 = tf.get_variable('b3', [1, self.n_actions], initializer=b_initializer, collections=c_names)
#                 self.q_eval = tf.matmul(l2, w3) + b3

        # ------------------ build target_net ------------------
        with tf.variable_scope('target_net'):
            t1 = tf.layers.dense(self.s_, self.n_l1, tf.nn.relu, kernel_initializer=w_initializer,
                                 bias_initializer=b_initializer, name='t1')
            t2 = tf.layers.dense(t1, self.n_l2, tf.nn.relu, kernel_initializer=w_initializer,
                                 bias_initializer=b_initializer,name='t2')
            self.q_next = tf.layers.dense(t2, self.n_actions, kernel_initializer=w_initializer,
                                          bias_initializer=b_initializer, name='t')
#             c_names = ['target_net_params', tf.GraphKeys.GLOBAL_VARIABLES]
#             with tf.variable_scope('l1'):
#                 w1 = tf.get_variable('w1', [self.n_features, self.n_l1], initializer=w_initializer, collections=c_names)
#                 b1 = tf.get_variable('b1', [1, self.n_l1], initializer=b_initializer, collections=c_names)
#                 l1 = tf.nn.relu(tf.matmul(self.s, w1) + b1)
#             with tf.variable_scope('l2'):
#                 w2 = tf.get_variable('w2', [self.n_l1, self.n_l2], initializer=w_initializer, collections=c_names)
#                 b2 = tf.get_variable('b2', [1, self.n_l2], initializer=b_initializer, collections=c_names)
#                 l2 = tf.nn.relu(tf.matmul(l1, w2) + b2)
#             with tf.variable_scope('l3'):
#                 w3 = tf.get_variable('w3', [self.n_l2, self.n_actions], initializer=w_initializer, collections=c_names)
#                 b3 = tf.get_variable('b3', [1, self.n_actions], initializer=b_initializer, collections=c_names)
#                 self.q_next = tf.matmul(l2, w3) + b3

        with tf.variable_scope('q_target'):
            q_target = self.r + self.gamma * tf.reduce_max(self.q_next, axis=1, name='Qmax_s_')    # shape=(None, )
            self.q_target = tf.stop_gradient(q_target)
        with tf.variable_scope('q_eval'):
            a_indices = tf.stack([tf.range(tf.shape(self.a)[0], dtype=tf.int32), self.a], axis=1)
            self.q_eval_wrt_a = tf.gather_nd(params=self.q_eval, indices=a_indices)    # shape=(None, )
        with tf.variable_scope('loss'):
            self.loss = tf.reduce_mean(tf.squared_difference(self.q_target, self.q_eval_wrt_a, name='TD_error'))
        with tf.variable_scope('train'):
            self._train_op = tf.train.RMSPropOptimizer(self.lr).minimize(self.loss)

    def store_transition(self, transition):
        if not hasattr(self, 'memory_counter'):
            self.memory_counter = 0
        # replace the old memory with new memory
        index = self.memory_counter % self.memory_size
        self.memory[index, :] = transition
        self.memory_counter += 1

    def choose_action(self, observation):
        # to have batch dimension when feed into tf placeholder
        observation = observation[np.newaxis, :]
        actions_value = self.sess.run(self.q_eval, feed_dict={self.s: observation})
        if np.random.uniform() < self.epsilon:
            # forward feed the observation and get q value for every actions
            #actions_value = self.sess.run(self.q_eval, feed_dict={self.s: observation})
            action = np.argmax(actions_value)
        else:
            action = np.random.randint(0, self.n_actions)
        return action, actions_value

    def learn(self):
        # sample batch memory from all memory
        if self.memory_counter > self.memory_size:
            sample_index = np.random.choice(self.memory_size, size=self.batch_size)
        else:
            sample_index = np.random.choice(self.memory_counter, size=self.batch_size)
        batch_memory = self.memory[sample_index, :]

        _, cost = self.sess.run(
            [self._train_op, self.loss],
            feed_dict={
                self.s: batch_memory[:, :self.n_features],
                self.a: batch_memory[:, self.n_features],
                self.r: batch_memory[:, self.n_features + 1],
                self.s_: batch_memory[:, -self.n_features:],
            })
        print 'learn done'
        self.cost_his.append(cost)

        # increasing epsilon
        self.epsilon = self.epsilon + self.epsilon_increment if self.epsilon < self.epsilon_max else self.epsilon_max
        self.learn_step_counter += 1

    def replace_params(self):
        self.sess.run(self.target_replace_op)
        print 'target_params_replaced'

    def save_wb(self):
        saver = tf.train.Saver()
        saver.save(self.sess, 'save/2/wb.ckpt')

    def plot_cost(self):
        import matplotlib.pyplot as plt
        plt.plot(np.arange(len(self.cost_his)), self.cost_his)
        plt.ylabel('Cost')
        plt.xlabel('training steps')
        plt.show()

    if __name__ == '__main__':
        DQN = DeepQNetwork(4, 24, output_graph=True)
