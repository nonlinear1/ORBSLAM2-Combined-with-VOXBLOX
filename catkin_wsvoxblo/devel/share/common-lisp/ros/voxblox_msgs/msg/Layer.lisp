; Auto-generated. Do not edit!


(cl:in-package voxblox_msgs-msg)


;//! \htmlinclude Layer.msg.html

(cl:defclass <Layer> (roslisp-msg-protocol:ros-message)
  ((voxel_size
    :reader voxel_size
    :initarg :voxel_size
    :type cl:float
    :initform 0.0)
   (voxels_per_side
    :reader voxels_per_side
    :initarg :voxels_per_side
    :type cl:integer
    :initform 0)
   (layer_type
    :reader layer_type
    :initarg :layer_type
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (blocks
    :reader blocks
    :initarg :blocks
    :type (cl:vector voxblox_msgs-msg:Block)
   :initform (cl:make-array 0 :element-type 'voxblox_msgs-msg:Block :initial-element (cl:make-instance 'voxblox_msgs-msg:Block))))
)

(cl:defclass Layer (<Layer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Layer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Layer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name voxblox_msgs-msg:<Layer> is deprecated: use voxblox_msgs-msg:Layer instead.")))

(cl:ensure-generic-function 'voxel_size-val :lambda-list '(m))
(cl:defmethod voxel_size-val ((m <Layer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:voxel_size-val is deprecated.  Use voxblox_msgs-msg:voxel_size instead.")
  (voxel_size m))

(cl:ensure-generic-function 'voxels_per_side-val :lambda-list '(m))
(cl:defmethod voxels_per_side-val ((m <Layer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:voxels_per_side-val is deprecated.  Use voxblox_msgs-msg:voxels_per_side instead.")
  (voxels_per_side m))

(cl:ensure-generic-function 'layer_type-val :lambda-list '(m))
(cl:defmethod layer_type-val ((m <Layer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:layer_type-val is deprecated.  Use voxblox_msgs-msg:layer_type instead.")
  (layer_type m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <Layer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:action-val is deprecated.  Use voxblox_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'blocks-val :lambda-list '(m))
(cl:defmethod blocks-val ((m <Layer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:blocks-val is deprecated.  Use voxblox_msgs-msg:blocks instead.")
  (blocks m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Layer>)))
    "Constants for message type '<Layer>"
  '((:ACTION_UPDATE . 0)
    (:ACTION_MERGE . 1)
    (:ACTION_RESET . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Layer)))
    "Constants for message type 'Layer"
  '((:ACTION_UPDATE . 0)
    (:ACTION_MERGE . 1)
    (:ACTION_RESET . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Layer>) ostream)
  "Serializes a message object of type '<Layer>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'voxel_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voxels_per_side)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voxels_per_side)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'voxels_per_side)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'voxels_per_side)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'layer_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'layer_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blocks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blocks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Layer>) istream)
  "Deserializes a message object of type '<Layer>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voxel_size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voxels_per_side)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voxels_per_side)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'voxels_per_side)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'voxels_per_side)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'layer_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'layer_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blocks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blocks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'voxblox_msgs-msg:Block))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Layer>)))
  "Returns string type for a message object of type '<Layer>"
  "voxblox_msgs/Layer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Layer)))
  "Returns string type for a message object of type 'Layer"
  "voxblox_msgs/Layer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Layer>)))
  "Returns md5sum for a message object of type '<Layer>"
  "97e0cb7d60607d9bc02f977d9f620620")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Layer)))
  "Returns md5sum for a message object of type 'Layer"
  "97e0cb7d60607d9bc02f977d9f620620")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Layer>)))
  "Returns full string definition for message of type '<Layer>"
  (cl:format cl:nil "# Layer definitions~%float64 voxel_size~%uint32 voxels_per_side~%string layer_type  # See voxblox::voxel_types~%~%# Whether to send a full map or an incremental update.~%uint8 action   # See action defines below~%~%voxblox_msgs/Block[] blocks~%~%# Action definitions~%# Update all blocks that are part of this message to the new state,~%# leave the rest of the map as it was.~%uint8 ACTION_UPDATE = 0~%# Merge all blocks that are part of this message with the current state of~%# the map, leave the rest of the map as it was.~%uint8 ACTION_MERGE = 1~%# Set the layer to the state described by this message.~%uint8 ACTION_RESET = 2~%~%================================================================================~%MSG: voxblox_msgs/Block~%# Block indices -- as integers, actual position in space is function of~%# the voxel_size in the layer and voxels_per_side in the layer.~%int32 x_index~%int32 y_index~%int32 z_index~%~%# Voxel data packed in 4-byte chunks to better mirror protobuf serialization.~%uint32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Layer)))
  "Returns full string definition for message of type 'Layer"
  (cl:format cl:nil "# Layer definitions~%float64 voxel_size~%uint32 voxels_per_side~%string layer_type  # See voxblox::voxel_types~%~%# Whether to send a full map or an incremental update.~%uint8 action   # See action defines below~%~%voxblox_msgs/Block[] blocks~%~%# Action definitions~%# Update all blocks that are part of this message to the new state,~%# leave the rest of the map as it was.~%uint8 ACTION_UPDATE = 0~%# Merge all blocks that are part of this message with the current state of~%# the map, leave the rest of the map as it was.~%uint8 ACTION_MERGE = 1~%# Set the layer to the state described by this message.~%uint8 ACTION_RESET = 2~%~%================================================================================~%MSG: voxblox_msgs/Block~%# Block indices -- as integers, actual position in space is function of~%# the voxel_size in the layer and voxels_per_side in the layer.~%int32 x_index~%int32 y_index~%int32 z_index~%~%# Voxel data packed in 4-byte chunks to better mirror protobuf serialization.~%uint32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Layer>))
  (cl:+ 0
     8
     4
     4 (cl:length (cl:slot-value msg 'layer_type))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blocks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Layer>))
  "Converts a ROS message object to a list"
  (cl:list 'Layer
    (cl:cons ':voxel_size (voxel_size msg))
    (cl:cons ':voxels_per_side (voxels_per_side msg))
    (cl:cons ':layer_type (layer_type msg))
    (cl:cons ':action (action msg))
    (cl:cons ':blocks (blocks msg))
))
