// Auto-generated. Do not edit!

// (in-package as_assignment.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class odomDataResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.allValues = null;
    }
    else {
      if (initObj.hasOwnProperty('allValues')) {
        this.allValues = initObj.allValues
      }
      else {
        this.allValues = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type odomDataResult
    // Serialize message field [allValues]
    bufferOffset = _arraySerializer.float32(obj.allValues, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type odomDataResult
    let len;
    let data = new odomDataResult(null);
    // Deserialize message field [allValues]
    data.allValues = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.allValues.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'as_assignment/odomDataResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fba7c61a9c778bd68f00b7397f54694c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #Result
    float32[] allValues
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new odomDataResult(null);
    if (msg.allValues !== undefined) {
      resolved.allValues = msg.allValues;
    }
    else {
      resolved.allValues = []
    }

    return resolved;
    }
};

module.exports = odomDataResult;
