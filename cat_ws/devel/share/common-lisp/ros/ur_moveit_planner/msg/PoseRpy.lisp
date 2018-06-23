; Auto-generated. Do not edit!


(cl:in-package ur_moveit_planner-msg)


;//! \htmlinclude PoseRpy.msg.html

(cl:defclass <PoseRpy> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rpy
    :reader rpy
    :initarg :rpy
    :type ur_moveit_planner-msg:Rpy
    :initform (cl:make-instance 'ur_moveit_planner-msg:Rpy)))
)

(cl:defclass PoseRpy (<PoseRpy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseRpy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseRpy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_moveit_planner-msg:<PoseRpy> is deprecated: use ur_moveit_planner-msg:PoseRpy instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PoseRpy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-msg:position-val is deprecated.  Use ur_moveit_planner-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <PoseRpy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_moveit_planner-msg:rpy-val is deprecated.  Use ur_moveit_planner-msg:rpy instead.")
  (rpy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseRpy>) ostream)
  "Serializes a message object of type '<PoseRpy>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseRpy>) istream)
  "Deserializes a message object of type '<PoseRpy>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseRpy>)))
  "Returns string type for a message object of type '<PoseRpy>"
  "ur_moveit_planner/PoseRpy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseRpy)))
  "Returns string type for a message object of type 'PoseRpy"
  "ur_moveit_planner/PoseRpy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseRpy>)))
  "Returns md5sum for a message object of type '<PoseRpy>"
  "7aa3f36ed992497294967f8ec01b34c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseRpy)))
  "Returns md5sum for a message object of type 'PoseRpy"
  "7aa3f36ed992497294967f8ec01b34c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseRpy>)))
  "Returns full string definition for message of type '<PoseRpy>"
  (cl:format cl:nil "geometry_msgs/Point position~%Rpy rpy~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ur_moveit_planner/Rpy~%float32 u~%float32 v~%float32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseRpy)))
  "Returns full string definition for message of type 'PoseRpy"
  (cl:format cl:nil "geometry_msgs/Point position~%Rpy rpy~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: ur_moveit_planner/Rpy~%float32 u~%float32 v~%float32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseRpy>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseRpy>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseRpy
    (cl:cons ':position (position msg))
    (cl:cons ':rpy (rpy msg))
))
