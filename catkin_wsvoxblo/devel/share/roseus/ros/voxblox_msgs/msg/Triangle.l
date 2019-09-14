;; Auto-generated. Do not edit!


(when (boundp 'voxblox_msgs::Triangle)
  (if (not (find-package "VOXBLOX_MSGS"))
    (make-package "VOXBLOX_MSGS"))
  (shadow 'Triangle (find-package "VOXBLOX_MSGS")))
(unless (find-package "VOXBLOX_MSGS::TRIANGLE")
  (make-package "VOXBLOX_MSGS::TRIANGLE"))

(in-package "ROS")
;;//! \htmlinclude Triangle.msg.html


(defclass voxblox_msgs::Triangle
  :super ros::object
  :slots (_x _y _z _r _g _b _a ))

(defmethod voxblox_msgs::Triangle
  (:init
   (&key
    ((:x __x) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:z __z) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:r __r) (make-array 3 :initial-element 0 :element-type :char))
    ((:g __g) (make-array 3 :initial-element 0 :element-type :char))
    ((:b __b) (make-array 3 :initial-element 0 :element-type :char))
    ((:a __a) (make-array 3 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _r __r)
   (setq _g __g)
   (setq _b __b)
   (setq _a __a)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; float32[3] _x
    (* 4    3)
    ;; float32[3] _y
    (* 4    3)
    ;; float32[3] _z
    (* 4    3)
    ;; uint8[3] _r
    (* 1    3)
    ;; uint8[3] _g
    (* 1    3)
    ;; uint8[3] _b
    (* 1    3)
    ;; uint8[3] _a
    (* 1    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _x
     (dotimes (i 3)
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _y
     (dotimes (i 3)
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _z
     (dotimes (i 3)
       (sys::poke (elt _z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8[3] _r
     (princ _r s)
     ;; uint8[3] _g
     (princ _g s)
     ;; uint8[3] _b
     (princ _b s)
     ;; uint8[3] _a
     (princ _a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _x
   (dotimes (i (length _x))
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _y
   (dotimes (i (length _y))
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _z
   (dotimes (i (length _z))
     (setf (elt _z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; uint8[3] _r
   (setq _r (make-array 3 :element-type :char))
   (replace _r buf :start2 ptr-) (incf ptr- 3)
   ;; uint8[3] _g
   (setq _g (make-array 3 :element-type :char))
   (replace _g buf :start2 ptr-) (incf ptr- 3)
   ;; uint8[3] _b
   (setq _b (make-array 3 :element-type :char))
   (replace _b buf :start2 ptr-) (incf ptr- 3)
   ;; uint8[3] _a
   (setq _a (make-array 3 :element-type :char))
   (replace _a buf :start2 ptr-) (incf ptr- 3)
   ;;
   self)
  )

(setf (get voxblox_msgs::Triangle :md5sum-) "bdb82e942e7e4fd6074bfc244dfed93f")
(setf (get voxblox_msgs::Triangle :datatype-) "voxblox_msgs/Triangle")
(setf (get voxblox_msgs::Triangle :definition-)
      "# Colored triangle used in meshing

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



(provide :voxblox_msgs/Triangle "bdb82e942e7e4fd6074bfc244dfed93f")


