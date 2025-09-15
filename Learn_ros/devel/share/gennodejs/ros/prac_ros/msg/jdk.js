// Auto-generated. Do not edit!

// (in-package prac_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class jdk {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.answer = null;
      this.jiangdakun = null;
    }
    else {
      if (initObj.hasOwnProperty('answer')) {
        this.answer = initObj.answer
      }
      else {
        this.answer = 0.0;
      }
      if (initObj.hasOwnProperty('jiangdakun')) {
        this.jiangdakun = initObj.jiangdakun
      }
      else {
        this.jiangdakun = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jdk
    // Serialize message field [answer]
    bufferOffset = _serializer.float32(obj.answer, buffer, bufferOffset);
    // Serialize message field [jiangdakun]
    bufferOffset = _serializer.string(obj.jiangdakun, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jdk
    let len;
    let data = new jdk(null);
    // Deserialize message field [answer]
    data.answer = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [jiangdakun]
    data.jiangdakun = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.jiangdakun);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'prac_ros/jdk';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dcf325aad560bddf55f9bd3131b03903';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 answer
    string jiangdakun
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new jdk(null);
    if (msg.answer !== undefined) {
      resolved.answer = msg.answer;
    }
    else {
      resolved.answer = 0.0
    }

    if (msg.jiangdakun !== undefined) {
      resolved.jiangdakun = msg.jiangdakun;
    }
    else {
      resolved.jiangdakun = ''
    }

    return resolved;
    }
};

module.exports = jdk;
