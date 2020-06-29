# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/RxmRTCM.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RxmRTCM(genpy.Message):
  _md5sum = "86ca768ef7c0009454812a5f8c6badfc"
  _type = "ublox_msgs/RxmRTCM"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# RXM-RTCM (0x02 0x32)
# RTCM input status
#
# Output upon processing of an RTCM input message
# Supported on:
# - u-blox 8 / u-blox M8 from protocol version 20.01 up to version 23.01
# 

uint8 CLASS_ID = 2
uint8 MESSAGE_ID = 50

uint8 version                 # Message version (0x02 for this version)
uint8 flags                   # RTCM input status flags
uint8 FLAGS_CRC_FAILED = 1    # 0 when RTCM message received and passed CRC 
                              # check, 1 when failed in which case refStation
                              # and msgType might be corrupted and misleading

uint8[2] reserved0            # Reserved

uint16 refStation             # Reference station ID
uint16 msgType                # Message type
"""
  # Pseudo-constants
  CLASS_ID = 2
  MESSAGE_ID = 50
  FLAGS_CRC_FAILED = 1

  __slots__ = ['version','flags','reserved0','refStation','msgType']
  _slot_types = ['uint8','uint8','uint8[2]','uint16','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       version,flags,reserved0,refStation,msgType

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RxmRTCM, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.version is None:
        self.version = 0
      if self.flags is None:
        self.flags = 0
      if self.reserved0 is None:
        self.reserved0 = b'\0'*2
      if self.refStation is None:
        self.refStation = 0
      if self.msgType is None:
        self.msgType = 0
    else:
      self.version = 0
      self.flags = 0
      self.reserved0 = b'\0'*2
      self.refStation = 0
      self.msgType = 0

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
      buff.write(_get_struct_2B().pack(_x.version, _x.flags))
      _x = self.reserved0
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_2B().pack(*_x))
      else:
        buff.write(_get_struct_2s().pack(_x))
      _x = self
      buff.write(_get_struct_2H().pack(_x.refStation, _x.msgType))
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
      end += 2
      (_x.version, _x.flags,) = _get_struct_2B().unpack(str[start:end])
      start = end
      end += 2
      self.reserved0 = str[start:end]
      _x = self
      start = end
      end += 4
      (_x.refStation, _x.msgType,) = _get_struct_2H().unpack(str[start:end])
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
      buff.write(_get_struct_2B().pack(_x.version, _x.flags))
      _x = self.reserved0
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_2B().pack(*_x))
      else:
        buff.write(_get_struct_2s().pack(_x))
      _x = self
      buff.write(_get_struct_2H().pack(_x.refStation, _x.msgType))
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
      end += 2
      (_x.version, _x.flags,) = _get_struct_2B().unpack(str[start:end])
      start = end
      end += 2
      self.reserved0 = str[start:end]
      _x = self
      start = end
      end += 4
      (_x.refStation, _x.msgType,) = _get_struct_2H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_2H = None
def _get_struct_2H():
    global _struct_2H
    if _struct_2H is None:
        _struct_2H = struct.Struct("<2H")
    return _struct_2H
_struct_2s = None
def _get_struct_2s():
    global _struct_2s
    if _struct_2s is None:
        _struct_2s = struct.Struct("<2s")
    return _struct_2s
