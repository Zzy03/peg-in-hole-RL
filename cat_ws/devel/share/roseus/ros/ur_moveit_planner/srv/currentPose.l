;; Auto-generated. Do not edit!


(when (boundp 'ur_moveit_planner::currentPose)
  (if (not (find-package "UR_MOVEIT_PLANNER"))
    (make-package "UR_MOVEIT_PLANNER"))
  (shadow 'currentPose (find-package "UR_MOVEIT_PLANNER")))
(unless (find-package "UR_MOVEIT_PLANNER::CURRENTPOSE")
  (make-package "UR_MOVEIT_PLANNER::CURRENTPOSE"))
(unless (find-package "UR_MOVEIT_PLANNER::CURRENTPOSEREQUEST")
  (make-package "UR_MOVEIT_PLANNER::CURRENTPOSEREQUEST"))
(unless (find-package "UR_MOVEIT_PLANNER::CURRENTPOSERESPONSE")
  (make-package "UR_MOVEIT_PLANNER::CURRENTPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass ur_moveit_planner::currentPoseRequest
  :super ros::object
  :slots (_poseStamped ))

(defmethod ur_moveit_planner::currentPoseRequest
  (:init
   (&key
    ((:poseStamped __poseStamped) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _poseStamped __poseStamped)
   self)
  (:poseStamped
   (&rest __poseStamped)
   (if (keywordp (car __poseStamped))
       (send* _poseStamped __poseStamped)
     (progn
       (if __poseStamped (setq _poseStamped (car __poseStamped)))
       _poseStamped)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _poseStamped
    (send _poseStamped :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _poseStamped
       (send _poseStamped :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _poseStamped
     (send _poseStamped :deserialize buf ptr-) (incf ptr- (send _poseStamped :serialization-length))
   ;;
   self)
  )

(defclass ur_moveit_planner::currentPoseResponse
  :super ros::object
  :slots (_motionComplete ))

(defmethod ur_moveit_planner::currentPoseResponse
  (:init
   (&key
    ((:motionComplete __motionComplete) nil)
    )
   (send-super :init)
   (setq _motionComplete __motionComplete)
   self)
  (:motionComplete
   (&optional __motionComplete)
   (if __motionComplete (setq _motionComplete __motionComplete)) _motionComplete)
  (:serialization-length
   ()
   (+
    ;; bool _motionComplete
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _motionComplete
       (if _motionComplete (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _motionComplete
     (setq _motionComplete (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_moveit_planner::currentPose
  :super ros::object
  :slots ())

(setf (get ur_moveit_planner::currentPose :md5sum-) "6c87b4584c2caa9989c95fc8615bf690")
(setf (get ur_moveit_planner::currentPose :datatype-) "ur_moveit_planner/currentPose")
(setf (get ur_moveit_planner::currentPose :request) ur_moveit_planner::currentPoseRequest)
(setf (get ur_moveit_planner::currentPose :response) ur_moveit_planner::currentPoseResponse)

(defmethod ur_moveit_planner::currentPoseRequest
  (:response () (instance ur_moveit_planner::currentPoseResponse :init)))

(setf (get ur_moveit_planner::currentPoseRequest :md5sum-) "6c87b4584c2caa9989c95fc8615bf690")
(setf (get ur_moveit_planner::currentPoseRequest :datatype-) "ur_moveit_planner/currentPoseRequest")
(setf (get ur_moveit_planner::currentPoseRequest :definition-)
      "
geometry_msgs/PoseStamped poseStamped

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

bool motionComplete


")

(setf (get ur_moveit_planner::currentPoseResponse :md5sum-) "6c87b4584c2caa9989c95fc8615bf690")
(setf (get ur_moveit_planner::currentPoseResponse :datatype-) "ur_moveit_planner/currentPoseResponse")
(setf (get ur_moveit_planner::currentPoseResponse :definition-)
      "
geometry_msgs/PoseStamped poseStamped

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

bool motionComplete


")



(provide :ur_moveit_planner/currentPose "6c87b4584c2caa9989c95fc8615bf690")


