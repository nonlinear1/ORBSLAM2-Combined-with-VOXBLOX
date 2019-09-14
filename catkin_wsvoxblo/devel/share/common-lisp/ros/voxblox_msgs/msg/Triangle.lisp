; Auto-generated. Do not edit!


(cl:in-package voxblox_msgs-msg)


;//! \htmlinclude Triangle.msg.html

(cl:defclass <Triangle> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (y
    :reader y
    :initarg :y
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (z
    :reader z
    :initarg :z
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (r
    :reader r
    :initarg :r
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (g
    :reader g
    :initarg :g
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (b
    :reader b
    :initarg :b
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (a
    :reader a
    :initarg :a
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Triangle (<Triangle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Triangle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Triangle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name voxblox_msgs-msg:<Triangle> is deprecated: use voxblox_msgs-msg:Triangle instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Triangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:x-val is deprecated.  Use voxblox_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Triangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:y-val is deprecated.  Use voxblox_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Triangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:z-val is deprecated.  Use voxblox_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <Triangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:r-val is deprecated.  Use voxblox_msgs-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <Triangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:g-val is deprecated.  Use voxblox_msgs-msg:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Triangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:b-val is deprecated.  Use voxblox_msgs-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Triangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-msg:a-val is deprecated.  Use voxblox_msgs-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Triangle>) ostream)
  "Serializes a message object of type '<Triangle>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'x))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'y))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'z))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'r))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'g))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'b))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'a))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Triangle>) istream)
  "Deserializes a message object of type '<Triangle>"
  (cl:setf (cl:slot-value msg 'x) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'x)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'y) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'y)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'z) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'z)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'r) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'r)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'g) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'g)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'b) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'b)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'a) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'a)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Triangle>)))
  "Returns string type for a message object of type '<Triangle>"
  "voxblox_msgs/Triangle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Triangle)))
  "Returns string type for a message object of type 'Triangle"
  "voxblox_msgs/Triangle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Triangle>)))
  "Returns md5sum for a message object of type '<Triangle>"
  "bdb82e942e7e4fd6074bfc244dfed93f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Triangle)))
  "Returns md5sum for a message object of type 'Triangle"
  "bdb82e942e7e4fd6074bfc244dfed93f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Triangle>)))
  "Returns full string definition for message of type '<Triangle>"
  (cl:format cl:nil "# Colored triangle used in meshing~%~%# Position~%float32[3] x~%float32[3] y~%float32[3] z~%~%# Color~%uint8[3] r~%uint8[3] g~%uint8[3] b~%uint8[3] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Triangle)))
  "Returns full string definition for message of type 'Triangle"
  (cl:format cl:nil "# Colored triangle used in meshing~%~%# Position~%float32[3] x~%float32[3] y~%float32[3] z~%~%# Color~%uint8[3] r~%uint8[3] g~%uint8[3] b~%uint8[3] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Triangle>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'z) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'r) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'g) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'b) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'a) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Triangle>))
  "Converts a ROS message object to a list"
  (cl:list 'Triangle
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
    (cl:cons ':a (a msg))
))
