// Generated by gencpp from file kusv_msgs/kusv_GlobalPose.msg
// DO NOT EDIT!


#ifndef KUSV_MSGS_MESSAGE_KUSV_GLOBALPOSE_H
#define KUSV_MSGS_MESSAGE_KUSV_GLOBALPOSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace kusv_msgs
{
template <class ContainerAllocator>
struct kusv_GlobalPose_
{
  typedef kusv_GlobalPose_<ContainerAllocator> Type;

  kusv_GlobalPose_()
    : header()
    , Latitude(0.0)
    , Longitude(0.0)
    , Heading(0.0)
    , GPSQuality(0)
    , LatStd(0)
    , LonStd(0)
    , HeadingStd(0)  {
    }
  kusv_GlobalPose_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , Latitude(0.0)
    , Longitude(0.0)
    , Heading(0.0)
    , GPSQuality(0)
    , LatStd(0)
    , LonStd(0)
    , HeadingStd(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _Latitude_type;
  _Latitude_type Latitude;

   typedef double _Longitude_type;
  _Longitude_type Longitude;

   typedef float _Heading_type;
  _Heading_type Heading;

   typedef uint16_t _GPSQuality_type;
  _GPSQuality_type GPSQuality;

   typedef uint16_t _LatStd_type;
  _LatStd_type LatStd;

   typedef uint16_t _LonStd_type;
  _LonStd_type LonStd;

   typedef uint16_t _HeadingStd_type;
  _HeadingStd_type HeadingStd;





  typedef boost::shared_ptr< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> const> ConstPtr;

}; // struct kusv_GlobalPose_

typedef ::kusv_msgs::kusv_GlobalPose_<std::allocator<void> > kusv_GlobalPose;

typedef boost::shared_ptr< ::kusv_msgs::kusv_GlobalPose > kusv_GlobalPosePtr;
typedef boost::shared_ptr< ::kusv_msgs::kusv_GlobalPose const> kusv_GlobalPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator1> & lhs, const ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.Latitude == rhs.Latitude &&
    lhs.Longitude == rhs.Longitude &&
    lhs.Heading == rhs.Heading &&
    lhs.GPSQuality == rhs.GPSQuality &&
    lhs.LatStd == rhs.LatStd &&
    lhs.LonStd == rhs.LonStd &&
    lhs.HeadingStd == rhs.HeadingStd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator1> & lhs, const ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kusv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "57b9e4be8f27b18208f562fe0b5d18e5";
  }

  static const char* value(const ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x57b9e4be8f27b182ULL;
  static const uint64_t static_value2 = 0x08f562fe0b5d18e5ULL;
};

template<class ContainerAllocator>
struct DataType< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kusv_msgs/kusv_GlobalPose";
  }

  static const char* value(const ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float64 Latitude\n"
"float64 Longitude\n"
"float32 Heading\n"
"uint16 GPSQuality\n"
"uint16 LatStd\n"
"uint16 LonStd\n"
"uint16 HeadingStd\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.Latitude);
      stream.next(m.Longitude);
      stream.next(m.Heading);
      stream.next(m.GPSQuality);
      stream.next(m.LatStd);
      stream.next(m.LonStd);
      stream.next(m.HeadingStd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct kusv_GlobalPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kusv_msgs::kusv_GlobalPose_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "Latitude: ";
    Printer<double>::stream(s, indent + "  ", v.Latitude);
    s << indent << "Longitude: ";
    Printer<double>::stream(s, indent + "  ", v.Longitude);
    s << indent << "Heading: ";
    Printer<float>::stream(s, indent + "  ", v.Heading);
    s << indent << "GPSQuality: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.GPSQuality);
    s << indent << "LatStd: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.LatStd);
    s << indent << "LonStd: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.LonStd);
    s << indent << "HeadingStd: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.HeadingStd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KUSV_MSGS_MESSAGE_KUSV_GLOBALPOSE_H