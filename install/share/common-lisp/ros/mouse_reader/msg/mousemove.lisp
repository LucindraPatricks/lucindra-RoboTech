; Auto-generated. Do not edit!


(cl:in-package mouse_reader-msg)


;//! \htmlinclude mousemove.msg.html

(cl:defclass <mousemove> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left
    :reader left
    :initarg :left
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (middle
    :reader middle
    :initarg :middle
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (right
    :reader right
    :initarg :right
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (move
    :reader move
    :initarg :move
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass mousemove (<mousemove>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mousemove>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mousemove)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mouse_reader-msg:<mousemove> is deprecated: use mouse_reader-msg:mousemove instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mousemove>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mouse_reader-msg:header-val is deprecated.  Use mouse_reader-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <mousemove>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mouse_reader-msg:left-val is deprecated.  Use mouse_reader-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'middle-val :lambda-list '(m))
(cl:defmethod middle-val ((m <mousemove>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mouse_reader-msg:middle-val is deprecated.  Use mouse_reader-msg:middle instead.")
  (middle m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <mousemove>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mouse_reader-msg:right-val is deprecated.  Use mouse_reader-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'move-val :lambda-list '(m))
(cl:defmethod move-val ((m <mousemove>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mouse_reader-msg:move-val is deprecated.  Use mouse_reader-msg:move instead.")
  (move m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mousemove>) ostream)
  "Serializes a message object of type '<mousemove>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'middle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'move) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mousemove>) istream)
  "Deserializes a message object of type '<mousemove>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'middle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'move) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mousemove>)))
  "Returns string type for a message object of type '<mousemove>"
  "mouse_reader/mousemove")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mousemove)))
  "Returns string type for a message object of type 'mousemove"
  "mouse_reader/mousemove")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mousemove>)))
  "Returns md5sum for a message object of type '<mousemove>"
  "4a83e60f7318953a6c4c6463003ed1a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mousemove)))
  "Returns md5sum for a message object of type 'mousemove"
  "4a83e60f7318953a6c4c6463003ed1a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mousemove>)))
  "Returns full string definition for message of type '<mousemove>"
  (cl:format cl:nil "Header header~%std_msgs/Bool left~%std_msgs/Bool middle~%std_msgs/Bool right~%geometry_msgs/Point move~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mousemove)))
  "Returns full string definition for message of type 'mousemove"
  (cl:format cl:nil "Header header~%std_msgs/Bool left~%std_msgs/Bool middle~%std_msgs/Bool right~%geometry_msgs/Point move~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mousemove>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'middle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'move))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mousemove>))
  "Converts a ROS message object to a list"
  (cl:list 'mousemove
    (cl:cons ':header (header msg))
    (cl:cons ':left (left msg))
    (cl:cons ':middle (middle msg))
    (cl:cons ':right (right msg))
    (cl:cons ':move (move msg))
))
