
(cl:in-package :asdf)

(defsystem "voxblox_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FilePath" :depends-on ("_package_FilePath"))
    (:file "_package_FilePath" :depends-on ("_package"))
  ))