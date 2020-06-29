# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/NavSAT.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ublox_msgs.msg

class NavSAT(genpy.Message):
  _md5sum = "e8ea6afd23cb79e7e7385313416d9c15"
  _type = "ublox_msgs/NavSAT"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# NAV-SAT (0x01 0x35)
# Satellite Information
#
# This message displays information about SVs which are either known to be 
# visible or currently tracked by the receiver.
#

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 53

uint32 iTOW                # GPS time of week of the navigation epoch. [ms]
uint8 version              # Message version (1 for this version)
uint8 numSvs               # Number of satellites
uint8[2] reserved0         # Reserved 

# start of repeated block (numSvs times)
NavSAT_SV[]  sv
# end of repeated block
================================================================================
MSG: ublox_msgs/NavSAT_SV
# see NAV-SAT message
#

uint8 gnssId      # GNSS identifier
uint8 svId        # Satellite identifier

uint8 cno         # Carrier to noise ratio (signal strength) ]dBHz
int8 elev         # Elevation (range: +/-90), unknown if out of range [deg]
int16 azim        # Azimuth (range 0-360), unknown if elevation is out of range 
                  # [deg]
int16 prRes       # Pseudo range residual [0.1 m]

uint32 flags      # Bitmask
uint32 FLAGS_QUALITY_IND_MASK = 7     # Signal quality indicator:
uint8 QUALITY_IND_NO_SIGNAL = 0                     # no signal
uint8 QUALITY_IND_SEARCHING_SIGNAL = 1              # searching signal
uint8 QUALITY_IND_SIGNAL_ACQUIRED = 2               # signal acquired
uint8 QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE = 3  # signal detected but 
                                                    # unusable
uint8 QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC = 4     # code locked and time 
                                                    # synchronized
uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1 = 5 # code and carrier 
                                                        # locked and time 
                                                        # synchronized, 
                                                        # quality = 1
uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2 = 6 # code and carrier 
                                                        # locked and time 
                                                        # synchronized, 
                                                        # quality = 2
uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3 = 7 # code and carrier 
                                                        # locked and time 
                                                        # synchronized, 
                                                        # quality = 3
# Note: Since IMES signals are not time synchronized, a channel tracking an IMES 
# signal can never reach a quality indicator value of higher than 3.
uint32 FLAGS_SV_USED = 8                      # whether SV is currently being 
                                              # used for navigation
uint32 FLAGS_HEALTH_MASK = 48                 # SV health flag:
uint32 HEALTH_UNKNOWN = 0                       # unknown
uint32 HEALTH_HEALTHY = 1                       # healthy
uint32 HEALTH_UNHEALTHY = 2                     # unhealthy
uint32 FLAGS_DIFF_CORR = 64                   # whether differential correction 
                                              # data is available for this SV
uint32 FLAGS_SMOOTHED = 128                   # whether carrier smoothed 
                                              # pseudorange used
uint32 FLAGS_ORBIT_SOURCE_MASK = 1792         # Orbit source:
uint32 ORBIT_SOURCE_UNAVAILABLE = 0             # no orbit information is 
                                              # available for this SV
uint32 ORBIT_SOURCE_EPH = 256                   # ephemeris is used
uint32 ORBIT_SOURCE_ALM = 512                   # almanac is used
uint32 ORBIT_SOURCE_ASSIST_OFFLINE = 768        # AssistNow Offline orbit is 
                                                # used
uint32 ORBIT_SOURCE_ASSIST_AUTONOMOUS = 1024    # AssistNow Autonomous orbit is 
                                                # used
uint32 ORBIT_SOURCE_OTHER1 = 1280               # other orbit information is 
                                                # used
uint32 ORBIT_SOURCE_OTHER2 = 1536               # other orbit information is 
                                                # used
uint32 ORBIT_SOURCE_OTHER3 = 1792               # other orbit information is 
                                                # used
uint32 FLAGS_EPH_AVAIL = 2048                 # whether ephemeris is available 
                                              # for this SV
uint32 FLAGS_ALM_AVAIL = 4096                 # whether almanac is available for 
                                              # this SV
uint32 FLAGS_ANO_AVAIL = 8192                 # whether AssistNow Offline data 
                                              # is available for this SV
