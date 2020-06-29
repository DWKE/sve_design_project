# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mavros_msgs/VehicleInfoGetRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class VehicleInfoGetRequest(genpy.Message):
  _md5sum = "c1911e97179d4b379a979e2ab8e01e5c"
  _type = "mavros_msgs/VehicleInfoGetRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Request the Vehicle Info
# use this to request the current target sysid / compid defined in mavros
# set get_all = True to request all available vehicles

uint8 GET_MY_SYSID = 0
uint8 GET_MY_COMPID = 0

uint8 sysid
uint8 compid
bool get_all
"""
  # Pseudo-constants
  GET_MY_SYSID = 0
  GET_MY_COMPID = 0

  __slots__ = ['sysid','compid','get_all']
  _slot_types = ['uint8','uint8','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       sysid,compid,get_all

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VehicleInfoGetRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.sysid is None:
        self.sysid = 0
      if self.compid is None:
        self.compid = 0
      if self.get_all is None:
        self.get_all = False
    else:
      self.sysid = 0
      self.compid = 0
      self.get_all = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3B().pack(_x.sysid, _x.compid, _x.get_all))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 3
      (_x.sysid, _x.compid, _x.get_all,) = _get_struct_3B().unpack(str[start:end])
      self.get_all = bool(self.get_all)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3B().pack(_x.sysid, _x.compid, _x.get_all))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 3
      (_x.sysid, _x.compid, _x.get_all,) = _get_struct_3B().unpack(str[start:end])
      self.get_all = bool(self.get_all)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mavros_msgs/VehicleInfoGetResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mavros_msgs.msg
import std_msgs.msg

class VehicleInfoGetResponse(genpy.Message):
  _md5sum = "d6808eae4fdcafd1421caee685a286b5"
  _type = "mavros_msgs/VehicleInfoGetResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool success
mavros_msgs/VehicleInfo[] vehicles



================================================================================
MSG: mavros_msgs/VehicleInfo
# Vehicle Info msg

std_msgs/Header header

uint8 HAVE_INFO_HEARTBEAT = 1
uint8 HAVE_INFO_AUTOPILOT_VERSION = 2
uint8 available_info		# Bitmap shows what info is available

# Vehicle address
uint8 sysid                     # SYSTEM ID
uint8 compid                    # COMPONENT ID

# -*- Heartbeat info -*-
uint8 autopilot                 # MAV_AUTOPILOT
uint8 type                      # MAV_TYPE
uint8 system_status             # MAV_STATE
uint8 base_mode
uint32 custom_mode
string mode                     # MAV_MODE string
uint32 mode_id                  # MAV_MODE number

# -*- Autopilot version -*-
uint64 capabilities             # MAV_PROTOCOL_CAPABILITY
uint32 flight_sw_version        # Firmware version number
uint32 middleware_sw_version    # Middleware version number
uint32 os_sw_version            # Operating system version number
uint32 board_version            # HW / board version (last 8 bytes should be silicon ID, if any)
uint16 vendor_id                # ID of the board vendor
uint16 product_id               # ID of the product
uint64 uid                      # UID if provided by hardware

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
"""
  __slots__ = ['success','vehicles']
  _slot_types = ['bool','mavros_msgs/VehicleInfo[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       success,vehicles

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VehicleInfoGetResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = False
      if self.vehicles is None:
        self.vehicles = []
    else:
      self.success = False
      self.vehicles = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
      length = len(self.vehicles)
      buff.write(_struct_I.pack(length))
      for val1 in self.vehicles:
        _v1 = val1.header
        _x = _v1.seq
        buff.write(_get_struct_I().pack(_x))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_7BI().pack(_x.available_info, _x.sysid, _x.compid, _x.autopilot, _x.type, _x.system_status, _x.base_mode, _x.custom_mode))
        _x = val1.mode
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_IQ4I2HQ().pack(_x.mode_id, _x.capabilities, _x.flight_sw_version, _x.middleware_sw_version, _x.os_sw_version, _x.board_version, _x.vendor_id, _x.product_id, _x.uid))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.vehicles is None:
        self.vehicles = None
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.vehicles = []
      for i in range(0, length):
        val1 = mavros_msgs.msg.VehicleInfo()
        _v3 = val1.header
        start = end
        end += 4
        (_v3.seq,) = _get_struct_I().unpack(str[start:end])
        _v4 = _v3.stamp
        _x = _v4
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v3.frame_id = str[start:end].decode('utf-8')
        else:
          _v3.frame_id = str[start:end]
        _x = val1
        start = end
        end += 11
        (_x.available_info, _x.sysid, _x.compid, _x.autopilot, _x.type, _x.system_status, _x.base_mode, _x.custom_mode,) = _get_struct_7BI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.mode = str[start:end].decode('utf-8')
        else:
          val1.mode = str[start:end]
        _x = val1
        start = end
        end += 40
        (_x.mode_id, _x.capabilities, _x.flight_sw_version, _x.middleware_sw_version, _x.os_sw_version, _x.board_version, _x.vendor_id, _x.product_id, _x.uid,) = _get_struct_IQ4I2HQ().unpack(str[start:end])
        self.vehicles.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
      length = len(self.vehicles)
      buff.write(_struct_I.pack(length))
      for val1 in self.vehicles:
        _v5 = val1.header
        _x = _v5.seq
        buff.write(_get_struct_I().pack(_x))
        _v6 = _v5.stamp
        _x = _v6
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v5.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_7BI().pack(_x.available_info, _x.sysid, _x.compid, _x.autopilot, _x.type, _x.system_status, _x.base_mode, _x.custom_mode))
        _x = val1.mode
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_IQ4I2HQ().pack(_x.mode_id, _x.capabilities, _x.flight_sw_version, _x.middleware_sw_version, _x.os_sw_version, _x.board_version, _x.vendor_id, _x.product_id, _x.uid))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.vehicles is None:
        self.vehicles = None
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.vehicles = []
      for i in range(0, length):
        val1 = mavros_msgs.msg.VehicleInfo()
        _v7 = val1.header
        start = end
        end += 4
        (_v7.seq,) = _get_struct_I().unpack(str[start:end])
        _v8 = _v7.stamp
        _x = _v8
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.frame_id = str[start:end].decode('utf-8')
        else:
          _v7.frame_id = str[start:end]
        _x = val1
        start = end
        end += 11
        (_x.available_info, _x.sysid, _x.compid, _x.autopilot, _x.type, _x.system_status, _x.base_mode, _x.custom_mode,) = _get_struct_7BI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.mode = str[start:end].decode('utf-8')
        else:
          val1.mode = str[start:end]
        _x = val1
        start = end
        end += 40
        (_x.mode_id, _x.capabilities, _x.flight_sw_version, _x.middleware_sw_version, _x.os_sw_version, _x.board_version, _x.vendor_id, _x.product_id, _x.uid,) = _get_struct_IQ4I2HQ().unpack(str[start:end])
        self.vehicles.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_7BI = None
def _get_struct_7BI():
    global _struct_7BI
    if _struct_7BI is None:
        _struct_7BI = struct.Struct("<7BI")
    return _struct_7BI
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_IQ4I2HQ = None
def _get_struct_IQ4I2HQ():
    global _struct_IQ4I2HQ
    if _struct_IQ4I2HQ is None:
        _struct_IQ4I2HQ = struct.Struct("<IQ4I2HQ")
    return _struct_IQ4I2HQ
class VehicleInfoGet(object):
  _type          = 'mavros_msgs/VehicleInfoGet'
  _md5sum = '519756d07eeab57c2f1ab9495e90e33f'
  _request_class  = VehicleInfoGetRequest
  _response_class = VehicleInfoGetResponse
