// Auto-generated. Do not edit!

// (in-package myturtlebot.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TurtlebotStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.forwardrqst = null;
    }
    else {
      if (initObj.hasOwnProperty('forwardrqst')) {
        this.forwardrqst = initObj.forwardrqst
      }
      else {
        this.forwardrqst = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurtlebotStatusRequest
    // Serialize message field [forwardrqst]
    bufferOffset = _serializer.bool(obj.forwardrqst, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurtlebotStatusRequest
    let len;
    let data = new TurtlebotStatusRequest(null);
    // Deserialize message field [forwardrqst]
    data.forwardrqst = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'myturtlebot/TurtlebotStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f32fd0fb15c5c142bc743e3e76695229';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool forwardrqst
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurtlebotStatusRequest(null);
    if (msg.forwardrqst !== undefined) {
      resolved.forwardrqst = msg.forwardrqst;
    }
    else {
      resolved.forwardrqst = false
    }

    return resolved;
    }
};

class TurtlebotStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.range = null;
      this.forwardresp = null;
    }
    else {
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0.0;
      }
      if (initObj.hasOwnProperty('forwardresp')) {
        this.forwardresp = initObj.forwardresp
      }
      else {
        this.forwardresp = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurtlebotStatusResponse
    // Serialize message field [range]
    bufferOffset = _serializer.float32(obj.range, buffer, bufferOffset);
    // Serialize message field [forwardresp]
    bufferOffset = _serializer.bool(obj.forwardresp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurtlebotStatusResponse
    let len;
    let data = new TurtlebotStatusResponse(null);
    // Deserialize message field [range]
    data.range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [forwardresp]
    data.forwardresp = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'myturtlebot/TurtlebotStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e3cbeab986bc093e47464fdf39f6d34';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 range
    bool forwardresp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurtlebotStatusResponse(null);
    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0.0
    }

    if (msg.forwardresp !== undefined) {
      resolved.forwardresp = msg.forwardresp;
    }
    else {
      resolved.forwardresp = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TurtlebotStatusRequest,
  Response: TurtlebotStatusResponse,
  md5sum() { return '5402a31cf3717369ede1e7580132916f'; },
  datatype() { return 'myturtlebot/TurtlebotStatus'; }
};
