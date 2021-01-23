// Auto-generated. Do not edit!

// (in-package custom_service_assignment.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ServiceMessageCustomRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceMessageCustomRequest
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceMessageCustomRequest
    let len;
    let data = new ServiceMessageCustomRequest(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_service_assignment/ServiceMessageCustomRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e77fb10f0c8b4833ec273aa9ac74459';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceMessageCustomRequest(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

class ServiceMessageCustomResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceMessageCustomResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _arraySerializer.char(obj.info, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceMessageCustomResponse
    let len;
    let data = new ServiceMessageCustomResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _arrayDeserializer.char(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.info.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_service_assignment/ServiceMessageCustomResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '978591831993dbbd56334a367ff288ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    char[] info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceMessageCustomResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ServiceMessageCustomRequest,
  Response: ServiceMessageCustomResponse,
  md5sum() { return 'c2eabfe6ce564bbb0d6ec06a2b02df2d'; },
  datatype() { return 'custom_service_assignment/ServiceMessageCustom'; }
};
