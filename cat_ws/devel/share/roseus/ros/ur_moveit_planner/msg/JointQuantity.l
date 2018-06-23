;; Auto-generated. Do not edit!


(when (boundp 'ur_moveit_planner::JointQuantity)
  (if (not (find-package "UR_MOVEIT_PLANNER"))
    (make-package "UR_MOVEIT_PLANNER"))
  (shadow 'JointQuantity (find-package "UR_MOVEIT_PLANNER")))
(unless (find-package "UR_MOVEIT_PLANNER::JOINTQUANTITY")
  (make-package "UR_MOVEIT_PLANNER::JOINTQUANTITY"))

(in-package "ROS")
;;//! \htmlinclude JointQuantity.msg.html


(defclass ur_moveit_planner::JointQuantity
  :super ros::object
  :slots (_a1 _a2 _a3 _a4 _a5 _a6 ))

(defmethod ur_moveit_planner::JointQuantity
  (:init
   (&key
    ((:a1 __a1) 0.0)
    ((:a2 __a2) 0.0)
    ((:a3 __a3) 0.0)
    ((:a4 __a4) 0.0)
    ((:a5 __a5) 0.0)
    ((:a6 __a6) 0.0)
    )
   (send-super :init)
   (setq _a1 (float __a1))
   (setq _a2 (float __a2))
   (setq _a3 (float __a3))
   (setq _a4 (float __a4))
   (setq _a5 (float __a5))
   (setq _a6 (float __a6))
   self)
  (:a1
   (&optional __a1)
   (if __a1 (setq _a1 __a1)) _a1)
  (:a2
   (&optional __a2)
   (if __a2 (setq _a2 __a2)) _a2)
  (:a3
   (&optional __a3)
   (if __a3 (setq _a3 __a3)) _a3)
  (:a4
   (&optional __a4)
   (if __a4 (setq _a4 __a4)) _a4)
  (:a5
   (&optional __a5)
   (if __a5 (setq _a5 __a5)) _a5)
  (:a6
   (&optional __a6)
   (if __a6 (setq _a6 __a6)) _a6)
  (:serialization-length
   ()
   (+
    ;; float32 _a1
    4
    ;; float32 _a2
    4
    ;; float32 _a3
    4
    ;; float32 _a4
    4
    ;; float32 _a5
    4
    ;; float32 _a6
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a1
       (sys::poke _a1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a2
       (sys::poke _a2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a3
       (sys::poke _a3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a4
       (sys::poke _a4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a5
       (sys::poke _a5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a6
       (sys::poke _a6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a1
     (setq _a1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a2
     (setq _a2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a3
     (setq _a3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a4
     (setq _a4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a5
     (setq _a5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a6
     (setq _a6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ur_moveit_planner::JointQuantity :md5sum-) "ba493cf9a78377f9d5f83ae607fbf843")
(setf (get ur_moveit_planner::JointQuantity :datatype-) "ur_moveit_planner/JointQuantity")
(setf (get ur_moveit_planner::JointQuantity :definition-)
      "float32 a1
float32 a2
float32 a3
float32 a4
float32 a5
float32 a6

")



(provide :ur_moveit_planner/JointQuantity "ba493cf9a78377f9d5f83ae607fbf843")


