# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/CfgDGNSS.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CfgDGNSS(genpy.Message):
  _md5sum = "2ec4391f93581f9db720bbc0af2b613e"
  _type = "ublox_msgs/CfgDGNSS"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# CFG-DGNSS (0x06 0x70)
# DGNSS configuration
#
# This message allows the user to configure the DGNSS configuration of the 
# receiver.
# Supported on:
#  - u-blox 8 / u-blox M8 from protocol version 20.01 up to version 23.01 (only
#    with High Precision GNSS products)

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 112

uint8 dgnssMode                 # Specifies differential mode:
uint8 DGNSS_MODE_RTK_FLOAT = 2    # RTK float: No attempts are made to fix
                                  # ambiguities.
uint8 DGNSS_MODE_RTK_FIXED = 3    # RTK fixed: Ambiguities are fixed whenever
                                  # possible.
uint8[3] reserved0              # Reserved"""
  # Pseudo-constants
  CLASS_ID = 6
  MESSAGE_ID = 112
  DGNSS_MODE_RTK_FLOAT = 2
  DGNSS_MODE_RTK_FIXED = 3

  __slots__ = ['dgnssMode','reserved0']
  _slot_types = ['uint8','uint8[3]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       dgnssMode,reserved0

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CfgDGNSS, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.dgnssMode is None:
        self.dgnssMode = 0
      if self.reserved0 is None:
        self.reserved0 = b'\0'*3
    else:
      self.dgnssMode = 0
      self.reserved0 = b'\0'*3

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
      _x = self.dgnssMode
      buff.write(_get_struct_B().pack(_x))
      _x = self.reserved0
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_3B().pack(*_x))
      else:
        buff.write(_get_struct_3s().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.dgnssMode,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 3
      self.reserved0 = str[start:end]
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
      _x = self.dgnssMode
      buff.write(_get_struct_B().pack(_x))
      _x = self.reserved0
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_3B().pack(*_x))
      else:
        buff.write(_get_struct_3s().pack(_x))
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
      start = end
      end += 1
      (self.dgnssMode,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 3
      self.reserved0 = str[start:end]
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
_struct_3s = None
def _get_struct_3s():
    global _struct_3s
    if _struct_3s is None:
        _struct_3s = struct.Struct("<3s")
    return _struct_3s
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
