# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/NavSBAS.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ublox_msgs.msg

class NavSBAS(genpy.Message):
  _md5sum = "4ea0a5f1e74c114f14024eb1bc277c57"
  _type = "ublox_msgs/NavSBAS"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# NAV-SBAS (0x01 0x32)
# SBAS Status Data
#
# This message outputs the status of the SBAS sub system
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 50

uint32 iTOW             # GPS Millisecond time of week [ms]

uint8 geo               # PRN Number of the GEO where correction and integrity 
                        # data is used from

uint8 mode              # SBAS Mode
uint8 MODE_DISABLED = 0
uint8 MODE_ENABLED_INTEGRITY = 1
uint8 MODE_ENABLED_TESTMODE = 3

int8 sys                # SBAS System (WAAS/EGNOS/...)
int8 SYS_UNKNOWN = -1
int8 SYS_WAAS = 0
int8 SYS_EGNOS = 1
int8 SYS_MSAS = 2
int8 SYS_GAGAN = 3
int8 SYS_GPS = 16

uint8 service           # SBAS Services available
uint8 SERVICE_RANGING = 1
uint8 SERVICE_CORRECTIONS = 2
uint8 SERVICE_INTEGRITY = 4
uint8 SERVICE_TESTMODE = 8

uint8 cnt               # Number of SV data following
uint8[3] reserved0      # Reserved

NavSBAS_SV[] sv

================================================================================
MSG: ublox_msgs/NavSBAS_SV
# see message NavSBAS
#

uint8 svid              # SV Id
uint8 flags             # Flags for this SV
uint8 udre              # Monitoring status
uint8 svSys             # System (WAAS/EGNOS/...), same as SYS
uint8 svService         # Services available, same as SERVICE
uint8 reserved1         # Reserved
int16 prc               # Pseudo Range correction in [cm]
uint16 reserved2        # Reserved
int16 ic                # Ionosphere correction in [cm]
"""
  # Pseudo-constants
  CLASS_ID = 1
  MESSAGE_ID = 50
  MODE_DISABLED = 0
  MODE_ENABLED_INTEGRITY = 1
  MODE_ENABLED_TESTMODE = 3
  SYS_UNKNOWN = -1
  SYS_WAAS = 0
  SYS_EGNOS = 1
  SYS_MSAS = 2
  SYS_GAGAN = 3
  SYS_GPS = 16
  SERVICE_RANGING = 1
  SERVICE_CORRECTIONS = 2
  SERVICE_INTEGRITY = 4
  SERVICE_TESTMODE = 8

  __slots__ = ['iTOW','geo','mode','sys','service','cnt','reserved0','sv']
  _slot_types = ['uint32','uint8','uint8','int8','uint8','uint8','uint8[3]','ublox_msgs/NavSBAS_SV[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       iTOW,geo,mode,sys,service,cnt,reserved0,sv

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavSBAS, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.iTOW is None:
        self.iTOW = 0
      if self.geo is None:
        self.geo = 0
      if self.mode is None:
        self.mode = 0
      if self.sys is None:
        self.sys = 0
      if self.service is None:
        self.service = 0
      if self.cnt is None:
        self.cnt = 0
      if self.reserved0 is None:
        self.reserved0 = b'\0'*3
      if self.sv is None:
        self.sv = []
    else:
      self.iTOW = 0
      self.geo = 0
      self.mode = 0
      self.sys = 0
      self.service = 0
      self.cnt = 0
      self.reserved0 = b'\0'*3
      self.sv = []

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
      buff.write(_get_struct_I2Bb2B().pack(_x.iTOW, _x.geo, _x.mode, _x.sys, _x.service, _x.cnt))
      _x = self.reserved0
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_3B().pack(*_x))
      else:
        buff.write(_get_struct_3s().pack(_x))
      length = len(self.sv)
      buff.write(_struct_I.pack(length))
      for val1 in self.sv:
        _x = val1
        buff.write(_get_struct_6BhHh().pack(_x.svid, _x.flags, _x.udre, _x.svSys, _x.svService, _x.reserved1, _x.prc, _x.reserved2, _x.ic))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.sv is None:
        self.sv = None
      end = 0
      _x = self
      start = end
      end += 9
      (_x.iTOW, _x.geo, _x.mode, _x.sys, _x.service, _x.cnt,) = _get_struct_I2Bb2B().unpack(str[start:end])
      start = end
      end += 3
      self.reserved0 = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.sv = []
      for i in range(0, length):
        val1 = ublox_msgs.msg.NavSBAS_SV()
        _x = val1
        start = end
        end += 12
        (_x.svid, _x.flags, _x.udre, _x.svSys, _x.svService, _x.reserved1, _x.prc, _x.reserved2, _x.ic,) = _get_struct_6BhHh().unpack(str[start:end])
        self.sv.append(val1)
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
      buff.write(_get_struct_I2Bb2B().pack(_x.iTOW, _x.geo, _x.mode, _x.sys, _x.service, _x.cnt))
      _x = self.reserved0
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_3B().pack(*_x))
      else:
        buff.write(_get_struct_3s().pack(_x))
      length = len(self.sv)
      buff.write(_struct_I.pack(length))
      for val1 in self.sv:
        _x = val1
        buff.write(_get_struct_6BhHh().pack(_x.svid, _x.flags, _x.udre, _x.svSys, _x.svService, _x.reserved1, _x.prc, _x.reserved2, _x.ic))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.sv is None:
        self.sv = None
      end = 0
      _x = self
      start = end
      end += 9
      (_x.iTOW, _x.geo, _x.mode, _x.sys, _x.service, _x.cnt,) = _get_struct_I2Bb2B().unpack(str[start:end])
      start = end
      end += 3
      self.reserved0 = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.sv = []
      for i in range(0, length):
        val1 = ublox_msgs.msg.NavSBAS_SV()
        _x = val1
        start = end
        end += 12
        (_x.svid, _x.flags, _x.udre, _x.svSys, _x.svService, _x.reserved1, _x.prc, _x.reserved2, _x.ic,) = _get_struct_6BhHh().unpack(str[start:end])
        self.sv.append(val1)
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
_struct_6BhHh = None
def _get_struct_6BhHh():
    global _struct_6BhHh
    if _struct_6BhHh is None:
        _struct_6BhHh = struct.Struct("<6BhHh")
    return _struct_6BhHh
_struct_I2Bb2B = None
def _get_struct_I2Bb2B():
    global _struct_I2Bb2B
    if _struct_I2Bb2B is None:
        _struct_I2Bb2B = struct.Struct("<I2Bb2B")
    return _struct_I2Bb2B