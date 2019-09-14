// Auto-generated. Do not edit!

// (in-package voxblox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Triangle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.r = null;
      this.g = null;
      this.b = null;
      this.a = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('g')) {
        this.g = initObj.g
      }
      else {
        this.g = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Triangle
    // Check that the constant length array field [x] has the right length
    if (obj.x.length !== 3) {
      throw new Error('Unable to serialize array field x - length must be 3')
    }
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float32(obj.x, buffer, bufferOffset, 3);
    // Check that the constant length array field [y] has the right length
    if (obj.y.length !== 3) {
      throw new Error('Unable to serialize array field y - length must be 3')
    }
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float32(obj.y, buffer, bufferOffset, 3);
    // Check that the constant length array field [z] has the right length
    if (obj.z.length !== 3) {
      throw new Error('Unable to serialize array field z - length must be 3')
    }
    // Serialize message field [z]
    bufferOffset = _arraySerializer.float32(obj.z, buffer, bufferOffset, 3);
    // Check that the constant length array field [r] has the right length
    if (obj.r.length !== 3) {
      throw new Error('Unable to serialize array field r - length must be 3')
    }
    // Serialize message field [r]
    bufferOffset = _arraySerializer.uint8(obj.r, buffer, bufferOffset, 3);
    // Check that the constant length array field [g] has the right length
    if (obj.g.length !== 3) {
      throw new Error('Unable to serialize array field g - length must be 3')
    }
    // Serialize message field [g]
    bufferOffset = _arraySerializer.uint8(obj.g, buffer, bufferOffset, 3);
    // Check that the constant length array field [b] has the right length
    if (obj.b.length !== 3) {
      throw new Error('Unable to serialize array field b - length must be 3')
    }
    // Serialize message field [b]
    bufferOffset = _arraySerializer.uint8(obj.b, buffer, bufferOffset, 3);
    // Check that the constant length array field [a] has the right length
    if (obj.a.length !== 3) {
      throw new Error('Unable to serialize array field a - length must be 3')
    }
    // Serialize message field [a]
    bufferOffset = _arraySerializer.uint8(obj.a, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Triangle
    let len;
    let data = new Triangle(null);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [z]
    data.z = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [r]
    data.r = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    // Deserialize message field [g]
    data.g = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    // Deserialize message field [b]
    data.b = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    // Deserialize message field [a]
    data.a = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'voxblox_msgs/Triangle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bdb82e942e7e4fd6074bfc244dfed93f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Triangle(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = new Array(3).fill(0)
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = new Array(3).fill(0)
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = new Array(3).fill(0)
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = new Array(3).fill(0)
    }

    if (msg.g !== undefined) {
      resolved.g = msg.g;
    }
    else {
      resolved.g = new Array(3).fill(0)
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = new Array(3).fill(0)
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = Triangle;
