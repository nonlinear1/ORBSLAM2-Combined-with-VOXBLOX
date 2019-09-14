
(cl:in-package :asdf)

(defsystem "voxblox_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Block" :depends-on ("_package_Block"))
    (:file "_package_Block" :depends-on ("_package"))
    (:file "Layer" :depends-on ("_package_Layer"))
    (:file "_package_Layer" :depends-on ("_package"))
    (:file "Mesh" :depends-on ("_package_Mesh"))
    (:file "_package_Mesh" :depends-on ("_package"))
    (:file "MeshBlock" :depends-on ("_package_MeshBlock"))
    (:file "_package_MeshBlock" :depends-on ("_package"))
    (:file "Triangle" :depends-on ("_package_Triangle"))
    (:file "_package_Triangle" :depends-on ("_package"))
    (:file "VoxelEvaluationDetails" :depends-on ("_package_VoxelEvaluationDetails"))
    (:file "_package_VoxelEvaluationDetails" :depends-on ("_package"))
  ))