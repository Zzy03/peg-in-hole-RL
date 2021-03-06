;; Auto-generated. Do not edit!


(when (boundp 'ur_moveit_planner::moveToJointAnglesAction)
  (if (not (find-package "UR_MOVEIT_PLANNER"))
    (make-package "UR_MOVEIT_PLANNER"))
  (shadow 'moveToJointAnglesAction (find-package "UR_MOVEIT_PLANNER")))
(unless (find-package "UR_MOVEIT_PLANNER::MOVETOJOINTANGLESACTION")
  (make-package "UR_MOVEIT_PLANNER::MOVETOJOINTANGLESACTION"))

(in-package "ROS")
;;//! \htmlinclude moveToJointAnglesAction.msg.html


(defclass ur_moveit_planner::moveToJointAnglesAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod ur_moveit_planner::moveToJointAnglesAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance ur_moveit_planner::moveToJointAnglesActionGoal :init))
    ((:action_result __action_result) (instance ur_moveit_planner::moveToJointAnglesActionResult :init))
    ((:action_feedback __action_feedback) (instance ur_moveit_planner::moveToJointAnglesActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; ur_moveit_planner/moveToJointAnglesActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; ur_moveit_planner/moveToJointAnglesActionResult _action_result
    (send _action_result :serialization-length)
    ;; ur_moveit_planner/moveToJointAnglesActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ur_moveit_planner/moveToJointAnglesActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; ur_moveit_planner/moveToJointAnglesActionResult _action_result
       (send _action_result :serialize s)
     ;; ur_moveit_planner/moveToJointAnglesActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ur_moveit_planner/moveToJointAnglesActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; ur_moveit_planner/moveToJointAnglesActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; ur_moveit_planner/moveToJointAnglesActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get ur_moveit_planner::moveToJointAnglesAction :md5sum-) "36f383ee5825194b316a02c47dec34d5")
(setf (get ur_moveit_planner::moveToJointAnglesAction :datatype-) "ur_moveit_planner/moveToJointAnglesAction")
(setf (get ur_moveit_planner::moveToJointAnglesAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

moveToJointAnglesActionGoal action_goal
moveToJointAnglesActionResult action_result
moveToJointAnglesActionFeedback action_feedback

================================================================================
MSG: ur_moveit_planner/moveToJointAnglesActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
moveToJointAnglesGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: ur_moveit_planner/moveToJointAnglesGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#inputs
float32 a1
float32 a2
float32 a3
float32 a4
float32 a5
float32 a6

================================================================================
MSG: ur_moveit_planner/moveToJointAnglesActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
moveToJointAnglesResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: ur_moveit_planner/moveToJointAnglesResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#outputs
bool motionComplete

================================================================================
MSG: ur_moveit_planner/moveToJointAnglesActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
moveToJointAnglesFeedback feedback

================================================================================
MSG: ur_moveit_planner/moveToJointAnglesFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback message
bool motionComplete

")



(provide :ur_moveit_planner/moveToJointAnglesAction "36f383ee5825194b316a02c47dec34d5")


