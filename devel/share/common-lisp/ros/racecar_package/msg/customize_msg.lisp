; Auto-generated. Do not edit!


(cl:in-package racecar_package-msg)


;//! \htmlinclude customize_msg.msg.html

(cl:defclass <customize_msg> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass customize_msg (<customize_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <customize_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'customize_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name racecar_package-msg:<customize_msg> is deprecated: use racecar_package-msg:customize_msg instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <customize_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader racecar_package-msg:name-val is deprecated.  Use racecar_package-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <customize_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader racecar_package-msg:age-val is deprecated.  Use racecar_package-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <customize_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader racecar_package-msg:height-val is deprecated.  Use racecar_package-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <customize_msg>) ostream)
  "Serializes a message object of type '<customize_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <customize_msg>) istream)
  "Deserializes a message object of type '<customize_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<customize_msg>)))
  "Returns string type for a message object of type '<customize_msg>"
  "racecar_package/customize_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'customize_msg)))
  "Returns string type for a message object of type 'customize_msg"
  "racecar_package/customize_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<customize_msg>)))
  "Returns md5sum for a message object of type '<customize_msg>"
  "0478132ca0c3bd1c734b5491000dabb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'customize_msg)))
  "Returns md5sum for a message object of type 'customize_msg"
  "0478132ca0c3bd1c734b5491000dabb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<customize_msg>)))
  "Returns full string definition for message of type '<customize_msg>"
  (cl:format cl:nil "string name~%int32 age~%float32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'customize_msg)))
  "Returns full string definition for message of type 'customize_msg"
  (cl:format cl:nil "string name~%int32 age~%float32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <customize_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <customize_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'customize_msg
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':height (height msg))
))
