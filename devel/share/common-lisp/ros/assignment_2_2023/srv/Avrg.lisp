; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-srv)


;//! \htmlinclude Avrg-request.msg.html

(cl:defclass <Avrg-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Avrg-request (<Avrg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Avrg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Avrg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<Avrg-request> is deprecated: use assignment_2_2023-srv:Avrg-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Avrg-request>) ostream)
  "Serializes a message object of type '<Avrg-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Avrg-request>) istream)
  "Deserializes a message object of type '<Avrg-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Avrg-request>)))
  "Returns string type for a service object of type '<Avrg-request>"
  "assignment_2_2023/AvrgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Avrg-request)))
  "Returns string type for a service object of type 'Avrg-request"
  "assignment_2_2023/AvrgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Avrg-request>)))
  "Returns md5sum for a message object of type '<Avrg-request>"
  "5df81caea40a0fa6af31fa77f59b6d1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Avrg-request)))
  "Returns md5sum for a message object of type 'Avrg-request"
  "5df81caea40a0fa6af31fa77f59b6d1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Avrg-request>)))
  "Returns full string definition for message of type '<Avrg-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Avrg-request)))
  "Returns full string definition for message of type 'Avrg-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Avrg-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Avrg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Avrg-request
))
;//! \htmlinclude Avrg-response.msg.html

(cl:defclass <Avrg-response> (roslisp-msg-protocol:ros-message)
  ((dis
    :reader dis
    :initarg :dis
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass Avrg-response (<Avrg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Avrg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Avrg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<Avrg-response> is deprecated: use assignment_2_2023-srv:Avrg-response instead.")))

(cl:ensure-generic-function 'dis-val :lambda-list '(m))
(cl:defmethod dis-val ((m <Avrg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:dis-val is deprecated.  Use assignment_2_2023-srv:dis instead.")
  (dis m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Avrg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:speed-val is deprecated.  Use assignment_2_2023-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Avrg-response>) ostream)
  "Serializes a message object of type '<Avrg-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Avrg-response>) istream)
  "Deserializes a message object of type '<Avrg-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Avrg-response>)))
  "Returns string type for a service object of type '<Avrg-response>"
  "assignment_2_2023/AvrgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Avrg-response)))
  "Returns string type for a service object of type 'Avrg-response"
  "assignment_2_2023/AvrgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Avrg-response>)))
  "Returns md5sum for a message object of type '<Avrg-response>"
  "5df81caea40a0fa6af31fa77f59b6d1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Avrg-response)))
  "Returns md5sum for a message object of type 'Avrg-response"
  "5df81caea40a0fa6af31fa77f59b6d1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Avrg-response>)))
  "Returns full string definition for message of type '<Avrg-response>"
  (cl:format cl:nil "float32 dis~%float32 speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Avrg-response)))
  "Returns full string definition for message of type 'Avrg-response"
  (cl:format cl:nil "float32 dis~%float32 speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Avrg-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Avrg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Avrg-response
    (cl:cons ':dis (dis msg))
    (cl:cons ':speed (speed msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Avrg)))
  'Avrg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Avrg)))
  'Avrg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Avrg)))
  "Returns string type for a service object of type '<Avrg>"
  "assignment_2_2023/Avrg")