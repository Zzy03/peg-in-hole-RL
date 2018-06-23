#!/usr/bin/env python
from RL_brain2 import DeepQNetwork
from UR5_env2 import UR5
import time
import numpy as np
import matplotlib.pyplot as plt
import move as robot


def run():

    last_step = 0
    success = 0
    episode_number = 250
    rr_episode = np.zeros(episode_number)
    step_episode = np.zeros(episode_number)
    memory = np.zeros([1, 26])
    propagation = 0.95
    robot.move_first()
    for episode in range(episode_number):
        if episode > 20 and episode % 3 == 0:
            RL.replace_params()
        # initial observation
        if episode == 200:
            RL.save_wb()
        print 'episode =', episode
        observation = env.reset()
        while observation[7] > -5:
            observation = env.reset()
        # robot.move_left()
        # robot.move_up()
        r_episode = 0
        step = 0
        while True:
            # RL choose action based on observation
            action, action_value = RL.choose_action(observation)

            # RL take action and get next observation and reward
            observation_, reward, done, suc = env.step(action)
            r_episode += reward
            transition = np.hstack((observation, [action, reward], observation_))

            if step == 0:
                memory = np.matrix(transition)
            else:
                memory = np.matrix(np.vstack((memory, transition)))

            # break while loop when end of this episode
            if done:
                memory_shape = np.shape(memory)
                if memory_shape[0] == 1:
                    RL.store_transition(memory)
                else:
                    for i in range(memory_shape[0]):
                        memory[i, 13] = memory[memory_shape[0]-1, 13] * propagation ** (memory_shape[0]-1 - i)
                        RL.store_transition(memory[i, :])

                if suc:
                    success += 1
                    robot.move_forward1()
                    time.sleep(1)
                    robot.move_back1()

                rr_episode[episode] = r_episode
                step_episode[episode] = step - last_step
                last_step = step
                if episode > 20 and episode % 1 == 0:
                    RL.learn()
                print 'r_episode =', r_episode
                print 'step =', step
                print 'success =', success
                break
            # swap observation
            observation = observation_
            step += 1
    # end of game
    print('game over')
    plt.plot(np.arange(episode_number), rr_episode, '.')
    plt.ylabel('reward')
    plt.xlabel('training episode')
    plt.show()
    plt.plot(np.arange(episode_number), step_episode, '.')
    plt.ylabel('step')
    plt.xlabel('training episode')
    plt.show()



if __name__ == "__main__":
    # maze game
    env = UR5()
    RL = DeepQNetwork(4, 12,
                      learning_rate=0.00001,
                      reward_decay=0.5,
                      e_greedy=1,
                      replace_target_iter=3,
                      memory_size=4000,
                      output_graph=False,
                      train=True
                      )
    run()
    RL.plot_cost()
