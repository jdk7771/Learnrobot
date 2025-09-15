
(cl:in-package :asdf)

(defsystem "prac_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SrvJdk" :depends-on ("_package_SrvJdk"))
    (:file "_package_SrvJdk" :depends-on ("_package"))
  ))