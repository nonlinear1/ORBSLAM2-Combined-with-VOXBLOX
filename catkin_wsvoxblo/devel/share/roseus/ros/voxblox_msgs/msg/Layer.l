;; Auto-generated. Do not edit!


(when (boundp 'voxblox_msgs::Layer)
  (if (not (find-package "VOXBLOX_MSGS"))
    (make-package "VOXBLOX_MSGS"))
  (shadow 'Layer (find-package "VOXBLOX_MSGS")))
(unless (find-package "VOXBLOX_MSGS::LAYER")
  (make-package "VOXBLOX_MSGS::LAYER"))

(in-package "ROS")
;;//! \htmlinclude Layer.msg.html


(intern "*ACTION_UPDATE*" (find-package "VOXBLOX_MSGS::LAYER"))
(shadow '*ACTION_UPDATE* (find-package "VOXBLOX_MSGS::LAYER"))
(defconstant voxblox_msgs::Layer::*ACTION_UPDATE* 0)
(intern "*ACTION_MERGE*" (find-package "VOXBLOX_MSGS::LAYER"))
(shadow '*ACTION_MERGE* (find-package "VOXBLOX_MSGS::LAYER"))
(defconstant voxblox_msgs::Layer::*ACTION_MERGE* 1)
(intern "*ACTION_RESET*" (find-package "VOXBLOX_MSGS::LAYER"))
(shadow '*ACTION_RESET* (find-package "VOXBLOX_MSGS::LAYER"))
(defconstant voxblox_msgs::Layer::*ACTION_RESET* 2)
(defclass voxblox_msgs::Layer
  :super ros::object
  :slots (_voxel_size _voxels_per_side _layer_type _action _blocks ))

(defmethod voxblox_msgs::Layer
  (:init
   (&key
    ((:voxel_size __voxel_size) 0.0)
    ((:voxels_per_side __voxels_per_side) 0)
    ((:layer_type __layer_type) "")
    ((:action __action) 0)
    ((:blocks __blocks) (let (r) (dotimes (i 0) (push (instance voxblox_msgs::Block :init) r)) r))
    )
   (send-super :init)
   (setq _voxel_size (float __voxel_size))
   (setq _voxels_per_side (round __voxels_per_side))
   (setq _layer_type (string __layer_type))
   (setq _action (round __action))
   (setq _blocks __blocks)
   self)
  (:voxel_size
   (&optional __voxel_size)
   (if __voxel_size (setq _voxel_size __voxel_size)) _voxel_size)
  (:voxels_per_side
   (&optional __voxels_per_side)
   (if __voxels_per_side (setq _voxels_per_side __voxels_per_side)) _voxels_per_side)
  (:layer_type
   (&optional __layer_type)
   (if __layer_type (setq _layer_type __layer_type)) _layer_type)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:blocks
   (&rest __blocks)
   (if (keywordp (car __blocks))
       (send* _blocks __blocks)
     (progn
       (if __blocks (setq _blocks (car __blocks)))
       _blocks)))
  (:serialization-length
   ()
   (+
    ;; float64 _voxel_size
    8
    ;; uint32 _voxels_per_side
    4
    ;; string _layer_type
    4 (length _layer_type)
    ;; uint8 _action
    1
    ;; voxblox_msgs/Block[] _blocks
    (apply #'+ (send-all _blocks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _voxel_size
       (sys::poke _voxel_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _voxels_per_side
       (write-long _voxels_per_side s)
     ;; string _layer_type
       (write-long (length _layer_type) s) (princ _layer_type s)
     ;; uint8 _action
       (write-byte _action s)
     ;; voxblox_msgs/Block[] _blocks
     (write-long (length _blocks) s)
     (dolist (elem _blocks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _voxel_size
     (setq _voxel_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _voxels_per_side
     (setq _voxels_per_side (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _layer_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _layer_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; voxblox_msgs/Block[] _blocks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blocks (let (r) (dotimes (i n) (push (instance voxblox_msgs::Block :init) r)) r))
     (dolist (elem- _blocks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get voxblox_msgs::Layer :md5sum-) "97e0cb7d60607d9bc02f977d9f620620")
(setf (get voxblox_msgs::Layer :datatype-) "voxblox_msgs/Layer")
(setf (get voxblox_msgs::Layer :definition-)
      "# Layer definitions
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

")



(provide :voxblox_msgs/Layer "97e0cb7d60607d9bc02f977d9f620620")


