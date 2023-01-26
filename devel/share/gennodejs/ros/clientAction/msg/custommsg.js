// Auto-generated. Do not edit!

// (in-package clientAction.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class custommsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.linear_vel = null;
      this.angular_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear_vel')) {
        this.linear_vel = initObj.linear_vel
      }
      else {
        this.linear_vel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular_vel')) {
        this.angular_vel = initObj.angular_vel
      }
      else {
        this.angular_vel = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type custommsg
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [linear_vel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_vel, buffer, bufferOffset);
    // Serialize message field [angular_vel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type custommsg
    let len;
    let data = new custommsg(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_vel]
    data.linear_vel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_vel]
    data.angular_vel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'clientAction/custommsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00736ead694a5e07bcff16ebadc9051b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 pose
    geometry_msgs/Vector3 linear_vel
    geometry_msgs/Vector3 angular_vel
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new custommsg(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Vector3.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear_vel !== undefined) {
      resolved.linear_vel = geometry_msgs.msg.Vector3.Resolve(msg.linear_vel)
    }
    else {
      resolved.linear_vel = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular_vel !== undefined) {
      resolved.angular_vel = geometry_msgs.msg.Vector3.Resolve(msg.angular_vel)
    }
    else {
      resolved.angular_vel = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = custommsg;
