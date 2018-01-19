; Auto-generated. Do not edit!


(cl:in-package myturtlebot-srv)


;//! \htmlinclude TurtlebotStatus-request.msg.html

(cl:defclass <TurtlebotStatus-request> (roslisp-msg-protocol:ros-message)
  ((forwardrqst
    :reader forwardrqst
    :initarg :forwardrqst
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TurtlebotStatus-request (<TurtlebotStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtlebotStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtlebotStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name myturtlebot-srv:<TurtlebotStatus-request> is deprecated: use myturtlebot-srv:TurtlebotStatus-request instead.")))

(cl:ensure-generic-function 'forwardrqst-val :lambda-list '(m))
(cl:defmethod forwardrqst-val ((m <TurtlebotStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myturtlebot-srv:forwardrqst-val is deprecated.  Use myturtlebot-srv:forwardrqst instead.")
  (forwardrqst m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtlebotStatus-request>) ostream)
  "Serializes a message object of type '<TurtlebotStatus-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'forwardrqst) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtlebotStatus-request>) istream)
  "Deserializes a message object of type '<TurtlebotStatus-request>"
    (cl:setf (cl:slot-value msg 'forwardrqst) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtlebotStatus-request>)))
  "Returns string type for a service object of type '<TurtlebotStatus-request>"
  "myturtlebot/TurtlebotStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtlebotStatus-request)))
  "Returns string type for a service object of type 'TurtlebotStatus-request"
  "myturtlebot/TurtlebotStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtlebotStatus-request>)))
  "Returns md5sum for a message object of type '<TurtlebotStatus-request>"
  "5402a31cf3717369ede1e7580132916f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtlebotStatus-request)))
  "Returns md5sum for a message object of type 'TurtlebotStatus-request"
  "5402a31cf3717369ede1e7580132916f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtlebotStatus-request>)))
  "Returns full string definition for message of type '<TurtlebotStatus-request>"
  (cl:format cl:nil "bool forwardrqst~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtlebotStatus-request)))
  "Returns full string definition for message of type 'TurtlebotStatus-request"
  (cl:format cl:nil "bool forwardrqst~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtlebotStatus-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtlebotStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtlebotStatus-request
    (cl:cons ':forwardrqst (forwardrqst msg))
))
;//! \htmlinclude TurtlebotStatus-response.msg.html

(cl:defclass <TurtlebotStatus-response> (roslisp-msg-protocol:ros-message)
  ((range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0)
   (forwardresp
    :reader forwardresp
    :initarg :forwardresp
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TurtlebotStatus-response (<TurtlebotStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtlebotStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtlebotStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name myturtlebot-srv:<TurtlebotStatus-response> is deprecated: use myturtlebot-srv:TurtlebotStatus-response instead.")))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <TurtlebotStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myturtlebot-srv:range-val is deprecated.  Use myturtlebot-srv:range instead.")
  (range m))

(cl:ensure-generic-function 'forwardresp-val :lambda-list '(m))
(cl:defmethod forwardresp-val ((m <TurtlebotStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myturtlebot-srv:forwardresp-val is deprecated.  Use myturtlebot-srv:forwardresp instead.")
  (forwardresp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtlebotStatus-response>) ostream)
  "Serializes a message object of type '<TurtlebotStatus-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'forwardresp) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtlebotStatus-response>) istream)
  "Deserializes a message object of type '<TurtlebotStatus-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'forwardresp) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtlebotStatus-response>)))
  "Returns string type for a service object of type '<TurtlebotStatus-response>"
  "myturtlebot/TurtlebotStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtlebotStatus-response)))
  "Returns string type for a service object of type 'TurtlebotStatus-response"
  "myturtlebot/TurtlebotStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtlebotStatus-response>)))
  "Returns md5sum for a message object of type '<TurtlebotStatus-response>"
  "5402a31cf3717369ede1e7580132916f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtlebotStatus-response)))
  "Returns md5sum for a message object of type 'TurtlebotStatus-response"
  "5402a31cf3717369ede1e7580132916f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtlebotStatus-response>)))
  "Returns full string definition for message of type '<TurtlebotStatus-response>"
  (cl:format cl:nil "float32 range~%bool forwardresp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtlebotStatus-response)))
  "Returns full string definition for message of type 'TurtlebotStatus-response"
  (cl:format cl:nil "float32 range~%bool forwardresp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtlebotStatus-response>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtlebotStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtlebotStatus-response
    (cl:cons ':range (range msg))
    (cl:cons ':forwardresp (forwardresp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TurtlebotStatus)))
  'TurtlebotStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TurtlebotStatus)))
  'TurtlebotStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtlebotStatus)))
  "Returns string type for a service object of type '<TurtlebotStatus>"
  "myturtlebot/TurtlebotStatus")