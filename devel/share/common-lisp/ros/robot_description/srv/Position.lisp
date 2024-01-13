; Auto-generated. Do not edit!


(cl:in-package robot_description-srv)


;//! \htmlinclude Position-request.msg.html

(cl:defclass <Position-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass Position-request (<Position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_description-srv:<Position-request> is deprecated: use robot_description-srv:Position-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_description-srv:x-val is deprecated.  Use robot_description-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_description-srv:y-val is deprecated.  Use robot_description-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_description-srv:theta-val is deprecated.  Use robot_description-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Position-request>) ostream)
  "Serializes a message object of type '<Position-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Position-request>) istream)
  "Deserializes a message object of type '<Position-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Position-request>)))
  "Returns string type for a service object of type '<Position-request>"
  "robot_description/PositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Position-request)))
  "Returns string type for a service object of type 'Position-request"
  "robot_description/PositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Position-request>)))
  "Returns md5sum for a message object of type '<Position-request>"
  "2f1d14ba96d90c01d836ab12b368aeb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Position-request)))
  "Returns md5sum for a message object of type 'Position-request"
  "2f1d14ba96d90c01d836ab12b368aeb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Position-request>)))
  "Returns full string definition for message of type '<Position-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Position-request)))
  "Returns full string definition for message of type 'Position-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Position-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Position-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
;//! \htmlinclude Position-response.msg.html

(cl:defclass <Position-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Position-response (<Position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_description-srv:<Position-response> is deprecated: use robot_description-srv:Position-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <Position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_description-srv:ok-val is deprecated.  Use robot_description-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Position-response>) ostream)
  "Serializes a message object of type '<Position-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Position-response>) istream)
  "Deserializes a message object of type '<Position-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Position-response>)))
  "Returns string type for a service object of type '<Position-response>"
  "robot_description/PositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Position-response)))
  "Returns string type for a service object of type 'Position-response"
  "robot_description/PositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Position-response>)))
  "Returns md5sum for a message object of type '<Position-response>"
  "2f1d14ba96d90c01d836ab12b368aeb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Position-response)))
  "Returns md5sum for a message object of type 'Position-response"
  "2f1d14ba96d90c01d836ab12b368aeb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Position-response>)))
  "Returns full string definition for message of type '<Position-response>"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Position-response)))
  "Returns full string definition for message of type 'Position-response"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Position-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Position-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Position)))
  'Position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Position)))
  'Position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Position)))
  "Returns string type for a service object of type '<Position>"
  "robot_description/Position")