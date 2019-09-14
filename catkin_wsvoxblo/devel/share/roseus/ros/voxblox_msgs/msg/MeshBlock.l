;; Auto-generated. Do not edit!


(when (boundp 'voxblox_msgs::MeshBlock)
  (if (not (find-package "VOXBLOX_MSGS"))
    (make-package "VOXBLOX_MSGS"))
  (shadow 'MeshBlock (find-package "VOXBLOX_MSGS")))
(unless (find-package "VOXBLOX_MSGS::MESHBLOCK")
  (make-package "VOXBLOX_MSGS::MESHBLOCK"))

(in-package "ROS")
;;//! \htmlinclude MeshBlock.msg.html


(defclass voxblox_msgs::MeshBlock
  :super ros::object
  :slots (_index _triangles ))

(defmethod voxblox_msgs::MeshBlock
  (:init
   (&key
    ((:index __index) (make-array 3 :initial-element 0 :element-type :integer))
    ((:triangles __triangles) (let (r) (dotimes (i 0) (push (instance voxblox_msgs::Triangle :init) r)) r))
    )
   (send-super :init)
   (setq _index __index)
   (setq _triangles __triangles)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:triangles
   (&rest __triangles)
   (if (keywordp (car __triangles))
       (send* _triangles __triangles)
     (progn
       (if __triangles (setq _triangles (car __triangles)))
       _triangles)))
  (:serialization-length
   ()
   (+
    ;; int64[3] _index
    (* 8    3)
    ;; voxblox_msgs/Triangle[] _triangles
    (apply #'+ (send-all _triangles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[3] _index
     (dotimes (i 3)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _index i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _index i)) (= (length ((elt _index i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _index i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _index i) . bv) 1) -1) s))
             ((and (class (elt _index i)) (= (length ((elt _index i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _index i) . bv) 0) s)
              (write-long (if (>= (elt _index i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _index i) s)(write-long (if (>= (elt _index i) 0) 0 #xffffffff) s)))
       )
     ;; voxblox_msgs/Triangle[] _triangles
     (write-long (length _triangles) s)
     (dolist (elem _triangles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[3] _index
   (dotimes (i (length _index))
#+(or :alpha :irix6 :x86_64)
      (setf (elt _index i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _index i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;; voxblox_msgs/Triangle[] _triangles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _triangles (let (r) (dotimes (i n) (push (instance voxblox_msgs::Triangle :init) r)) r))
     (dolist (elem- _triangles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get voxblox_msgs::MeshBlock :md5sum-) "6d5a456d47efe5b8b0afaf3286c9b421")
(setf (get voxblox_msgs::MeshBlock :datatype-) "voxblox_msgs/MeshBlock")
(setf (get voxblox_msgs::MeshBlock :definition-)
      "# Index of meshed points in block map
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



(provide :voxblox_msgs/MeshBlock "6d5a456d47efe5b8b0afaf3286c9b421")


