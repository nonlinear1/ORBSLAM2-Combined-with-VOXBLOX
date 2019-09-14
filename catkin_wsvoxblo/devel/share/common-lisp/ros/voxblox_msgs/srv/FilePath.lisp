; Auto-generated. Do not edit!


(cl:in-package voxblox_msgs-srv)


;//! \htmlinclude FilePath-request.msg.html

(cl:defclass <FilePath-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass FilePath-request (<FilePath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilePath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilePath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name voxblox_msgs-srv:<FilePath-request> is deprecated: use voxblox_msgs-srv:FilePath-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <FilePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voxblox_msgs-srv:file_path-val is deprecated.  Use voxblox_msgs-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilePath-request>) ostream)
  "Serializes a message object of type '<FilePath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilePath-request>) istream)
  "Deserializes a message object of type '<FilePath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilePath-request>)))
  "Returns string type for a service object of type '<FilePath-request>"
  "voxblox_msgs/FilePathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilePath-request)))
  "Returns string type for a service object of type 'FilePath-request"
  "voxblox_msgs/FilePathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilePath-request>)))
  "Returns md5sum for a message object of type '<FilePath-request>"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilePath-request)))
  "Returns md5sum for a message object of type 'FilePath-request"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilePath-request>)))
  "Returns full string definition for message of type '<FilePath-request>"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilePath-request)))
  "Returns full string definition for message of type 'FilePath-request"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilePath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilePath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FilePath-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude FilePath-response.msg.html

(cl:defclass <FilePath-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FilePath-response (<FilePath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilePath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilePath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name voxblox_msgs-srv:<FilePath-response> is deprecated: use voxblox_msgs-srv:FilePath-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilePath-response>) ostream)
  "Serializes a message object of type '<FilePath-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilePath-response>) istream)
  "Deserializes a message object of type '<FilePath-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilePath-response>)))
  "Returns string type for a service object of type '<FilePath-response>"
  "voxblox_msgs/FilePathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilePath-response)))
  "Returns string type for a service object of type 'FilePath-response"
  "voxblox_msgs/FilePathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilePath-response>)))
  "Returns md5sum for a message object of type '<FilePath-response>"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilePath-response)))
  "Returns md5sum for a message object of type 'FilePath-response"
  "a1f82596372c52a517e1fe32d1e998e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilePath-response>)))
  "Returns full string definition for message of type '<FilePath-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilePath-response)))
  "Returns full string definition for message of type 'FilePath-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilePath-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilePath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FilePath-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FilePath)))
  'FilePath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FilePath)))
  'FilePath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilePath)))
  "Returns string type for a service object of type '<FilePath>"
  "voxblox_msgs/FilePath")