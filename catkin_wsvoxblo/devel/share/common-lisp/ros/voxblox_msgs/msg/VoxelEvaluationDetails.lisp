; Auto-generated. Do not edit!


(cl:in-package voxblox_msgs-msg)


;//! \htmlinclude VoxelEvaluationDetails.msg.html

(cl:defclass <VoxelEvaluationDetails> (roslisp-msg-protocol:ros-message)
  ((max_error
    :reader max_error
    :initarg :max_error
    :type cl:float
    :initform 0.0)
   (min_error
    :reader min_error
    :initarg :min_error
    :type cl:float
    :initform 0.0)
   (num_evaluated_voxels
    :reader num_evaluated_voxels
    :initarg :num_evaluated_voxels
    :type cl:integer
    :initform 0)
   (num_ignored_voxels
    :reader num_ignored_voxels
    :initarg :num_ignored_voxels
    :type cl:integer
    :initform 0)
   (num_overlapping_voxels
    :reader num_overlapping_voxels
    :initarg :num_overlapping_voxels
    :type cl:integer
    :initform 0)
   (num_non_overlapping_voxels
    :reader num_non_overlapping_voxels
    :initarg :num_non_overlapping_voxels
    :type cl:integer
    :initform 0))
)

(cl:defclass VoxelEvaluationDetails (<VoxelEvaluationDetails>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VoxelEvaluationDetails>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VoxelEvaluationDetails)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name voxblox_msgs-msg:<VoxelEvaluationDetails> is deprecated: use voxblox_msgs-msg:VoxelEvaluationDetails instead.")))

(cl:ensure-generic-function 'max_error-val :lambda-list '(m))
(cl:defmethod max_error-val ((m <VoxelEvaluationDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:max_error-val is deprecated.  Use voxblox_msgs-msg:max_error instead.")
  (max_error m))

(cl:ensure-generic-function 'min_error-val :lambda-list '(m))
(cl:defmethod min_error-val ((m <VoxelEvaluationDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:min_error-val is deprecated.  Use voxblox_msgs-msg:min_error instead.")
  (min_error m))

(cl:ensure-generic-function 'num_evaluated_voxels-val :lambda-list '(m))
(cl:defmethod num_evaluated_voxels-val ((m <VoxelEvaluationDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:num_evaluated_voxels-val is deprecated.  Use voxblox_msgs-msg:num_evaluated_voxels instead.")
  (num_evaluated_voxels m))

(cl:ensure-generic-function 'num_ignored_voxels-val :lambda-list '(m))
(cl:defmethod num_ignored_voxels-val ((m <VoxelEvaluationDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:num_ignored_voxels-val is deprecated.  Use voxblox_msgs-msg:num_ignored_voxels instead.")
  (num_ignored_voxels m))

(cl:ensure-generic-function 'num_overlapping_voxels-val :lambda-list '(m))
(cl:defmethod num_overlapping_voxels-val ((m <VoxelEvaluationDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:num_overlapping_voxels-val is deprecated.  Use voxblox_msgs-msg:num_overlapping_voxels instead.")
  (num_overlapping_voxels m))

(cl:ensure-generic-function 'num_non_overlapping_voxels-val :lambda-list '(m))
(cl:defmethod num_non_overlapping_voxels-val ((m <VoxelEvaluationDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:num_non_overlapping_voxels-val is deprecated.  Use voxblox_msgs-msg:num_non_overlapping_voxels instead.")
  (num_non_overlapping_voxels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VoxelEvaluationDetails>) ostream)
  "Serializes a message object of type '<VoxelEvaluationDetails>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_evaluated_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_evaluated_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_evaluated_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_evaluated_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_ignored_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_ignored_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_ignored_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_ignored_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_overlapping_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_overlapping_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_overlapping_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_overlapping_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_non_overlapping_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_non_overlapping_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_non_overlapping_voxels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_non_overlapping_voxels)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VoxelEvaluationDetails>) istream)
  "Deserializes a message object of type '<VoxelEvaluationDetails>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_evaluated_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_evaluated_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_evaluated_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_evaluated_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_ignored_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_ignored_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_ignored_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_ignored_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_overlapping_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_overlapping_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_overlapping_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_overlapping_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_non_overlapping_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_non_overlapping_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_non_overlapping_voxels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_non_overlapping_voxels)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VoxelEvaluationDetails>)))
  "Returns string type for a message object of type '<VoxelEvaluationDetails>"
  "voxblox_msgs/VoxelEvaluationDetails")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VoxelEvaluationDetails)))
  "Returns string type for a message object of type 'VoxelEvaluationDetails"
  "voxblox_msgs/VoxelEvaluationDetails")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VoxelEvaluationDetails>)))
  "Returns md5sum for a message object of type '<VoxelEvaluationDetails>"
  "ae63ff7a8fed6761c7b2408516d56b79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VoxelEvaluationDetails)))
  "Returns md5sum for a message object of type 'VoxelEvaluationDetails"
  "ae63ff7a8fed6761c7b2408516d56b79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VoxelEvaluationDetails>)))
  "Returns full string definition for message of type '<VoxelEvaluationDetails>"
  (cl:format cl:nil "float64 max_error~%float64 min_error~%uint32 num_evaluated_voxels~%uint32 num_ignored_voxels~%uint32 num_overlapping_voxels~%uint32 num_non_overlapping_voxels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VoxelEvaluationDetails)))
  "Returns full string definition for message of type 'VoxelEvaluationDetails"
  (cl:format cl:nil "float64 max_error~%float64 min_error~%uint32 num_evaluated_voxels~%uint32 num_ignored_voxels~%uint32 num_overlapping_voxels~%uint32 num_non_overlapping_voxels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VoxelEvaluationDetails>))
  (cl:+ 0
     8
     8
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VoxelEvaluationDetails>))
  "Converts a ROS message object to a list"
  (cl:list 'VoxelEvaluationDetails
    (cl:cons ':max_error (max_error msg))
    (cl:cons ':min_error (min_error msg))
    (cl:cons ':num_evaluated_voxels (num_evaluated_voxels msg))
    (cl:cons ':num_ignored_voxels (num_ignored_voxels msg))
    (cl:cons ':num_overlapping_voxels (num_overlapping_voxels msg))
    (cl:cons ':num_non_overlapping_voxels (num_non_overlapping_voxels msg))
))
