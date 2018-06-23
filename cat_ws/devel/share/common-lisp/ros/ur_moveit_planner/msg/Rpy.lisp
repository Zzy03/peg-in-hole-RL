; Auto-generated. Do not edit!


(cl:in-package ur_moveit_planner-msg)


;//! \htmlinclude Rpy.msg.html

(cl:defclass <Rpy> (roslisp-msg-protocol:ros-message)
  ((u
    :reader u
    :initarg :u
    :type cl:float
    :initform 0.0)
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0))
)

(cl:defclass Rpy (<Rpy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rpy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rpy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_moveit_planner-msg:<Rpy> is deprecated: use ur_moveit_planner-msg:Rpy instead.")))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <Rpy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-msg:u-val is deprecated.  Use ur_moveit_planner-msg:u instead.")
  (u m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <Rpy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-msg:v-val is deprecated.  Use ur_moveit_planner-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <Rpy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-msg:w-val is deprecated.  Use ur_moveit_planner-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rpy>) ostream)
  "Serializes a message object of type '<Rpy>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rpy>) istream)
  "Deserializes a message object of type '<Rpy>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rpy>)))
  "Returns string type for a message object of type '<Rpy>"
  "ur_moveit_planner/Rpy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rpy)))
  "Returns string type for a message object of type 'Rpy"
  "ur_moveit_planner/Rpy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rpy>)))
  "Returns md5sum for a message object of type '<Rpy>"
  "3e053b7c204c5284962522efbf66bb32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rpy)))
  "Returns md5sum for a message object of type 'Rpy"
  "3e053b7c204c5284962522efbf66bb32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rpy>)))
  "Returns full string definition for message of type '<Rpy>"
  (cl:format cl:nil "float32 u~%float32 v~%float32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rpy)))
  "Returns full string definition for message of type 'Rpy"
  (cl:format cl:nil "float32 u~%float32 v~%float32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rpy>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rpy>))
  "Converts a ROS message object to a list"
  (cl:list 'Rpy
    (cl:cons ':u (u msg))
    (cl:cons ':v (v msg))
    (cl:cons ':w (w msg))
))
