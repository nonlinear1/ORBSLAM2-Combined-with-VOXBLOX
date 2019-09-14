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

class Block {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_index = null;
      this.y_index = null;
      this.z_index = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('x_index')) {
        this.x_index = initObj.x_index
      }
      else {
        this.x_index = 0;
      }
      if (initObj.hasOwnProperty('y_index')) {
        this.y_index = initObj.y_index
      }
      else {
        this.y_index = 0;
      }
      if (initObj.hasOwnProperty('z_index')) {
        this.z_index = initObj.z_index
      }
      else {
        this.z_index = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Block
    // Serialize message field [x_index]
    bufferOffset = _serializer.int32(obj.x_index, buffer, bufferOffset);
    // Serialize message field [y_index]
    bufferOffset = _serializer.int32(obj.y_index, buffer, bufferOffset);
    // Serialize message field [z_index]
    bufferOffset = _serializer.int32(obj.z_index, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint32(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Block
    let len;
    let data = new Block(null);
    // Deserialize message field [x_index]
    data.x_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y_index]
    data.y_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [z_index]
    data.z_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.data.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'voxblox_msgs/Block';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bcc5caf92de597505633a546c641a94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Block indices -- as integers, actual position in space is function of
    # the voxel_size in the layer and voxels_per_side in the layer.
    int32 x_index
    int32 y_index
    int32 z_index
    
    # Voxel data packed in 4-byte chunks to better mirror protobuf serialization.
    uint32[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Block(null);
    if (msg.x_index !== undefined) {
      resolved.x_index = msg.x_index;
    }
    else {
      resolved.x_index = 0
    }

    if (msg.y_index !== undefined) {
      resolved.y_index = msg.y_index;
    }
    else {
      resolved.y_index = 0
    }

    if (msg.z_index !== undefined) {
      resolved.z_index = msg.z_index;
    }
    else {
      resolved.z_index = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = Block;
