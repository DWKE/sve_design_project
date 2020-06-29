// Auto-generated. Do not edit!

// (in-package kusv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class kusv_GlobalPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Latitude = null;
      this.Longitude = null;
      this.Heading = null;
      this.GPSQuality = null;
      this.LatStd = null;
      this.LonStd = null;
      this.HeadingStd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Latitude')) {
        this.Latitude = initObj.Latitude
      }
      else {
        this.Latitude = 0.0;
      }
      if (initObj.hasOwnProperty('Longitude')) {
        this.Longitude = initObj.Longitude
      }
      else {
        this.Longitude = 0.0;
      }
      if (initObj.hasOwnProperty('Heading')) {
        this.Heading = initObj.Heading
      }
      else {
        this.Heading = 0.0;
      }
      if (initObj.hasOwnProperty('GPSQuality')) {
        this.GPSQuality = initObj.GPSQuality
      }
      else {
        this.GPSQuality = 0;
      }
      if (initObj.hasOwnProperty('LatStd')) {
        this.LatStd = initObj.LatStd
      }
      else {
        this.LatStd = 0;
      }
      if (initObj.hasOwnProperty('LonStd')) {
        this.LonStd = initObj.LonStd
      }
      else {
        this.LonStd = 0;
      }
      if (initObj.hasOwnProperty('HeadingStd')) {
        this.HeadingStd = initObj.HeadingStd
      }
      else {
        this.HeadingStd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kusv_GlobalPose
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Latitude]
    bufferOffset = _serializer.float64(obj.Latitude, buffer, bufferOffset);
    // Serialize message field [Longitude]
    bufferOffset = _serializer.float64(obj.Longitude, buffer, bufferOffset);
    // Serialize message field [Heading]
    bufferOffset = _serializer.float32(obj.Heading, buffer, bufferOffset);
    // Serialize message field [GPSQuality]
    bufferOffset = _serializer.uint16(obj.GPSQuality, buffer, bufferOffset);
    // Serialize message field [LatStd]
    bufferOffset = _serializer.uint16(obj.LatStd, buffer, bufferOffset);
    // Serialize message field [LonStd]
    bufferOffset = _serializer.uint16(obj.LonStd, buffer, bufferOffset);
    // Serialize message field [HeadingStd]
    bufferOffset = _serializer.uint16(obj.HeadingStd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kusv_GlobalPose
    let len;
    let data = new kusv_GlobalPose(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Latitude]
    data.Latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Longitude]
    data.Longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Heading]
    data.Heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GPSQuality]
    data.GPSQuality = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LatStd]
    data.LatStd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LonStd]
    data.LonStd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [HeadingStd]
    data.HeadingStd = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kusv_msgs/kusv_GlobalPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57b9e4be8f27b18208f562fe0b5d18e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 Latitude
    float64 Longitude
    float32 Heading
    uint16 GPSQuality
    uint16 LatStd
    uint16 LonStd
    uint16 HeadingStd
    
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
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kusv_GlobalPose(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Latitude !== undefined) {
      resolved.Latitude = msg.Latitude;
    }
    else {
      resolved.Latitude = 0.0
    }

    if (msg.Longitude !== undefined) {
      resolved.Longitude = msg.Longitude;
    }
    else {
      resolved.Longitude = 0.0
    }

    if (msg.Heading !== undefined) {
      resolved.Heading = msg.Heading;
    }
    else {
      resolved.Heading = 0.0
    }

    if (msg.GPSQuality !== undefined) {
      resolved.GPSQuality = msg.GPSQuality;
    }
    else {
      resolved.GPSQuality = 0
    }

    if (msg.LatStd !== undefined) {
      resolved.LatStd = msg.LatStd;
    }
    else {
      resolved.LatStd = 0
    }

    if (msg.LonStd !== undefined) {
      resolved.LonStd = msg.LonStd;
    }
    else {
      resolved.LonStd = 0
    }

    if (msg.HeadingStd !== undefined) {
      resolved.HeadingStd = msg.HeadingStd;
    }
    else {
      resolved.HeadingStd = 0
    }

    return resolved;
    }
};

module.exports = kusv_GlobalPose;
