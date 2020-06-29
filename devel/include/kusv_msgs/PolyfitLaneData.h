// Generated by gencpp from file kusv_msgs/PolyfitLaneData.msg
// DO NOT EDIT!


#ifndef KUSV_MSGS_MESSAGE_POLYFITLANEDATA_H
#define KUSV_MSGS_MESSAGE_POLYFITLANEDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kusv_msgs
{
template <class ContainerAllocator>
struct PolyfitLaneData_
{
  typedef PolyfitLaneData_<ContainerAllocator> Type;

  PolyfitLaneData_()
    : id()
    , frame_id()
    , a(0.0)
    , b(0.0)
    , c(0.0)
    , d(0.0)  {
    }
  PolyfitLaneData_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , frame_id(_alloc)
    , a(0.0)
    , b(0.0)
    , c(0.0)
    , d(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _frame_id_type;
  _frame_id_type frame_id;

   typedef double _a_type;
  _a_type a;

   typedef double _b_type;
  _b_type b;

   typedef double _c_type;
  _c_type c;

   typedef double _d_type;
  _d_type d;





  typedef boost::shared_ptr< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> const> ConstPtr;

}; // struct PolyfitLaneData_

typedef ::kusv_msgs::PolyfitLaneData_<std::allocator<void> > PolyfitLaneData;

typedef boost::shared_ptr< ::kusv_msgs::PolyfitLaneData > PolyfitLaneDataPtr;
typedef boost::shared_ptr< ::kusv_msgs::PolyfitLaneData const> PolyfitLaneDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kusv_msgs::PolyfitLaneData_<ContainerAllocator1> & lhs, const ::kusv_msgs::PolyfitLaneData_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.frame_id == rhs.frame_id &&
    lhs.a == rhs.a &&
    lhs.b == rhs.b &&
    lhs.c == rhs.c &&
    lhs.d == rhs.d;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kusv_msgs::PolyfitLaneData_<ContainerAllocator1> & lhs, const ::kusv_msgs::PolyfitLaneData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kusv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f7c7079dbd89d464ec0f14174b3f0f89";
  }

  static const char* value(const ::kusv_msgs::PolyfitLaneData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf7c7079dbd89d464ULL;
  static const uint64_t static_value2 = 0xec0f14174b3f0f89ULL;
};

template<class ContainerAllocator>
struct DataType< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kusv_msgs/PolyfitLaneData";
  }

  static const char* value(const ::kusv_msgs::PolyfitLaneData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string id\n"
"string frame_id\n"
"float64 a\n"
"float64 b\n"
"float64 c\n"
"float64 d\n"
;
  }

  static const char* value(const ::kusv_msgs::PolyfitLaneData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.frame_id);
      stream.next(m.a);
      stream.next(m.b);
      stream.next(m.c);
      stream.next(m.d);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PolyfitLaneData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kusv_msgs::PolyfitLaneData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kusv_msgs::PolyfitLaneData_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.frame_id);
    s << indent << "a: ";
    Printer<double>::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    Printer<double>::stream(s, indent + "  ", v.b);
    s << indent << "c: ";
    Printer<double>::stream(s, indent + "  ", v.c);
    s << indent << "d: ";
    Printer<double>::stream(s, indent + "  ", v.d);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KUSV_MSGS_MESSAGE_POLYFITLANEDATA_H
