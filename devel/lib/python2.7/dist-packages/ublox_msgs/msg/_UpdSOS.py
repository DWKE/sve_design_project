# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/UpdSOS.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class UpdSOS(genpy.Message):
  _md5sum = "fdc2e32dbb00126a932ae76a6222eec4"
  _type = "ublox_msgs/UpdSOS"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# UPD-SOS (0x09 0x14)
#
# Firmware Supported on:
# u-blox 8 / u-blox M8 from protocol version 15 up to version 23.01
#

uint8 CLASS_ID = 9
uint8 MESSAGE_ID = 20

uint8 cmd                   # Command
# The host can send this message in order to save part of the BBR memory in a 
# file in flash file system. The feature is designed in order to emulate the 
# presence of the backup battery even if it is not present; the host can issue 
# the save on shutdown command before switching off the device supply. It is 
# recommended to issue a GNSS stop command before, in order to keep the BBR 
# memory content consistent.
uint8 CMD_FLASH_BACKUP_CREATE = 0    # Create Backup File in Flash
# The host can send this message in order to erase the backup file present in 
# flash. It is recommended that the clear operation is issued after the host has 
# received the notification that the memory has been restored after a reset. 
# Alternatively the host can parse the startup string 'Restored data saved on 
# shutdown' or poll the UBX-UPD-SOS message for getting the status.
uint8 CMD_FLASH_BACKUP_CLEAR = 1     # Clear Backup File in Flash

uint8[3] reserved1          # Reserved"""
  # Pseudo-constants
  CLASS_ID = 9
  MESSAGE_ID = 20
  CMD_FLASH_BACKUP_CREATE = 0
  CMD_FLASH_BACKUP_CLEAR = 1

  __slots__ = ['cmd','reserved1']
  _slot_types = ['uint8','uint8[3]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cmd,reserved1

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UpdSOS, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cmd is None:
        self.cmd = 0
      if self.reserved1 is None:
        self.reserved1 = b'\0'*3
    else:
      self.cmd = 0
      self.reserved1 = b'\0'*3

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
      _x = self.cmd
      buff.write(_get_struct_B().pack(_x))
      _x = self.reserved1
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
      (self.cmd,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 3
      self.reserved1 = str[start:end]
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
      _x = self.cmd
      buff.write(_get_struct_B().pack(_x))
      _x = self.reserved1
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
      (self.cmd,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 3
      self.reserved1 = str[start:end]
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
