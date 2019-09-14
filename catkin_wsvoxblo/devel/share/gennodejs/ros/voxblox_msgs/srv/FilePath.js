// Auto-generated. Do not edit!

// (in-package voxblox_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class FilePathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.file_path = null;
    }
    else {
      if (initObj.hasOwnProperty('file_path')) {
        this.file_path = initObj.file_path
      }
      else {
        this.file_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FilePathRequest
    // Serialize message field [file_path]
    bufferOffset = _serializer.string(obj.file_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FilePathRequest
    let len;
    let data = new FilePathRequest(null);
    // Deserialize message field [file_path]
    data.file_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.file_path.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'voxblox_msgs/FilePathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1f82596372c52a517e1fe32d1e998e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string file_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FilePathRequest(null);
    if (msg.file_path !== undefined) {
      resolved.file_path = msg.file_path;
    }
    else {
      resolved.file_path = ''
    }

    return resolved;
    }
};

class FilePathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FilePathResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FilePathResponse
    let len;
    let data = new FilePathResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'voxblox_msgs/FilePathResponse';
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
    const resolved = new FilePathResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: FilePathRequest,
  Response: FilePathResponse,
  md5sum() { return 'a1f82596372c52a517e1fe32d1e998e8'; },
  datatype() { return 'voxblox_msgs/FilePath'; }
};
