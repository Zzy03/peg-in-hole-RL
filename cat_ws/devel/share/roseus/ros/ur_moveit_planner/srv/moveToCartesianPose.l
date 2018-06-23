;; Auto-generated. Do not edit!


(when (boundp 'ur_moveit_planner::moveToCartesianPose)
  (if (not (find-package "UR_MOVEIT_PLANNER"))
    (make-package "UR_MOVEIT_PLANNER"))
  (shadow 'moveToCartesianPose (find-package "UR_MOVEIT_PLANNER")))
(unless (find-package "UR_MOVEIT_PLANNER::MOVETOCARTESIANPOSE")
  (make-package "UR_MOVEIT_PLANNER::MOVETOCARTESIANPOSE"))
(unless (find-package "UR_MOVEIT_PLANNER::MOVETOCARTESIANPOSEREQUEST")
  (make-package "UR_MOVEIT_PLANNER::MOVETOCARTESIANPOSEREQUEST"))
(unless (find-package "UR_MOVEIT_PLANNER::MOVETOCARTESIANPOSERESPONSE")
  (make-package "UR_MOVEIT_PLANNER::MOVETOCARTESIANPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass ur_moveit_planner::moveToCartesianPoseRequest
  :super ros::object
  :slots (_target_pose ))

(defmethod ur_moveit_planner::moveToCartesianPoseRequest
  (:init
   (&key
    ((:target_pose __target_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _target_pose __target_pose)
   self)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _target_pose
    (send _target_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _target_pose
       (send _target_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;;
   self)
  )

(defclass ur_moveit_planner::moveToCartesianPoseResponse
  :super ros::object
  :slots (_motionComplete ))

(defmethod ur_moveit_planner::moveToCartesianPoseResponse
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

(defclass ur_moveit_planner::moveToCartesianPose
  :super ros::object
  :slots ())

(setf (get ur_moveit_planner::moveToCartesianPose :md5sum-) "41d6dd698621218dee992cb3b7e0ea60")
(setf (get ur_moveit_planner::moveToCartesianPose :datatype-) "ur_moveit_planner/moveToCartesianPose")
(setf (get ur_moveit_planner::moveToCartesianPose :request) ur_moveit_planner::moveToCartesianPoseRequest)
(setf (get ur_moveit_planner::moveToCartesianPose :response) ur_moveit_planner::moveToCartesianPoseResponse)

(defmethod ur_moveit_planner::moveToCartesianPoseRequest
  (:response () (instance ur_moveit_planner::moveToCartesianPoseResponse :init)))

(setf (get ur_moveit_planner::moveToCartesianPoseRequest :md5sum-) "41d6dd698621218dee992cb3b7e0ea60")
(setf (get ur_moveit_planner::moveToCartesianPoseRequest :datatype-) "ur_moveit_planner/moveToCartesianPoseRequest")
(setf (get ur_moveit_planner::moveToCartesianPoseRequest :definition-)
      "
geometry_msgs/Pose target_pose

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

(setf (get ur_moveit_planner::moveToCartesianPoseResponse :md5sum-) "41d6dd698621218dee992cb3b7e0ea60")
(setf (get ur_moveit_planner::moveToCartesianPoseResponse :datatype-) "ur_moveit_planner/moveToCartesianPoseResponse")
(setf (get ur_moveit_planner::moveToCartesianPoseResponse :definition-)
      "
geometry_msgs/Pose target_pose

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



(provide :ur_moveit_planner/moveToCartesianPose "41d6dd698621218dee992cb3b7e0ea60")


