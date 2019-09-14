// Auto-generated. Do not edit!

// (in-package voxblox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Block = require('./Block.js');

//-----------------------------------------------------------

class Layer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voxel_size = null;
      this.voxels_per_side = null;
      this.layer_type = null;
      this.action = null;
      this.blocks = null;
    }
    else {
      if (initObj.hasOwnProperty('voxel_size')) {
        this.voxel_size = initObj.voxel_size
      }
      else {
        this.voxel_size = 0.0;
      }
      if (initObj.hasOwnProperty('voxels_per_side')) {
        this.voxels_per_side = initObj.voxels_per_side
      }
      else {
        this.voxels_per_side = 0;
      }
      if (initObj.hasOwnProperty('layer_type')) {
        this.layer_type = initObj.layer_type
      }
      else {
        this.layer_type = '';
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('blocks')) {
        this.blocks = initObj.blocks
      }
      else {
        this.blocks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Layer
    // Serialize message field [voxel_size]
    bufferOffset = _serializer.float64(obj.voxel_size, buffer, bufferOffset);
    // Serialize message field [voxels_per_side]
    bufferOffset = _serializer.uint32(obj.voxels_per_side, buffer, bufferOffset);
    // Serialize message field [layer_type]
    bufferOffset = _serializer.string(obj.layer_type, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    // Serialize message field [blocks]
    // Serialize the length for message field [blocks]
    bufferOffset = _serializer.uint32(obj.blocks.length, buffer, bufferOffset);
    obj.blocks.forEach((val) => {
      bufferOffset = Block.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Layer
    let len;
    let data = new Layer(null);
    // Deserialize message field [voxel_size]
    data.voxel_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [voxels_per_side]
    data.voxels_per_side = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [layer_type]
    data.layer_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [blocks]
    // Deserialize array length for message field [blocks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blocks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blocks[i] = Block.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.layer_type.length;
    object.blocks.forEach((val) => {
      length += Block.getMessageSize(val);
    });
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'voxblox_msgs/Layer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97e0cb7d60607d9bc02f977d9f620620';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Layer definitions
    float64 voxel_size
    uint32 voxels_per_side
    string layer_type  # See voxblox::voxel_types
    
    # Whether to send a full map or an incremental update.
    uint8 action   # See action defines below
    
    voxblox_msgs/Block[] blocks
    
    # Action definitions
    # Update all blocks that are part of this message to the new state,
    # leave the rest of the map as it was.
    uint8 ACTION_UPDATE = 0
    # Merge all blocks that are part of this message with the current state of
    # the map, leave the rest of the map as it was.
    uint8 ACTION_MERGE = 1
    # Set the layer to the state described by this message.
    uint8 ACTION_RESET = 2
    
    ================================================================================
    MSG: voxblox_msgs/Block
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
    const resolved = new Layer(null);
    if (msg.voxel_size !== undefined) {
      resolved.voxel_size = msg.voxel_size;
    }
    else {
      resolved.voxel_size = 0.0
    }

    if (msg.voxels_per_side !== undefined) {
      resolved.voxels_per_side = msg.voxels_per_side;
    }
    else {
      resolved.voxels_per_side = 0
    }

    if (msg.layer_type !== undefined) {
      resolved.layer_type = msg.layer_type;
    }
    else {
      resolved.layer_type = ''
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.blocks !== undefined) {
      resolved.blocks = new Array(msg.blocks.length);
      for (let i = 0; i < resolved.blocks.length; ++i) {
        resolved.blocks[i] = Block.Resolve(msg.blocks[i]);
      }
    }
    else {
      resolved.blocks = []
    }

    return resolved;
    }
};

// Constants for message
Layer.Constants = {
  ACTION_UPDATE: 0,
  ACTION_MERGE: 1,
  ACTION_RESET: 2,
}

module.exports = Layer;
