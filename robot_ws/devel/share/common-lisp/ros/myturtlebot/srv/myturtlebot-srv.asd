
(cl:in-package :asdf)

(defsystem "myturtlebot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TurtlebotStatus" :depends-on ("_package_TurtlebotStatus"))
    (:file "_package_TurtlebotStatus" :depends-on ("_package"))
  ))