// Auto-generated. Do not edit!

// (in-package kusv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PolyfitLaneData = require('./PolyfitLaneData.js');

//-----------------------------------------------------------

class PolyfitLaneDataArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.frame_id = null;
      this.polyfitLanes = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('polyfitLanes')) {
        this.polyfitLanes = initObj.polyfitLanes
      }
      else {
        this.polyfitLanes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PolyfitLaneDataArray
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [polyfitLanes]
    // Serialize the length for message field [polyfitLanes]
    bufferOffset = _serializer.uint32(obj.polyfitLanes.length, buffer, bufferOffset);
    obj.polyfitLanes.forEach((val) => {
      bufferOffset = PolyfitLaneData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PolyfitLaneDataArray
    let len;
    let data = new PolyfitLaneDataArray(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [polyfitLanes]
    // Deserialize array length for message field [polyfitLanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polyfitLanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polyfitLanes[i] = PolyfitLaneData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.frame_id.length;
    object.polyfitLanes.forEach((val) => {
      length += PolyfitLaneData.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kusv_msgs/PolyfitLaneDataArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '734f84f42af2bae65f1795f454b54519';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    string frame_id
    PolyfitLaneData[] polyfitLanes
    
    ================================================================================
    MSG: kusv_msgs/PolyfitLaneData
    string id
    string frame_id
    float64 a
    float64 b
    float64 c
    float64 d
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PolyfitLaneDataArray(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.polyfitLanes !== undefined) {
      resolved.polyfitLanes = new Array(msg.polyfitLanes.length);
      for (let i = 0; i < resolved.polyfitLanes.length; ++i) {
        resolved.polyfitLanes[i] = PolyfitLaneData.Resolve(msg.polyfitLanes[i]);
      }
    }
    else {
      resolved.polyfitLanes = []
    }

    return resolved;
    }
};

module.exports = PolyfitLaneDataArray;
