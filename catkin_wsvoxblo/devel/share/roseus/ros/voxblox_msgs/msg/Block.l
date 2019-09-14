;; Auto-generated. Do not edit!


(when (boundp 'voxblox_msgs::Block)
  (if (not (find-package "VOXBLOX_MSGS"))
    (make-package "VOXBLOX_MSGS"))
  (shadow 'Block (find-package "VOXBLOX_MSGS")))
(unless (find-package "VOXBLOX_MSGS::BLOCK")
  (make-package "VOXBLOX_MSGS::BLOCK"))

(in-package "ROS")
;;//! \htmlinclude Block.msg.html


(defclass voxblox_msgs::Block
  :super ros::object
  :slots (_x_index _y_index _z_index _data ))

(defmethod voxblox_msgs::Block
  (:init
   (&key
    ((:x_index __x_index) 0)
    ((:y_index __y_index) 0)
    ((:z_index __z_index) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _x_index (round __x_index))
   (setq _y_index (round __y_index))
   (setq _z_index (round __z_index))
   (setq _data __data)
   self)
  (:x_index
   (&optional __x_index)
   (if __x_index (setq _x_index __x_index)) _x_index)
  (:y_index
   (&optional __y_index)
   (if __y_index (setq _y_index __y_index)) _y_index)
  (:z_index
   (&optional __z_index)
   (if __z_index (setq _z_index __z_index)) _z_index)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _x_index
    4
    ;; int32 _y_index
    4
    ;; int32 _z_index
    4
    ;; uint32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x_index
       (write-long _x_index s)
     ;; int32 _y_index
       (write-long _y_index s)
     ;; int32 _z_index
       (write-long _z_index s)
     ;; uint32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x_index
     (setq _x_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y_index
     (setq _y_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _z_index
     (setq _z_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get voxblox_msgs::Block :md5sum-) "9bcc5caf92de597505633a546c641a94")
(setf (get voxblox_msgs::Block :datatype-) "voxblox_msgs/Block")
(setf (get voxblox_msgs::Block :definition-)
      "# Block indices -- as integers, actual position in space is function of
# the voxel_size in the layer and voxels_per_side in the layer.
int32 x_index
int32 y_index
int32 z_index

# Voxel data packed in 4-byte chunks to better mirror protobuf serialization.
uint32[] data

")



(provide :voxblox_msgs/Block "9bcc5caf92de597505633a546c641a94")


