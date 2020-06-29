# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/NavPOSECEF.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class NavPOSECEF(genpy.Message):
  _md5sum = "6f1f4f9473d5586f7fa1427a3c53cee9"
  _type = "ublox_msgs/NavPOSECEF"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# NAV-POSECEF (0x01 0x01)
# Position Solution in ECEF
#
# See important comments concerning validity of position given in section
# Navigation Output Filters.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 1

uint32 iTOW             # GPS Millisecond Time of Week [ms]

int32 ecefX             # ECEF X coordinate [cm]
int32 ecefY             # ECEF Y coordinate [cm]
int32 ecefZ             # ECEF Z coordinate [cm]
uint32 pAcc             # Position Accuracy Estimate [cm]
"""
  # Pseudo-constants
  CLASS_ID = 1
  MESSAGE_ID = 1

  __slots__ = ['iTOW','ecefX','ecefY','ecefZ','pAcc']
  _slot_types = ['uint32','int32','int32','int32','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       iTOW,ecefX,ecefY,ecefZ,pAcc

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavPOSECEF, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.iTOW is None:
        self.iTOW = 0
      if self.ecefX is None:
        self.ecefX = 0
      if self.ecefY is None:
        self.ecefY = 0
      if self.ecefZ is None:
        self.ecefZ = 0
      if self.pAcc is None:
        self.pAcc = 0
    else:
      self.iTOW = 0
      self.ecefX = 0
      self.ecefY = 0
      self.ecefZ = 0
      self.pAcc = 0

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
      buff.write(_get_struct_I3iI().pack(_x.iTOW, _x.ecefX, _x.ecefY, _x.ecefZ, _x.pAcc))
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
      end += 20
      (_x.iTOW, _x.ecefX, _x.ecefY, _x.ecefZ, _x.pAcc,) = _get_struct_I3iI().unpack(str[start:end])
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
      buff.write(_get_struct_I3iI().pack(_x.iTOW, _x.ecefX, _x.ecefY, _x.ecefZ, _x.pAcc))
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
      end += 20
      (_x.iTOW, _x.ecefX, _x.ecefY, _x.ecefZ, _x.pAcc,) = _get_struct_I3iI().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_I3iI = None
def _get_struct_I3iI():
    global _struct_I3iI
    if _struct_I3iI is None:
        _struct_I3iI = struct.Struct("<I3iI")
    return _struct_I3iI
