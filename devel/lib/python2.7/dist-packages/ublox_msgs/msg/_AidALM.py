# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/AidALM.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class AidALM(genpy.Message):
  _md5sum = "de5ab2550e698fc8acfb7263c7c55fa2"
  _type = "ublox_msgs/AidALM"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# AID-ALM (0x0B 0x30)
# GPS Aiding Almanach Input/Output Message
#
# All UBX-AID messages are deprecated; use UBX-MGA messages instead
# - If the WEEK Value is 0, DWRD0 to DWRD7 are not sent as the almanach is not 
#   available for the given SV. This may happen even if NAV-SVINFO and RXM-SVSI 
#   are indicating almanac availability as the internal data may not represent 
#   the content of an original broadcast almanac (or only parts thereof).
# - DWORD0 to DWORD7 contain the 8 words following the Hand-Over Word ( HOW )
#   from the GPS navigation message, either pages 1 to 24 of sub-frame 5 or 
#   pages 2 to 10 of subframe 4. See IS-GPS-200 for a full description of the 
#   contents of the Almanac pages.
# - In DWORD0 to DWORD7, the parity bits have been removed, and the 24 bits of 
#   data are located in Bits 0 to 23. Bits 24 to 31 shall be ignored.
# - Example: Parameter e (Eccentricity) from Almanach Subframe 4/5, Word 3, 
#   Bits 69-84 within the subframe can be found in DWRD0, Bits 15-0 whereas 
#   Bit 0 is the LSB.

uint8 CLASS_ID = 11
uint8 MESSAGE_ID = 48

uint32 svid             # SV ID for which the receiver shall return its 
                        # Almanac Data (Valid Range: 1 .. 32 or 51, 56, 63).
uint32 week             # Issue Date of Almanach (GPS week number)

# Start of optional block
uint32[] dwrd           # Almanach Words
# End of optional block
"""
  # Pseudo-constants
  CLASS_ID = 11
  MESSAGE_ID = 48

  __slots__ = ['svid','week','dwrd']
  _slot_types = ['uint32','uint32','uint32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       svid,week,dwrd

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AidALM, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.svid is None:
        self.svid = 0
      if self.week is None:
        self.week = 0
      if self.dwrd is None:
        self.dwrd = []
    else:
      self.svid = 0
      self.week = 0
      self.dwrd = []

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
      buff.write(_get_struct_2I().pack(_x.svid, _x.week))
      length = len(self.dwrd)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(struct.pack(pattern, *self.dwrd))
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
      end += 8
      (_x.svid, _x.week,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.dwrd = struct.unpack(pattern, str[start:end])
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
      buff.write(_get_struct_2I().pack(_x.svid, _x.week))
      length = len(self.dwrd)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(self.dwrd.tostring())
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
      end += 8
      (_x.svid, _x.week,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.dwrd = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=length)
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
