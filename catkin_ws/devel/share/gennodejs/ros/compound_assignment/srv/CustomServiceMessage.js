// Auto-generated. Do not edit!

// (in-package compound_assignment.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CustomServiceMessageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shape = null;
      this.side = null;
    }
    else {
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('side')) {
        this.side = initObj.side
      }
      else {
        this.side = new std_msgs.msg.Int32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomServiceMessageRequest
    // Serialize message field [shape]
    bufferOffset = std_msgs.msg.String.serialize(obj.shape, buffer, bufferOffset);
    // Serialize message field [side]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.side, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomServiceMessageRequest
    let len;
    let data = new CustomServiceMessageRequest(null);
    // Deserialize message field [shape]
    data.shape = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [side]
    data.side = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.shape);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'compound_assignment/CustomServiceMessageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e886955a85915c1c08925340140db219';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String shape
    std_msgs/Int32 side
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomServiceMessageRequest(null);
    if (msg.shape !== undefined) {
      resolved.shape = std_msgs.msg.String.Resolve(msg.shape)
    }
    else {
      resolved.shape = new std_msgs.msg.String()
    }

    if (msg.side !== undefined) {
      resolved.side = std_msgs.msg.Int32.Resolve(msg.side)
    }
    else {
      resolved.side = new std_msgs.msg.Int32()
    }

    return resolved;
    }
};

class CustomServiceMessageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomServiceMessageResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomServiceMessageResponse
    let len;
    let data = new CustomServiceMessageResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'compound_assignment/CustomServiceMessageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomServiceMessageResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: CustomServiceMessageRequest,
  Response: CustomServiceMessageResponse,
  md5sum() { return 'e886955a85915c1c08925340140db219'; },
  datatype() { return 'compound_assignment/CustomServiceMessage'; }
};
