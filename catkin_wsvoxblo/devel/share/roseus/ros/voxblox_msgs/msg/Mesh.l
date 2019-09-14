;; Auto-generated. Do not edit!


(when (boundp 'voxblox_msgs::Mesh)
  (if (not (find-package "VOXBLOX_MSGS"))
    (make-package "VOXBLOX_MSGS"))
  (shadow 'Mesh (find-package "VOXBLOX_MSGS")))
(unless (find-package "VOXBLOX_MSGS::MESH")
  (make-package "VOXBLOX_MSGS::MESH"))

(in-package "ROS")
;;//! \htmlinclude Mesh.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass voxblox_msgs::Mesh
  :super ros::object
  :slots (_header _mesh_blocks ))

(defmethod voxblox_msgs::Mesh
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mesh_blocks __mesh_blocks) (let (r) (dotimes (i 0) (push (instance voxblox_msgs::MeshBlock :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mesh_blocks __mesh_blocks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mesh_blocks
   (&rest __mesh_blocks)
   (if (keywordp (car __mesh_blocks))
       (send* _mesh_blocks __mesh_blocks)
     (progn
       (if __mesh_blocks (setq _mesh_blocks (car __mesh_blocks)))
       _mesh_blocks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; voxblox_msgs/MeshBlock[] _mesh_blocks
    (apply #'+ (send-all _mesh_blocks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; voxblox_msgs/MeshBlock[] _mesh_blocks
     (write-long (length _mesh_blocks) s)
     (dolist (elem _mesh_blocks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; voxblox_msgs/MeshBlock[] _mesh_blocks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mesh_blocks (let (r) (dotimes (i n) (push (instance voxblox_msgs::MeshBlock :init) r)) r))
     (dolist (elem- _mesh_blocks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get voxblox_msgs::Mesh :md5sum-) "ca70fabcc211b61f795cb5e7c8210eb6")
(setf (get voxblox_msgs::Mesh :datatype-) "voxblox_msgs/Mesh")
(setf (get voxblox_msgs::Mesh :definition-)
      "std_msgs/Header header

voxblox_msgs/MeshBlock[] mesh_blocks

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: voxblox_msgs/MeshBlock
# Index of meshed points in block map
int64[3] index

voxblox_msgs/Triangle[] triangles

================================================================================
MSG: voxblox_msgs/Triangle
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

")



(provide :voxblox_msgs/Mesh "ca70fabcc211b61f795cb5e7c8210eb6")


