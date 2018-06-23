; Auto-generated. Do not edit!


(cl:in-package ur_moveit_planner-msg)


;//! \htmlinclude JointQuantity.msg.html

(cl:defclass <JointQuantity> (roslisp-msg-protocol:ros-message)
  ((a1
    :reader a1
    :initarg :a1
    :type cl:float
    :initform 0.0)
   (a2
    :reader a2
    :initarg :a2
    :type cl:float
    :initform 0.0)
   (a3
    :reader a3
    :initarg :a3
    :type cl:float
    :initform 0.0)
   (a4
    :reader a4
    :initarg :a4
    :type cl:float
    :initform 0.0)
   (a5
    :reader a5
    :initarg :a5
    :type cl:float
    :initform 0.0)
   (a6
    :reader a6
    :initarg :a6
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointQuantity (<JointQuantity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointQuantity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointQuantity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_moveit_planner-msg:<JointQuantity> is deprecated: use ur_moveit_planner-msg:JointQuantity instead.")))

(cl:ensure-generic-function 'a1-val :lambda-list '(m))
(cl:defmethod a1-val ((m <JointQuantity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-msg:a1-val is deprecated.  Use ur_moveit_planner-msg:a1 instead.")
  (a1 m))

(cl:ensure-generic-function 'a2-val :lambda-list '(m))
(cl:defmethod a2-val ((m <JointQuantity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-msg:a2-val is deprecated.  Use ur_moveit_planner-msg:a2 instead.")
  (a2 m))

(cl:ensure-generic-function 'a3-val :lambda-list '(m))
(cl:defmethod a3-val ((m <JointQuantity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-msg:a3-val is deprecated.  Use ur_moveit_planner-msg:a3 instead.")
  (a3 m))

(cl:ensure-generic-function 'a4-val :lambda-list '(m))
(cl:defmethod a4-val ((m <JointQuantity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-msg:a4-val is deprecated.  Use ur_moveit_planner-msg:a4 instead.")
  (a4 m))

(cl:ensure-generic-function 'a5-val :lambda-list '(m))
(cl:defmethod a5-val ((m <JointQuantity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-msg:a5-val is deprecated.  Use ur_moveit_planner-msg:a5 instead.")
  (a5 m))

(cl:ensure-generic-function 'a6-val :lambda-list '(m))
(cl:defmethod a6-val ((m <JointQuantity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-msg:a6-val is deprecated.  Use ur_moveit_planner-msg:a6 instead.")
  (a6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointQuantity>) ostream)
  "Serializes a message object of type '<JointQuantity>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointQuantity>) istream)
  "Deserializes a message object of type '<JointQuantity>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a6) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointQuantity>)))
  "Returns string type for a message object of type '<JointQuantity>"
  "ur_moveit_planner/JointQuantity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointQuantity)))
  "Returns string type for a message object of type 'JointQuantity"
  "ur_moveit_planner/JointQuantity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointQuantity>)))
  "Returns md5sum for a message object of type '<JointQuantity>"
  "ba493cf9a78377f9d5f83ae607fbf843")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointQuantity)))
  "Returns md5sum for a message object of type 'JointQuantity"
  "ba493cf9a78377f9d5f83ae607fbf843")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointQuantity>)))
  "Returns full string definition for message of type '<JointQuantity>"
  (cl:format cl:nil "float32 a1~%float32 a2~%float32 a3~%float32 a4~%float32 a5~%float32 a6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointQuantity)))
  "Returns full string definition for message of type 'JointQuantity"
  (cl:format cl:nil "float32 a1~%float32 a2~%float32 a3~%float32 a4~%float32 a5~%float32 a6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointQuantity>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointQuantity>))
  "Converts a ROS message object to a list"
  (cl:list 'JointQuantity
    (cl:cons ':a1 (a1 msg))
    (cl:cons ':a2 (a2 msg))
    (cl:cons ':a3 (a3 msg))
    (cl:cons ':a4 (a4 msg))
    (cl:cons ':a5 (a5 msg))
    (cl:cons ':a6 (a6 msg))
))