uint32 FLAGS_AOP_AVAIL = 16384                # whether AssistNow Autonomous 
                                              # data is available for this SV
uint32 FLAGS_SBAS_CORR_USED = 65536           # whether SBAS corrections have 
                                              # been used for this SV
uint32 FLAGS_RTCM_CORR_USED = 131072          # whether RTCM corrections have 
                                              # been used for this SV
uint32 FLAGS_PR_CORR_USED = 1048576           # whether Pseudorange corrections 
                                              # have been used for this SV
uint32 FLAGS_CR_CORR_USED = 2097152           # whether Carrier range 
                                              # corrections have been used for 
                                              # this SV
uint32 FLAGS_DO_CORR_USED = 4194304           # whether Range rate (Doppler) 
                                              # corrections have been used for 
                                              # this SV"""
  # Pseudo-constants
  CLASS_ID = 1
  MESSAGE_ID = 53

  __slots__ = ['iTOW','version','numSvs','reserved0','sv']
  _slot_types = ['uint32','uint8','uint8','uint8[2]','ublox_msgs/NavSAT_SV[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       iTOW,version,numSvs,reserved0,sv

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavSAT, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.iTOW is None:
        self.iTOW = 0
      if self.version is None:
        self.version = 0
      if self.numSvs is None:
        self.numSvs = 0
      if self.reserved0 is None:
        self.reserved0 = b'\0'*2
      if self.sv is None:
        self.sv = []
    else:
      self.iTOW = 0
      self.version = 0
      self.numSvs = 0
      self.reserved0 = b'\0'*2
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
      buff.write(_get_struct_I2B().pack(_x.iTOW, _x.version, _x.numSvs))
      _x = self.reserved0
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_2B().pack(*_x))
      else:
        buff.write(_get_struct_2s().pack(_x))
      length = len(self.sv)
      buff.write(_struct_I.pack(length))
      for val1 in self.sv:
        _x = val1
        buff.write(_get_struct_3Bb2hI().pack(_x.gnssId, _x.svId, _x.cno, _x.elev, _x.azim, _x.prRes, _x.flags))
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
      end += 6
      (_x.iTOW, _x.version, _x.numSvs,) = _get_struct_I2B().unpack(str[start:end])
      start = end
      end += 2
      self.reserved0 = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.sv = []
      for i in range(0, length):
        val1 = ublox_msgs.msg.NavSAT_SV()
        _x = val1
        start = end
        end += 12
        (_x.gnssId, _x.svId, _x.cno, _x.elev, _x.azim, _x.prRes, _x.flags,) = _get_struct_3Bb2hI().unpack(str[start:end])
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
      buff.write(_get_struct_I2B().pack(_x.iTOW, _x.version, _x.numSvs))
      _x = self.reserved0
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_2B().pack(*_x))
      else:
        buff.write(_get_struct_2s().pack(_x))
      length = len(self.sv)
      buff.write(_struct_I.pack(length))
      for val1 in self.sv:
        _x = val1
        buff.write(_get_struct_3Bb2hI().pack(_x.gnssId, _x.svId, _x.cno, _x.elev, _x.azim, _x.prRes, _x.flags))
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
      end += 6
      (_x.iTOW, _x.version, _x.numSvs,) = _get_struct_I2B().unpack(str[start:end])
      start = end
      end += 2
      self.reserved0 = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.sv = []
      for i in range(0, length):
        val1 = ublox_msgs.msg.NavSAT_SV()
        _x = val1
        start = end
        end += 12
        (_x.gnssId, _x.svId, _x.cno, _x.elev, _x.azim, _x.prRes, _x.flags,) = _get_struct_3Bb2hI().unpack(str[start:end])
        self.sv.append(val1)
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
_struct_2s = None
def _get_struct_2s():
    global _struct_2s
    if _struct_2s is None:
        _struct_2s = struct.Struct("<2s")
    return _struct_2s
_struct_3Bb2hI = None
def _get_struct_3Bb2hI():
    global _struct_3Bb2hI
    if _struct_3Bb2hI is None:
        _struct_3Bb2hI = struct.Struct("<3Bb2hI")
    return _struct_3Bb2hI
_struct_I2B = None
def _get_struct_I2B():
    global _struct_I2B
    if _struct_I2B is None:
        _struct_I2B = struct.Struct("<I2B")
    return _struct_I2B
