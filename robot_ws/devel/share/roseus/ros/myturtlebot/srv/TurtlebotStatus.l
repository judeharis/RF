;; Auto-generated. Do not edit!


(when (boundp 'myturtlebot::TurtlebotStatus)
  (if (not (find-package "MYTURTLEBOT"))
    (make-package "MYTURTLEBOT"))
  (shadow 'TurtlebotStatus (find-package "MYTURTLEBOT")))
(unless (find-package "MYTURTLEBOT::TURTLEBOTSTATUS")
  (make-package "MYTURTLEBOT::TURTLEBOTSTATUS"))
(unless (find-package "MYTURTLEBOT::TURTLEBOTSTATUSREQUEST")
  (make-package "MYTURTLEBOT::TURTLEBOTSTATUSREQUEST"))
(unless (find-package "MYTURTLEBOT::TURTLEBOTSTATUSRESPONSE")
  (make-package "MYTURTLEBOT::TURTLEBOTSTATUSRESPONSE"))

(in-package "ROS")





(defclass myturtlebot::TurtlebotStatusRequest
  :super ros::object
  :slots (_forwardrqst ))

(defmethod myturtlebot::TurtlebotStatusRequest
  (:init
   (&key
    ((:forwardrqst __forwardrqst) nil)
    )
   (send-super :init)
   (setq _forwardrqst __forwardrqst)
   self)
  (:forwardrqst
   (&optional __forwardrqst)
   (if __forwardrqst (setq _forwardrqst __forwardrqst)) _forwardrqst)
  (:serialization-length
   ()
   (+
    ;; bool _forwardrqst
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _forwardrqst
       (if _forwardrqst (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _forwardrqst
     (setq _forwardrqst (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass myturtlebot::TurtlebotStatusResponse
  :super ros::object
  :slots (_range _forwardresp ))

(defmethod myturtlebot::TurtlebotStatusResponse
  (:init
   (&key
    ((:range __range) 0.0)
    ((:forwardresp __forwardresp) nil)
    )
   (send-super :init)
   (setq _range (float __range))
   (setq _forwardresp __forwardresp)
   self)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:forwardresp
   (&optional __forwardresp)
   (if __forwardresp (setq _forwardresp __forwardresp)) _forwardresp)
  (:serialization-length
   ()
   (+
    ;; float32 _range
    4
    ;; bool _forwardresp
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _forwardresp
       (if _forwardresp (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _forwardresp
     (setq _forwardresp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass myturtlebot::TurtlebotStatus
  :super ros::object
  :slots ())

(setf (get myturtlebot::TurtlebotStatus :md5sum-) "5402a31cf3717369ede1e7580132916f")
(setf (get myturtlebot::TurtlebotStatus :datatype-) "myturtlebot/TurtlebotStatus")
(setf (get myturtlebot::TurtlebotStatus :request) myturtlebot::TurtlebotStatusRequest)
(setf (get myturtlebot::TurtlebotStatus :response) myturtlebot::TurtlebotStatusResponse)

(defmethod myturtlebot::TurtlebotStatusRequest
  (:response () (instance myturtlebot::TurtlebotStatusResponse :init)))

(setf (get myturtlebot::TurtlebotStatusRequest :md5sum-) "5402a31cf3717369ede1e7580132916f")
(setf (get myturtlebot::TurtlebotStatusRequest :datatype-) "myturtlebot/TurtlebotStatusRequest")
(setf (get myturtlebot::TurtlebotStatusRequest :definition-)
      "bool forwardrqst
---
float32 range
bool forwardresp
")

(setf (get myturtlebot::TurtlebotStatusResponse :md5sum-) "5402a31cf3717369ede1e7580132916f")
(setf (get myturtlebot::TurtlebotStatusResponse :datatype-) "myturtlebot/TurtlebotStatusResponse")
(setf (get myturtlebot::TurtlebotStatusResponse :definition-)
      "bool forwardrqst
---
float32 range
bool forwardresp
")



(provide :myturtlebot/TurtlebotStatus "5402a31cf3717369ede1e7580132916f")


