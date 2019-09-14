; Auto-generated. Do not edit!


(cl:in-package voxblox_msgs-msg)


;//! \htmlinclude Block.msg.html

(cl:defclass <Block> (roslisp-msg-protocol:ros-message)
  ((x_index
    :reader x_index
    :initarg :x_index
    :type cl:integer
    :initform 0)
   (y_index
    :reader y_index
    :initarg :y_index
    :type cl:integer
    :initform 0)
   (z_index
    :reader z_index
    :initarg :z_index
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Block (<Block>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Block>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Block)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name voxblox_msgs-msg:<Block> is deprecated: use voxblox_msgs-msg:Block instead.")))

(cl:ensure-generic-function 'x_index-val :lambda-list '(m))
(cl:defmethod x_index-val ((m <Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:x_index-val is deprecated.  Use voxblox_msgs-msg:x_index instead.")
  (x_index m))

(cl:ensure-generic-function 'y_index-val :lambda-list '(m))
(cl:defmethod y_index-val ((m <Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:y_index-val is deprecated.  Use voxblox_msgs-msg:y_index instead.")
  (y_index m))

(cl:ensure-generic-function 'z_index-val :lambda-list '(m))
(cl:defmethod z_index-val ((m <Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:z_index-val is deprecated.  Use voxblox_msgs-msg:z_index instead.")
  (z_index m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Block>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:data-val is deprecated.  Use voxblox_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Block>) ostream)
  "Serializes a message object of type '<Block>"
  (cl:let* ((signed (cl:slot-value msg 'x_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'z_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Block>) istream)
  "Deserializes a message object of type '<Block>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'z_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Block>)))
  "Returns string type for a message object of type '<Block>"
  "voxblox_msgs/Block")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Block)))
  "Returns string type for a message object of type 'Block"
  "voxblox_msgs/Block")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Block>)))
  "Returns md5sum for a message object of type '<Block>"
  "9bcc5caf92de597505633a546c641a94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Block)))
  "Returns md5sum for a message object of type 'Block"
  "9bcc5caf92de597505633a546c641a94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Block>)))
  "Returns full string definition for message of type '<Block>"
  (cl:format cl:nil "# Block indices -- as integers, actual position in space is function of~%# the voxel_size in the layer and voxels_per_side in the layer.~%int32 x_index~%int32 y_index~%int32 z_index~%~%# Voxel data packed in 4-byte chunks to better mirror protobuf serialization.~%uint32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Block)))
  "Returns full string definition for message of type 'Block"
  (cl:format cl:nil "# Block indices -- as integers, actual position in space is function of~%# the voxel_size in the layer and voxels_per_side in the layer.~%int32 x_index~%int32 y_index~%int32 z_index~%~%# Voxel data packed in 4-byte chunks to better mirror protobuf serialization.~%uint32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Block>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Block>))
  "Converts a ROS message object to a list"
  (cl:list 'Block
    (cl:cons ':x_index (x_index msg))
    (cl:cons ':y_index (y_index msg))
    (cl:cons ':z_index (z_index msg))
    (cl:cons ':data (data msg))
))
