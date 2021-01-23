// Auto-generated. Do not edit!

// (in-package session_one.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CustomServiceMessageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomServiceMessageRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomServiceMessageRequest
    let len;
    let data = new CustomServiceMessageRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'session_one/CustomServiceMessageRequest';
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
    const resolved = new CustomServiceMessageRequest(null);
    return resolved;
    }
};

class CustomServiceMessageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distanceIndices = null;
    }
    else {
      if (initObj.hasOwnProperty('distanceIndices')) {
        this.distanceIndices = initObj.distanceIndices
      }
      else {
        this.distanceIndices = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomServiceMessageResponse
    // Serialize message field [distanceIndices]
    bufferOffset = _arraySerializer.int32(obj.distanceIndices, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomServiceMessageResponse
    let len;
    let data = new CustomServiceMessageResponse(null);
    // Deserialize message field [distanceIndices]
    data.distanceIndices = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.distanceIndices.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'session_one/CustomServiceMessageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '614144eb549744facbf2977736dcf7b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] distanceIndices
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomServiceMessageResponse(null);
    if (msg.distanceIndices !== undefined) {
      resolved.distanceIndices = msg.distanceIndices;
    }
    else {
      resolved.distanceIndices = []
    }

    return resolved;
    }
};

module.exports = {
  Request: CustomServiceMessageRequest,
  Response: CustomServiceMessageResponse,
  md5sum() { return '614144eb549744facbf2977736dcf7b9'; },
  datatype() { return 'session_one/CustomServiceMessage'; }
};
