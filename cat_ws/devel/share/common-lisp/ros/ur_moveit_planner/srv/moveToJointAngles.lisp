; Auto-generated. Do not edit!


(cl:in-package ur_moveit_planner-srv)


;//! \htmlinclude moveToJointAngles-request.msg.html

(cl:defclass <moveToJointAngles-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass moveToJointAngles-request (<moveToJointAngles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moveToJointAngles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moveToJointAngles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_moveit_planner-srv:<moveToJointAngles-request> is deprecated: use ur_moveit_planner-srv:moveToJointAngles-request instead.")))

(cl:ensure-generic-function 'a1-val :lambda-list '(m))
(cl:defmethod a1-val ((m <moveToJointAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-srv:a1-val is deprecated.  Use ur_moveit_planner-srv:a1 instead.")
  (a1 m))

(cl:ensure-generic-function 'a2-val :lambda-list '(m))
(cl:defmethod a2-val ((m <moveToJointAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-srv:a2-val is deprecated.  Use ur_moveit_planner-srv:a2 instead.")
  (a2 m))

(cl:ensure-generic-function 'a3-val :lambda-list '(m))
(cl:defmethod a3-val ((m <moveToJointAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-srv:a3-val is deprecated.  Use ur_moveit_planner-srv:a3 instead.")
  (a3 m))

(cl:ensure-generic-function 'a4-val :lambda-list '(m))
(cl:defmethod a4-val ((m <moveToJointAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-srv:a4-val is deprecated.  Use ur_moveit_planner-srv:a4 instead.")
  (a4 m))

(cl:ensure-generic-function 'a5-val :lambda-list '(m))
(cl:defmethod a5-val ((m <moveToJointAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-srv:a5-val is deprecated.  Use ur_moveit_planner-srv:a5 instead.")
  (a5 m))

(cl:ensure-generic-function 'a6-val :lambda-list '(m))
(cl:defmethod a6-val ((m <moveToJointAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-srv:a6-val is deprecated.  Use ur_moveit_planner-srv:a6 instead.")
  (a6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moveToJointAngles-request>) ostream)
  "Serializes a message object of type '<moveToJointAngles-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moveToJointAngles-request>) istream)
  "Deserializes a message object of type '<moveToJointAngles-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moveToJointAngles-request>)))
  "Returns string type for a service object of type '<moveToJointAngles-request>"
  "ur_moveit_planner/moveToJointAnglesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveToJointAngles-request)))
  "Returns string type for a service object of type 'moveToJointAngles-request"
  "ur_moveit_planner/moveToJointAnglesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moveToJointAngles-request>)))
  "Returns md5sum for a message object of type '<moveToJointAngles-request>"
  "aa7ce802f4cb34d824a06bc1621a7d9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moveToJointAngles-request)))
  "Returns md5sum for a message object of type 'moveToJointAngles-request"
  "aa7ce802f4cb34d824a06bc1621a7d9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moveToJointAngles-request>)))
  "Returns full string definition for message of type '<moveToJointAngles-request>"
  (cl:format cl:nil "~%float32 a1~%float32 a2~%float32 a3~%float32 a4~%float32 a5~%float32 a6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moveToJointAngles-request)))
  "Returns full string definition for message of type 'moveToJointAngles-request"
  (cl:format cl:nil "~%float32 a1~%float32 a2~%float32 a3~%float32 a4~%float32 a5~%float32 a6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moveToJointAngles-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moveToJointAngles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'moveToJointAngles-request
    (cl:cons ':a1 (a1 msg))
    (cl:cons ':a2 (a2 msg))
    (cl:cons ':a3 (a3 msg))
    (cl:cons ':a4 (a4 msg))
    (cl:cons ':a5 (a5 msg))
    (cl:cons ':a6 (a6 msg))
))
;//! \htmlinclude moveToJointAngles-response.msg.html

(cl:defclass <moveToJointAngles-response> (roslisp-msg-protocol:ros-message)
  ((motionComplete
    :reader motionComplete
    :initarg :motionComplete
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass moveToJointAngles-response (<moveToJointAngles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moveToJointAngles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moveToJointAngles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_moveit_planner-srv:<moveToJointAngles-response> is deprecated: use ur_moveit_planner-srv:moveToJointAngles-response instead.")))

(cl:ensure-generic-function 'motionComplete-val :lambda-list '(m))
(cl:defmethod motionComplete-val ((m <moveToJointAngles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-srv:motionComplete-val is deprecated.  Use ur_moveit_planner-srv:motionComplete instead.")
  (motionComplete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moveToJointAngles-response>) ostream)
  "Serializes a message object of type '<moveToJointAngles-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motionComplete) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moveToJointAngles-response>) istream)
  "Deserializes a message object of type '<moveToJointAngles-response>"
    (cl:setf (cl:slot-value msg 'motionComplete) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moveToJointAngles-response>)))
  "Returns string type for a service object of type '<moveToJointAngles-response>"
  "ur_moveit_planner/moveToJointAnglesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveToJointAngles-response)))
  "Returns string type for a service object of type 'moveToJointAngles-response"
  "ur_moveit_planner/moveToJointAnglesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moveToJointAngles-response>)))
  "Returns md5sum for a message object of type '<moveToJointAngles-response>"
  "aa7ce802f4cb34d824a06bc1621a7d9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moveToJointAngles-response)))
  "Returns md5sum for a message object of type 'moveToJointAngles-response"
  "aa7ce802f4cb34d824a06bc1621a7d9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moveToJointAngles-response>)))
  "Returns full string definition for message of type '<moveToJointAngles-response>"
  (cl:format cl:nil "~%bool motionComplete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moveToJointAngles-response)))
  "Returns full string definition for message of type 'moveToJointAngles-response"
  (cl:format cl:nil "~%bool motionComplete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moveToJointAngles-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moveToJointAngles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'moveToJointAngles-response
    (cl:cons ':motionComplete (motionComplete msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'moveToJointAngles)))
  'moveToJointAngles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'moveToJointAngles)))
  'moveToJointAngles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveToJointAngles)))
  "Returns string type for a service object of type '<moveToJointAngles>"
  "ur_moveit_planner/moveToJointAngles")