# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/RxmSVSI.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ublox_msgs.msg

class RxmSVSI(genpy.Message):
  _md5sum = "8358c0613232b962d48cf13f5bda0070"
  _type = "ublox_msgs/RxmSVSI"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# RXM-SVSI (0x02 0x20)
# SV Status Info
#
# Status of the receiver manager knowledge about GPS Orbit Validity
#
# This message has only been retained for backwards compatibility; users are
# recommended to use the UBX-NAV-ORB message in preference.

uint8 CLASS_ID = 2
uint8 MESSAGE_ID = 32

int32 iTOW              # GPS time of week of the navigation epoch [ms]
int16 week              # GPS week number of the navigation epoch [weeks]

uint8 numVis            # Number of visible satellites
uint8 numSV             # Number of per-SV data blocks following

RxmSVSI_SV[] sv

================================================================================
MSG: ublox_msgs/RxmSVSI_SV
# see message RxmSVSI
#

uint8 svid            # Satellite ID

uint8 svFlag          # Information Flags
uint8 FLAG_URA_MASK = 15      # Figure of Merit (URA) range 0..15
uint8 FLAG_HEALTHY = 16       # SV healthy flag
uint8 FLAG_EPH_VAL = 32       # Ephemeris valid
uint8 FLAG_ALM_VAL = 64       # Almanac valid
uint8 FLAG_NOT_AVAIL = 128    # SV not available

int16 azim            # Azimuth
int8 elev             # Elevation

uint8 age             # Age of Almanac and Ephemeris
uint8 AGE_ALM_MASK = 15       # Age of ALM in days offset by 4
                              # i.e. the reference time may be in the future:
                              # ageOfAlm = (age & 0x0f) - 4
uint8 AGE_EPH_MASK = 240      # Age of EPH in hours offset by 4.
                              # i.e. the reference time may be in the future:
                              # ageOfEph = ((age & 0xf0) >> 4) - 4
"""
  # Pseudo-constants
  CLASS_ID = 2
  MESSAGE_ID = 32

  __slots__ = ['iTOW','week','numVis','numSV','sv']
  _slot_types = ['int32','int16','uint8','uint8','ublox_msgs/RxmSVSI_SV[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       iTOW,week,numVis,numSV,sv

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RxmSVSI, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.iTOW is None:
        self.iTOW = 0
      if self.week is None:
        self.week = 0
      if self.numVis is None:
        self.numVis = 0
      if self.numSV is None:
        self.numSV = 0
      if self.sv is None:
        self.sv = []
    else:
      self.iTOW = 0
      self.week = 0
      self.numVis = 0
      self.numSV = 0
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
      buff.write(_get_struct_ih2B().pack(_x.iTOW, _x.week, _x.numVis, _x.numSV))
      length = len(self.sv)
      buff.write(_struct_I.pack(length))
      for val1 in self.sv:
        _x = val1
        buff.write(_get_struct_2BhbB().pack(_x.svid, _x.svFlag, _x.azim, _x.elev, _x.age))
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
      end += 8
      (_x.iTOW, _x.week, _x.numVis, _x.numSV,) = _get_struct_ih2B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.sv = []
      for i in range(0, length):
        val1 = ublox_msgs.msg.RxmSVSI_SV()
        _x = val1
        start = end
        end += 6
        (_x.svid, _x.svFlag, _x.azim, _x.elev, _x.age,) = _get_struct_2BhbB().unpack(str[start:end])
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
      buff.write(_get_struct_ih2B().pack(_x.iTOW, _x.week, _x.numVis, _x.numSV))
      length = len(self.sv)
      buff.write(_struct_I.pack(length))
      for val1 in self.sv:
        _x = val1
        buff.write(_get_struct_2BhbB().pack(_x.svid, _x.svFlag, _x.azim, _x.elev, _x.age))
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
      end += 8
      (_x.iTOW, _x.week, _x.numVis, _x.numSV,) = _get_struct_ih2B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.sv = []
      for i in range(0, length):
        val1 = ublox_msgs.msg.RxmSVSI_SV()
        _x = val1
        start = end
        end += 6
        (_x.svid, _x.svFlag, _x.azim, _x.elev, _x.age,) = _get_struct_2BhbB().unpack(str[start:end])
        self.sv.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2BhbB = None
def _get_struct_2BhbB():
    global _struct_2BhbB
    if _struct_2BhbB is None:
        _struct_2BhbB = struct.Struct("<2BhbB")
    return _struct_2BhbB
_struct_ih2B = None
def _get_struct_ih2B():
    global _struct_ih2B
    if _struct_ih2B is None:
        _struct_ih2B = struct.Struct("<ih2B")
    return _struct_ih2B