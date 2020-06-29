# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/NavDGPS_SV.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class NavDGPS_SV(genpy.Message):
  _md5sum = "c16a60aa23db6f4f1a80cf6720b95063"
  _type = "ublox_msgs/NavDGPS_SV"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# see message NavDGPS

uint8 svid              # Satellite ID

uint8 flags             # Bitmask / Channel Number and Usage:
uint8 FLAGS_CHANNEL_MASK = 15   # Bitmask for channel number, range 0..15
                                # Channel numbers > 15 marked as 15
uint8 FLAGS_DGPS = 16           # DGPS Used for this SV

uint16 ageC             # Age of latest correction data [ms]
float32 prc             # Pseudo Range Correction [m]
float32 prrc            # Pseudo Range Rate Correction [m/s]

"""
  # Pseudo-constants
  FLAGS_CHANNEL_MASK = 15
  FLAGS_DGPS = 16

  __slots__ = ['svid','flags','ageC','prc','prrc']
  _slot_types = ['uint8','uint8','uint16','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       svid,flags,ageC,prc,prrc

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavDGPS_SV, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.svid is None:
        self.svid = 0
      if self.flags is None:
        self.flags = 0
      if self.ageC is None:
        self.ageC = 0
      if self.prc is None:
        self.prc = 0.
      if self.prrc is None:
        self.prrc = 0.
    else:
      self.svid = 0
      self.flags = 0
      self.ageC = 0
      self.prc = 0.
      self.prrc = 0.

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
      buff.write(_get_struct_2BH2f().pack(_x.svid, _x.flags, _x.ageC, _x.prc, _x.prrc))
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
      end += 12
      (_x.svid, _x.flags, _x.ageC, _x.prc, _x.prrc,) = _get_struct_2BH2f().unpack(str[start:end])
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
      buff.write(_get_struct_2BH2f().pack(_x.svid, _x.flags, _x.ageC, _x.prc, _x.prrc))
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
      end += 12
      (_x.svid, _x.flags, _x.ageC, _x.prc, _x.prrc,) = _get_struct_2BH2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2BH2f = None
def _get_struct_2BH2f():
    global _struct_2BH2f
    if _struct_2BH2f is None:
        _struct_2BH2f = struct.Struct("<2BH2f")
    return _struct_2BH2f