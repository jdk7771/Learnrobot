
(cl:in-package :asdf)

(defsystem "prac_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "jdk" :depends-on ("_package_jdk"))
    (:file "_package_jdk" :depends-on ("_package"))
  ))