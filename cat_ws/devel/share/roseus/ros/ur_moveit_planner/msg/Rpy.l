;; Auto-generated. Do not edit!


(when (boundp 'ur_moveit_planner::Rpy)
  (if (not (find-package "UR_MOVEIT_PLANNER"))
    (make-package "UR_MOVEIT_PLANNER"))
  (shadow 'Rpy (find-package "UR_MOVEIT_PLANNER")))
(unless (find-package "UR_MOVEIT_PLANNER::RPY")
  (make-package "UR_MOVEIT_PLANNER::RPY"))

(in-package "ROS")
;;//! \htmlinclude Rpy.msg.html


(defclass ur_moveit_planner::Rpy
  :super ros::object
  :slots (_u _v _w ))

(defmethod ur_moveit_planner::Rpy
  (:init
   (&key
    ((:u __u) 0.0)
    ((:v __v) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _u (float __u))
   (setq _v (float __v))
   (setq _w (float __w))
   self)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; float32 _u
    4
    ;; float32 _v
    4
    ;; float32 _w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _u
       (sys::poke _u (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _u
     (setq _u (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ur_moveit_planner::Rpy :md5sum-) "3e053b7c204c5284962522efbf66bb32")
(setf (get ur_moveit_planner::Rpy :datatype-) "ur_moveit_planner/Rpy")
(setf (get ur_moveit_planner::Rpy :definition-)
      "float32 u
float32 v
float32 w

")



(provide :ur_moveit_planner/Rpy "3e053b7c204c5284962522efbf66bb32")


