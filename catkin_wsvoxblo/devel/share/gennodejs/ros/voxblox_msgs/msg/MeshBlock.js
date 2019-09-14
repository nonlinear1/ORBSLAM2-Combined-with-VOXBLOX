// Auto-generated. Do not edit!

// (in-package voxblox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Triangle = require('./Triangle.js');

//-----------------------------------------------------------

class MeshBlock {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.triangles = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('triangles')) {
        this.triangles = initObj.triangles
      }
      else {
        this.triangles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MeshBlock
    // Check that the constant length array field [index] has the right length
    if (obj.index.length !== 3) {
      throw new Error('Unable to serialize array field index - length must be 3')
    }
    // Serialize message field [index]
    bufferOffset = _arraySerializer.int64(obj.index, buffer, bufferOffset, 3);
    // Serialize message field [triangles]
    // Serialize the length for message field [triangles]
    bufferOffset = _serializer.uint32(obj.triangles.length, buffer, bufferOffset);
    obj.triangles.forEach((val) => {
      bufferOffset = Triangle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MeshBlock
    let len;
    let data = new MeshBlock(null);
    // Deserialize message field [index]
    data.index = _arrayDeserializer.int64(buffer, bufferOffset, 3)
    // Deserialize message field [triangles]
    // Deserialize array length for message field [triangles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.triangles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.triangles[i] = Triangle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 48 * object.triangles.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'voxblox_msgs/MeshBlock';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d5a456d47efe5b8b0afaf3286c9b421';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Index of meshed points in block map
    int64[3] index
    
    voxblox_msgs/Triangle[] triangles
    
    ================================================================================
    MSG: voxblox_msgs/Triangle
    # Colored triangle used in meshing
    
    # Position
    float32[3] x
    float32[3] y
    float32[3] z
    
    # Color
    uint8[3] r
    uint8[3] g
    uint8[3] b
    uint8[3] a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MeshBlock(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = new Array(3).fill(0)
    }

    if (msg.triangles !== undefined) {
      resolved.triangles = new Array(msg.triangles.length);
      for (let i = 0; i < resolved.triangles.length; ++i) {
        resolved.triangles[i] = Triangle.Resolve(msg.triangles[i]);
      }
    }
    else {
      resolved.triangles = []
    }

    return resolved;
    }
};

module.exports = MeshBlock;
