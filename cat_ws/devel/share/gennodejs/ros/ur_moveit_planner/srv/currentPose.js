// Auto-generated. Do not edit!

// (in-package ur_moveit_planner.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class currentPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.poseStamped = null;
    }
    else {
      if (initObj.hasOwnProperty('poseStamped')) {
        this.poseStamped = initObj.poseStamped
      }
      else {
        this.poseStamped = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type currentPoseRequest
    // Serialize message field [poseStamped]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.poseStamped, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type currentPoseRequest
    let len;
    let data = new currentPoseRequest(null);
    // Deserialize message field [poseStamped]
    data.poseStamped = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.poseStamped);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_moveit_planner/currentPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3be598ae0f55b8e305fdca0008cf449e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/PoseStamped poseStamped
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new currentPoseRequest(null);
    if (msg.poseStamped !== undefined) {
      resolved.poseStamped = geometry_msgs.msg.PoseStamped.Resolve(msg.poseStamped)
    }
    else {
      resolved.poseStamped = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

class currentPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motionComplete = null;
    }
    else {
      if (initObj.hasOwnProperty('motionComplete')) {
        this.motionComplete = initObj.motionComplete
      }
      else {
        this.motionComplete = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type currentPoseResponse
    // Serialize message field [motionComplete]
    bufferOffset = _serializer.bool(obj.motionComplete, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type currentPoseResponse
    let len;
    let data = new currentPoseResponse(null);
    // Deserialize message field [motionComplete]
    data.motionComplete = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_moveit_planner/currentPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f739e08659d6e65dcea7b75b197c1e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool motionComplete
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new currentPoseResponse(null);
    if (msg.motionComplete !== undefined) {
      resolved.motionComplete = msg.motionComplete;
    }
    else {
      resolved.motionComplete = false
    }

    return resolved;
    }
};

module.exports = {
  Request: currentPoseRequest,
  Response: currentPoseResponse,
  md5sum() { return '6c87b4584c2caa9989c95fc8615bf690'; },
  datatype() { return 'ur_moveit_planner/currentPose'; }
};
