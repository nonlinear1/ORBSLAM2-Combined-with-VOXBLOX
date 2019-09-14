;; Auto-generated. Do not edit!


(when (boundp 'voxblox_msgs::FilePath)
  (if (not (find-package "VOXBLOX_MSGS"))
    (make-package "VOXBLOX_MSGS"))
  (shadow 'FilePath (find-package "VOXBLOX_MSGS")))
(unless (find-package "VOXBLOX_MSGS::FILEPATH")
  (make-package "VOXBLOX_MSGS::FILEPATH"))
(unless (find-package "VOXBLOX_MSGS::FILEPATHREQUEST")
  (make-package "VOXBLOX_MSGS::FILEPATHREQUEST"))
(unless (find-package "VOXBLOX_MSGS::FILEPATHRESPONSE")
  (make-package "VOXBLOX_MSGS::FILEPATHRESPONSE"))

(in-package "ROS")





(defclass voxblox_msgs::FilePathRequest
  :super ros::object
  :slots (_file_path ))

(defmethod voxblox_msgs::FilePathRequest
  (:init
   (&key
    ((:file_path __file_path) "")
    )
   (send-super :init)
   (setq _file_path (string __file_path))
   self)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:serialization-length
   ()
   (+
    ;; string _file_path
    4 (length _file_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass voxblox_msgs::FilePathResponse
  :super ros::object
  :slots ())

(defmethod voxblox_msgs::FilePathResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass voxblox_msgs::FilePath
  :super ros::object
  :slots ())

(setf (get voxblox_msgs::FilePath :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get voxblox_msgs::FilePath :datatype-) "voxblox_msgs/FilePath")
(setf (get voxblox_msgs::FilePath :request) voxblox_msgs::FilePathRequest)
(setf (get voxblox_msgs::FilePath :response) voxblox_msgs::FilePathResponse)

(defmethod voxblox_msgs::FilePathRequest
  (:response () (instance voxblox_msgs::FilePathResponse :init)))

(setf (get voxblox_msgs::FilePathRequest :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get voxblox_msgs::FilePathRequest :datatype-) "voxblox_msgs/FilePathRequest")
(setf (get voxblox_msgs::FilePathRequest :definition-)
      "string file_path
---

")

(setf (get voxblox_msgs::FilePathResponse :md5sum-) "a1f82596372c52a517e1fe32d1e998e8")
(setf (get voxblox_msgs::FilePathResponse :datatype-) "voxblox_msgs/FilePathResponse")
(setf (get voxblox_msgs::FilePathResponse :definition-)
      "string file_path
---

")



(provide :voxblox_msgs/FilePath "a1f82596372c52a517e1fe32d1e998e8")


