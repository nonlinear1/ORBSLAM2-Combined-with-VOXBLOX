; Auto-generated. Do not edit!


(cl:in-package voxblox_msgs-msg)


;//! \htmlinclude MeshBlock.msg.html

(cl:defclass <MeshBlock> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type (cl:vector cl:integer)
   :initform (cl:make-array 3 :element-type 'cl:integer :initial-element 0))
   (triangles
    :reader triangles
    :initarg :triangles
    :type (cl:vector voxblox_msgs-msg:Triangle)
   :initform (cl:make-array 0 :element-type 'voxblox_msgs-msg:Triangle :initial-element (cl:make-instance 'voxblox_msgs-msg:Triangle))))
)

(cl:defclass MeshBlock (<MeshBlock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MeshBlock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MeshBlock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name voxblox_msgs-msg:<MeshBlock> is deprecated: use voxblox_msgs-msg:MeshBlock instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <MeshBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:index-val is deprecated.  Use voxblox_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'triangles-val :lambda-list '(m))
(cl:defmethod triangles-val ((m <MeshBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:triangles-val is deprecated.  Use voxblox_msgs-msg:triangles instead.")
  (triangles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MeshBlock>) ostream)
  "Serializes a message object of type '<MeshBlock>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'index))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'triangles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'triangles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MeshBlock>) istream)
  "Deserializes a message object of type '<MeshBlock>"
  (cl:setf (cl:slot-value msg 'index) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'index)))
    (cl:dotimes (i 3)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'triangles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'triangles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'voxblox_msgs-msg:Triangle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MeshBlock>)))
  "Returns string type for a message object of type '<MeshBlock>"
  "voxblox_msgs/MeshBlock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MeshBlock)))
  "Returns string type for a message object of type 'MeshBlock"
  "voxblox_msgs/MeshBlock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MeshBlock>)))
  "Returns md5sum for a message object of type '<MeshBlock>"
  "6d5a456d47efe5b8b0afaf3286c9b421")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MeshBlock)))
  "Returns md5sum for a message object of type 'MeshBlock"
  "6d5a456d47efe5b8b0afaf3286c9b421")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MeshBlock>)))
  "Returns full string definition for message of type '<MeshBlock>"
  (cl:format cl:nil "# Index of meshed points in block map~%int64[3] index~%~%voxblox_msgs/Triangle[] triangles~%~%================================================================================~%MSG: voxblox_msgs/Triangle~%# Colored triangle used in meshing~%~%# Position~%float32[3] x~%float32[3] y~%float32[3] z~%~%# Color~%uint8[3] r~%uint8[3] g~%uint8[3] b~%uint8[3] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MeshBlock)))
  "Returns full string definition for message of type 'MeshBlock"
  (cl:format cl:nil "# Index of meshed points in block map~%int64[3] index~%~%voxblox_msgs/Triangle[] triangles~%~%================================================================================~%MSG: voxblox_msgs/Triangle~%# Colored triangle used in meshing~%~%# Position~%float32[3] x~%float32[3] y~%float32[3] z~%~%# Color~%uint8[3] r~%uint8[3] g~%uint8[3] b~%uint8[3] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MeshBlock>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'index) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'triangles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MeshBlock>))
  "Converts a ROS message object to a list"
  (cl:list 'MeshBlock
    (cl:cons ':index (index msg))
    (cl:cons ':triangles (triangles msg))
))
