;; Auto-generated. Do not edit!


(when (boundp 'ur_moveit_planner::PoseRpy)
  (if (not (find-package "UR_MOVEIT_PLANNER"))
    (make-package "UR_MOVEIT_PLANNER"))
  (shadow 'PoseRpy (find-package "UR_MOVEIT_PLANNER")))
(unless (find-package "UR_MOVEIT_PLANNER::POSERPY")
  (make-package "UR_MOVEIT_PLANNER::POSERPY"))

(in-package "ROS")
;;//! \htmlinclude PoseRpy.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ur_moveit_planner::PoseRpy
  :super ros::object
  :slots (_position _rpy ))

(defmethod ur_moveit_planner::PoseRpy
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:rpy __rpy) (instance ur_moveit_planner::Rpy :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _rpy __rpy)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; ur_moveit_planner/Rpy _rpy
    (send _rpy :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; ur_moveit_planner/Rpy _rpy
       (send _rpy :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; ur_moveit_planner/Rpy _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;;
   self)
  )

(setf (get ur_moveit_planner::PoseRpy :md5sum-) "7aa3f36ed992497294967f8ec01b34c1")
(setf (get ur_moveit_planner::PoseRpy :datatype-) "ur_moveit_planner/PoseRpy")
(setf (get ur_moveit_planner::PoseRpy :definition-)
      "geometry_msgs/Point position
Rpy rpy


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: ur_moveit_planner/Rpy
float32 u
float32 v
float32 w

")



(provide :ur_moveit_planner/PoseRpy "7aa3f36ed992497294967f8ec01b34c1")


