; Auto-generated. Do not edit!


(cl:in-package ur_moveit_planner-srv)


;//! \htmlinclude moveToCartesianPose-request.msg.html

(cl:defclass <moveToCartesianPose-request> (roslisp-msg-protocol:ros-message)
  ((target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass moveToCartesianPose-request (<moveToCartesianPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moveToCartesianPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moveToCartesianPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_moveit_planner-srv:<moveToCartesianPose-request> is deprecated: use ur_moveit_planner-srv:moveToCartesianPose-request instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <moveToCartesianPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-srv:target_pose-val is deprecated.  Use ur_moveit_planner-srv:target_pose instead.")
  (target_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moveToCartesianPose-request>) ostream)
  "Serializes a message object of type '<moveToCartesianPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moveToCartesianPose-request>) istream)
  "Deserializes a message object of type '<moveToCartesianPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moveToCartesianPose-request>)))
  "Returns string type for a service object of type '<moveToCartesianPose-request>"
  "ur_moveit_planner/moveToCartesianPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveToCartesianPose-request)))
  "Returns string type for a service object of type 'moveToCartesianPose-request"
  "ur_moveit_planner/moveToCartesianPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moveToCartesianPose-request>)))
  "Returns md5sum for a message object of type '<moveToCartesianPose-request>"
  "41d6dd698621218dee992cb3b7e0ea60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moveToCartesianPose-request)))
  "Returns md5sum for a message object of type 'moveToCartesianPose-request"
  "41d6dd698621218dee992cb3b7e0ea60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moveToCartesianPose-request>)))
  "Returns full string definition for message of type '<moveToCartesianPose-request>"
  (cl:format cl:nil "~%geometry_msgs/Pose target_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moveToCartesianPose-request)))
  "Returns full string definition for message of type 'moveToCartesianPose-request"
  (cl:format cl:nil "~%geometry_msgs/Pose target_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moveToCartesianPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moveToCartesianPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'moveToCartesianPose-request
    (cl:cons ':target_pose (target_pose msg))
))
;//! \htmlinclude moveToCartesianPose-response.msg.html

(cl:defclass <moveToCartesianPose-response> (roslisp-msg-protocol:ros-message)
  ((motionComplete
    :reader motionComplete
    :initarg :motionComplete
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass moveToCartesianPose-response (<moveToCartesianPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moveToCartesianPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moveToCartesianPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_moveit_planner-srv:<moveToCartesianPose-response> is deprecated: use ur_moveit_planner-srv:moveToCartesianPose-response instead.")))

(cl:ensure-generic-function 'motionComplete-val :lambda-list '(m))
(cl:defmethod motionComplete-val ((m <moveToCartesianPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-srv:motionComplete-val is deprecated.  Use ur_moveit_planner-srv:motionComplete instead.")
  (motionComplete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moveToCartesianPose-response>) ostream)
  "Serializes a message object of type '<moveToCartesianPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motionComplete) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moveToCartesianPose-response>) istream)
  "Deserializes a message object of type '<moveToCartesianPose-response>"
    (cl:setf (cl:slot-value msg 'motionComplete) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moveToCartesianPose-response>)))
  "Returns string type for a service object of type '<moveToCartesianPose-response>"
  "ur_moveit_planner/moveToCartesianPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveToCartesianPose-response)))
  "Returns string type for a service object of type 'moveToCartesianPose-response"
  "ur_moveit_planner/moveToCartesianPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moveToCartesianPose-response>)))
  "Returns md5sum for a message object of type '<moveToCartesianPose-response>"
  "41d6dd698621218dee992cb3b7e0ea60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moveToCartesianPose-response)))
  "Returns md5sum for a message object of type 'moveToCartesianPose-response"
  "41d6dd698621218dee992cb3b7e0ea60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moveToCartesianPose-response>)))
  "Returns full string definition for message of type '<moveToCartesianPose-response>"
  (cl:format cl:nil "~%bool motionComplete~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moveToCartesianPose-response)))
  "Returns full string definition for message of type 'moveToCartesianPose-response"
  (cl:format cl:nil "~%bool motionComplete~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moveToCartesianPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moveToCartesianPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'moveToCartesianPose-response
    (cl:cons ':motionComplete (motionComplete msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'moveToCartesianPose)))
  'moveToCartesianPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'moveToCartesianPose)))
  'moveToCartesianPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveToCartesianPose)))
  "Returns string type for a service object of type '<moveToCartesianPose>"
  "ur_moveit_planner/moveToCartesianPose")