; Auto-generated. Do not edit!


(cl:in-package ur_moveit_planner-srv)


;//! \htmlinclude currentPose-request.msg.html

(cl:defclass <currentPose-request> (roslisp-msg-protocol:ros-message)
  ((poseStamped
    :reader poseStamped
    :initarg :poseStamped
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass currentPose-request (<currentPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <currentPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'currentPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_moveit_planner-srv:<currentPose-request> is deprecated: use ur_moveit_planner-srv:currentPose-request instead.")))

(cl:ensure-generic-function 'poseStamped-val :lambda-list '(m))
(cl:defmethod poseStamped-val ((m <currentPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-srv:poseStamped-val is deprecated.  Use ur_moveit_planner-srv:poseStamped instead.")
  (poseStamped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <currentPose-request>) ostream)
  "Serializes a message object of type '<currentPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poseStamped) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <currentPose-request>) istream)
  "Deserializes a message object of type '<currentPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poseStamped) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<currentPose-request>)))
  "Returns string type for a service object of type '<currentPose-request>"
  "ur_moveit_planner/currentPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'currentPose-request)))
  "Returns string type for a service object of type 'currentPose-request"
  "ur_moveit_planner/currentPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<currentPose-request>)))
  "Returns md5sum for a message object of type '<currentPose-request>"
  "6c87b4584c2caa9989c95fc8615bf690")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'currentPose-request)))
  "Returns md5sum for a message object of type 'currentPose-request"
  "6c87b4584c2caa9989c95fc8615bf690")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<currentPose-request>)))
  "Returns full string definition for message of type '<currentPose-request>"
  (cl:format cl:nil "~%geometry_msgs/PoseStamped poseStamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'currentPose-request)))
  "Returns full string definition for message of type 'currentPose-request"
  (cl:format cl:nil "~%geometry_msgs/PoseStamped poseStamped~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <currentPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poseStamped))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <currentPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'currentPose-request
    (cl:cons ':poseStamped (poseStamped msg))
))
;//! \htmlinclude currentPose-response.msg.html

(cl:defclass <currentPose-response> (roslisp-msg-protocol:ros-message)
  ((motionComplete
    :reader motionComplete
    :initarg :motionComplete
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass currentPose-response (<currentPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <currentPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'currentPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_moveit_planner-srv:<currentPose-response> is deprecated: use ur_moveit_planner-srv:currentPose-response instead.")))

(cl:ensure-generic-function 'motionComplete-val :lambda-list '(m))
(cl:defmethod motionComplete-val ((m <currentPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-srv:motionComplete-val is deprecated.  Use ur_moveit_planner-srv:motionComplete instead.")
  (motionComplete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <currentPose-response>) ostream)
  "Serializes a message object of type '<currentPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motionComplete) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <currentPose-response>) istream)
  "Deserializes a message object of type '<currentPose-response>"
    (cl:setf (cl:slot-value msg 'motionComplete) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<currentPose-response>)))
  "Returns string type for a service object of type '<currentPose-response>"
  "ur_moveit_planner/currentPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'currentPose-response)))
  "Returns string type for a service object of type 'currentPose-response"
  "ur_moveit_planner/currentPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<currentPose-response>)))
  "Returns md5sum for a message object of type '<currentPose-response>"
  "6c87b4584c2caa9989c95fc8615bf690")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'currentPose-response)))
  "Returns md5sum for a message object of type 'currentPose-response"
  "6c87b4584c2caa9989c95fc8615bf690")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<currentPose-response>)))
  "Returns full string definition for message of type '<currentPose-response>"
  (cl:format cl:nil "~%bool motionComplete~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'currentPose-response)))
  "Returns full string definition for message of type 'currentPose-response"
  (cl:format cl:nil "~%bool motionComplete~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <currentPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <currentPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'currentPose-response
    (cl:cons ':motionComplete (motionComplete msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'currentPose)))
  'currentPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'currentPose)))
  'currentPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'currentPose)))
  "Returns string type for a service object of type '<currentPose>"
  "ur_moveit_planner/currentPose")