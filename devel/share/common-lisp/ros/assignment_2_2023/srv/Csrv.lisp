; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-srv)


;//! \htmlinclude Csrv-request.msg.html

(cl:defclass <Csrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Csrv-request (<Csrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Csrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Csrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<Csrv-request> is deprecated: use assignment_2_2023-srv:Csrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Csrv-request>) ostream)
  "Serializes a message object of type '<Csrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Csrv-request>) istream)
  "Deserializes a message object of type '<Csrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Csrv-request>)))
  "Returns string type for a service object of type '<Csrv-request>"
  "assignment_2_2023/CsrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Csrv-request)))
  "Returns string type for a service object of type 'Csrv-request"
  "assignment_2_2023/CsrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Csrv-request>)))
  "Returns md5sum for a message object of type '<Csrv-request>"
  "9aa8c2e2b21fc8544d27640eeac21d97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Csrv-request)))
  "Returns md5sum for a message object of type 'Csrv-request"
  "9aa8c2e2b21fc8544d27640eeac21d97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Csrv-request>)))
  "Returns full string definition for message of type '<Csrv-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Csrv-request)))
  "Returns full string definition for message of type 'Csrv-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Csrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Csrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Csrv-request
))
;//! \htmlinclude Csrv-response.msg.html

(cl:defclass <Csrv-response> (roslisp-msg-protocol:ros-message)
  ((goal_x
    :reader goal_x
    :initarg :goal_x
    :type cl:float
    :initform 0.0)
   (goal_y
    :reader goal_y
    :initarg :goal_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Csrv-response (<Csrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Csrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Csrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<Csrv-response> is deprecated: use assignment_2_2023-srv:Csrv-response instead.")))

(cl:ensure-generic-function 'goal_x-val :lambda-list '(m))
(cl:defmethod goal_x-val ((m <Csrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:goal_x-val is deprecated.  Use assignment_2_2023-srv:goal_x instead.")
  (goal_x m))

(cl:ensure-generic-function 'goal_y-val :lambda-list '(m))
(cl:defmethod goal_y-val ((m <Csrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:goal_y-val is deprecated.  Use assignment_2_2023-srv:goal_y instead.")
  (goal_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Csrv-response>) ostream)
  "Serializes a message object of type '<Csrv-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Csrv-response>) istream)
  "Deserializes a message object of type '<Csrv-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Csrv-response>)))
  "Returns string type for a service object of type '<Csrv-response>"
  "assignment_2_2023/CsrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Csrv-response)))
  "Returns string type for a service object of type 'Csrv-response"
  "assignment_2_2023/CsrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Csrv-response>)))
  "Returns md5sum for a message object of type '<Csrv-response>"
  "9aa8c2e2b21fc8544d27640eeac21d97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Csrv-response)))
  "Returns md5sum for a message object of type 'Csrv-response"
  "9aa8c2e2b21fc8544d27640eeac21d97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Csrv-response>)))
  "Returns full string definition for message of type '<Csrv-response>"
  (cl:format cl:nil "float32 goal_x~%float32 goal_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Csrv-response)))
  "Returns full string definition for message of type 'Csrv-response"
  (cl:format cl:nil "float32 goal_x~%float32 goal_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Csrv-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Csrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Csrv-response
    (cl:cons ':goal_x (goal_x msg))
    (cl:cons ':goal_y (goal_y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Csrv)))
  'Csrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Csrv)))
  'Csrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Csrv)))
  "Returns string type for a service object of type '<Csrv>"
  "assignment_2_2023/Csrv")