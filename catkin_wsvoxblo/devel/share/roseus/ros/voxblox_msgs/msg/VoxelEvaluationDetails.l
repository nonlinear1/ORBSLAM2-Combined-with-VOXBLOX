;; Auto-generated. Do not edit!


(when (boundp 'voxblox_msgs::VoxelEvaluationDetails)
  (if (not (find-package "VOXBLOX_MSGS"))
    (make-package "VOXBLOX_MSGS"))
  (shadow 'VoxelEvaluationDetails (find-package "VOXBLOX_MSGS")))
(unless (find-package "VOXBLOX_MSGS::VOXELEVALUATIONDETAILS")
  (make-package "VOXBLOX_MSGS::VOXELEVALUATIONDETAILS"))

(in-package "ROS")
;;//! \htmlinclude VoxelEvaluationDetails.msg.html


(defclass voxblox_msgs::VoxelEvaluationDetails
  :super ros::object
  :slots (_max_error _min_error _num_evaluated_voxels _num_ignored_voxels _num_overlapping_voxels _num_non_overlapping_voxels ))

(defmethod voxblox_msgs::VoxelEvaluationDetails
  (:init
   (&key
    ((:max_error __max_error) 0.0)
    ((:min_error __min_error) 0.0)
    ((:num_evaluated_voxels __num_evaluated_voxels) 0)
    ((:num_ignored_voxels __num_ignored_voxels) 0)
    ((:num_overlapping_voxels __num_overlapping_voxels) 0)
    ((:num_non_overlapping_voxels __num_non_overlapping_voxels) 0)
    )
   (send-super :init)
   (setq _max_error (float __max_error))
   (setq _min_error (float __min_error))
   (setq _num_evaluated_voxels (round __num_evaluated_voxels))
   (setq _num_ignored_voxels (round __num_ignored_voxels))
   (setq _num_overlapping_voxels (round __num_overlapping_voxels))
   (setq _num_non_overlapping_voxels (round __num_non_overlapping_voxels))
   self)
  (:max_error
   (&optional __max_error)
   (if __max_error (setq _max_error __max_error)) _max_error)
  (:min_error
   (&optional __min_error)
   (if __min_error (setq _min_error __min_error)) _min_error)
  (:num_evaluated_voxels
   (&optional __num_evaluated_voxels)
   (if __num_evaluated_voxels (setq _num_evaluated_voxels __num_evaluated_voxels)) _num_evaluated_voxels)
  (:num_ignored_voxels
   (&optional __num_ignored_voxels)
   (if __num_ignored_voxels (setq _num_ignored_voxels __num_ignored_voxels)) _num_ignored_voxels)
  (:num_overlapping_voxels
   (&optional __num_overlapping_voxels)
   (if __num_overlapping_voxels (setq _num_overlapping_voxels __num_overlapping_voxels)) _num_overlapping_voxels)
  (:num_non_overlapping_voxels
   (&optional __num_non_overlapping_voxels)
   (if __num_non_overlapping_voxels (setq _num_non_overlapping_voxels __num_non_overlapping_voxels)) _num_non_overlapping_voxels)
  (:serialization-length
   ()
   (+
    ;; float64 _max_error
    8
    ;; float64 _min_error
    8
    ;; uint32 _num_evaluated_voxels
    4
    ;; uint32 _num_ignored_voxels
    4
    ;; uint32 _num_overlapping_voxels
    4
    ;; uint32 _num_non_overlapping_voxels
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _max_error
       (sys::poke _max_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_error
       (sys::poke _min_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _num_evaluated_voxels
       (write-long _num_evaluated_voxels s)
     ;; uint32 _num_ignored_voxels
       (write-long _num_ignored_voxels s)
     ;; uint32 _num_overlapping_voxels
       (write-long _num_overlapping_voxels s)
     ;; uint32 _num_non_overlapping_voxels
       (write-long _num_non_overlapping_voxels s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _max_error
     (setq _max_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_error
     (setq _min_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _num_evaluated_voxels
     (setq _num_evaluated_voxels (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num_ignored_voxels
     (setq _num_ignored_voxels (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num_overlapping_voxels
     (setq _num_overlapping_voxels (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num_non_overlapping_voxels
     (setq _num_non_overlapping_voxels (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get voxblox_msgs::VoxelEvaluationDetails :md5sum-) "ae63ff7a8fed6761c7b2408516d56b79")
(setf (get voxblox_msgs::VoxelEvaluationDetails :datatype-) "voxblox_msgs/VoxelEvaluationDetails")
(setf (get voxblox_msgs::VoxelEvaluationDetails :definition-)
      "float64 max_error
float64 min_error
uint32 num_evaluated_voxels
uint32 num_ignored_voxels
uint32 num_overlapping_voxels
uint32 num_non_overlapping_voxels

")



(provide :voxblox_msgs/VoxelEvaluationDetails "ae63ff7a8fed6761c7b2408516d56b79")


