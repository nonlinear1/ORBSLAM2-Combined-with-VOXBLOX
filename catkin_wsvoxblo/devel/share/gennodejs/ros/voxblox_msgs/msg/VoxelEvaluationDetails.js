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

class VoxelEvaluationDetails {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.max_error = null;
      this.min_error = null;
      this.num_evaluated_voxels = null;
      this.num_ignored_voxels = null;
      this.num_overlapping_voxels = null;
      this.num_non_overlapping_voxels = null;
    }
    else {
      if (initObj.hasOwnProperty('max_error')) {
        this.max_error = initObj.max_error
      }
      else {
        this.max_error = 0.0;
      }
      if (initObj.hasOwnProperty('min_error')) {
        this.min_error = initObj.min_error
      }
      else {
        this.min_error = 0.0;
      }
      if (initObj.hasOwnProperty('num_evaluated_voxels')) {
        this.num_evaluated_voxels = initObj.num_evaluated_voxels
      }
      else {
        this.num_evaluated_voxels = 0;
      }
      if (initObj.hasOwnProperty('num_ignored_voxels')) {
        this.num_ignored_voxels = initObj.num_ignored_voxels
      }
      else {
        this.num_ignored_voxels = 0;
      }
      if (initObj.hasOwnProperty('num_overlapping_voxels')) {
        this.num_overlapping_voxels = initObj.num_overlapping_voxels
      }
      else {
        this.num_overlapping_voxels = 0;
      }
      if (initObj.hasOwnProperty('num_non_overlapping_voxels')) {
        this.num_non_overlapping_voxels = initObj.num_non_overlapping_voxels
      }
      else {
        this.num_non_overlapping_voxels = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VoxelEvaluationDetails
    // Serialize message field [max_error]
    bufferOffset = _serializer.float64(obj.max_error, buffer, bufferOffset);
    // Serialize message field [min_error]
    bufferOffset = _serializer.float64(obj.min_error, buffer, bufferOffset);
    // Serialize message field [num_evaluated_voxels]
    bufferOffset = _serializer.uint32(obj.num_evaluated_voxels, buffer, bufferOffset);
    // Serialize message field [num_ignored_voxels]
    bufferOffset = _serializer.uint32(obj.num_ignored_voxels, buffer, bufferOffset);
    // Serialize message field [num_overlapping_voxels]
    bufferOffset = _serializer.uint32(obj.num_overlapping_voxels, buffer, bufferOffset);
    // Serialize message field [num_non_overlapping_voxels]
    bufferOffset = _serializer.uint32(obj.num_non_overlapping_voxels, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VoxelEvaluationDetails
    let len;
    let data = new VoxelEvaluationDetails(null);
    // Deserialize message field [max_error]
    data.max_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_error]
    data.min_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [num_evaluated_voxels]
    data.num_evaluated_voxels = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num_ignored_voxels]
    data.num_ignored_voxels = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num_overlapping_voxels]
    data.num_overlapping_voxels = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num_non_overlapping_voxels]
    data.num_non_overlapping_voxels = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'voxblox_msgs/VoxelEvaluationDetails';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae63ff7a8fed6761c7b2408516d56b79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 max_error
    float64 min_error
    uint32 num_evaluated_voxels
    uint32 num_ignored_voxels
    uint32 num_overlapping_voxels
    uint32 num_non_overlapping_voxels
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VoxelEvaluationDetails(null);
    if (msg.max_error !== undefined) {
      resolved.max_error = msg.max_error;
    }
    else {
      resolved.max_error = 0.0
    }

    if (msg.min_error !== undefined) {
      resolved.min_error = msg.min_error;
    }
    else {
      resolved.min_error = 0.0
    }

    if (msg.num_evaluated_voxels !== undefined) {
      resolved.num_evaluated_voxels = msg.num_evaluated_voxels;
    }
    else {
      resolved.num_evaluated_voxels = 0
    }

    if (msg.num_ignored_voxels !== undefined) {
      resolved.num_ignored_voxels = msg.num_ignored_voxels;
    }
    else {
      resolved.num_ignored_voxels = 0
    }

    if (msg.num_overlapping_voxels !== undefined) {
      resolved.num_overlapping_voxels = msg.num_overlapping_voxels;
    }
    else {
      resolved.num_overlapping_voxels = 0
    }

    if (msg.num_non_overlapping_voxels !== undefined) {
      resolved.num_non_overlapping_voxels = msg.num_non_overlapping_voxels;
    }
    else {
      resolved.num_non_overlapping_voxels = 0
    }

    return resolved;
    }
};

module.exports = VoxelEvaluationDetails;
