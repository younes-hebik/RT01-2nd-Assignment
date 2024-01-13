// Auto-generated. Do not edit!

// (in-package assignment_2_2023.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Custom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posx = null;
      this.posy = null;
      this.velx = null;
      this.vely = null;
    }
    else {
      if (initObj.hasOwnProperty('posx')) {
        this.posx = initObj.posx
      }
      else {
        this.posx = 0.0;
      }
      if (initObj.hasOwnProperty('posy')) {
        this.posy = initObj.posy
      }
      else {
        this.posy = 0.0;
      }
      if (initObj.hasOwnProperty('velx')) {
        this.velx = initObj.velx
      }
      else {
        this.velx = 0.0;
      }
      if (initObj.hasOwnProperty('vely')) {
        this.vely = initObj.vely
      }
      else {
        this.vely = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Custom
    // Serialize message field [posx]
    bufferOffset = _serializer.float32(obj.posx, buffer, bufferOffset);
    // Serialize message field [posy]
    bufferOffset = _serializer.float32(obj.posy, buffer, bufferOffset);
    // Serialize message field [velx]
    bufferOffset = _serializer.float32(obj.velx, buffer, bufferOffset);
    // Serialize message field [vely]
    bufferOffset = _serializer.float32(obj.vely, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Custom
    let len;
    let data = new Custom(null);
    // Deserialize message field [posx]
    data.posx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [posy]
    data.posy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velx]
    data.velx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vely]
    data.vely = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assignment_2_2023/Custom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96d26a4348b9e22969093b954705dc9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 posx
    float32 posy
    float32 velx
    float32 vely
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Custom(null);
    if (msg.posx !== undefined) {
      resolved.posx = msg.posx;
    }
    else {
      resolved.posx = 0.0
    }

    if (msg.posy !== undefined) {
      resolved.posy = msg.posy;
    }
    else {
      resolved.posy = 0.0
    }

    if (msg.velx !== undefined) {
      resolved.velx = msg.velx;
    }
    else {
      resolved.velx = 0.0
    }

    if (msg.vely !== undefined) {
      resolved.vely = msg.vely;
    }
    else {
      resolved.vely = 0.0
    }

    return resolved;
    }
};

module.exports = Custom;
