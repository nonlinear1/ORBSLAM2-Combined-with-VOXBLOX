// Generated by gencpp from file voxblox_msgs/Triangle.msg
// DO NOT EDIT!


#ifndef VOXBLOX_MSGS_MESSAGE_TRIANGLE_H
#define VOXBLOX_MSGS_MESSAGE_TRIANGLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace voxblox_msgs
{
template <class ContainerAllocator>
struct Triangle_
{
  typedef Triangle_<ContainerAllocator> Type;

  Triangle_()
    : x()
    , y()
    , z()
    , r()
    , g()
    , b()
    , a()  {
      x.assign(0.0);

      y.assign(0.0);

      z.assign(0.0);

      r.assign(0);

      g.assign(0);

      b.assign(0);

      a.assign(0);
  }
  Triangle_(const ContainerAllocator& _alloc)
    : x()
    , y()
    , z()
    , r()
    , g()
    , b()
    , a()  {
  (void)_alloc;
      x.assign(0.0);

      y.assign(0.0);

      z.assign(0.0);

      r.assign(0);

      g.assign(0);

      b.assign(0);

      a.assign(0);
  }



   typedef boost::array<float, 3>  _x_type;
  _x_type x;

   typedef boost::array<float, 3>  _y_type;
  _y_type y;

   typedef boost::array<float, 3>  _z_type;
  _z_type z;

   typedef boost::array<uint8_t, 3>  _r_type;
  _r_type r;

   typedef boost::array<uint8_t, 3>  _g_type;
  _g_type g;

   typedef boost::array<uint8_t, 3>  _b_type;
  _b_type b;

   typedef boost::array<uint8_t, 3>  _a_type;
  _a_type a;





  typedef boost::shared_ptr< ::voxblox_msgs::Triangle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::voxblox_msgs::Triangle_<ContainerAllocator> const> ConstPtr;

}; // struct Triangle_

typedef ::voxblox_msgs::Triangle_<std::allocator<void> > Triangle;

typedef boost::shared_ptr< ::voxblox_msgs::Triangle > TrianglePtr;
typedef boost::shared_ptr< ::voxblox_msgs::Triangle const> TriangleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::voxblox_msgs::Triangle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::voxblox_msgs::Triangle_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace voxblox_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'voxblox_msgs': ['/home/best_jill_forever/catkin_ws/src/voxblox/voxblox_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::voxblox_msgs::Triangle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::voxblox_msgs::Triangle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::voxblox_msgs::Triangle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::voxblox_msgs::Triangle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::voxblox_msgs::Triangle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::voxblox_msgs::Triangle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::voxblox_msgs::Triangle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bdb82e942e7e4fd6074bfc244dfed93f";
  }

  static const char* value(const ::voxblox_msgs::Triangle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbdb82e942e7e4fd6ULL;
  static const uint64_t static_value2 = 0x074bfc244dfed93fULL;
};

template<class ContainerAllocator>
struct DataType< ::voxblox_msgs::Triangle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "voxblox_msgs/Triangle";
  }

  static const char* value(const ::voxblox_msgs::Triangle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::voxblox_msgs::Triangle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Colored triangle used in meshing\n\
\n\
# Position\n\
float32[3] x\n\
float32[3] y\n\
float32[3] z\n\
\n\
# Color\n\
uint8[3] r\n\
uint8[3] g\n\
uint8[3] b\n\
uint8[3] a\n\
";
  }

  static const char* value(const ::voxblox_msgs::Triangle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::voxblox_msgs::Triangle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.r);
      stream.next(m.g);
      stream.next(m.b);
      stream.next(m.a);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Triangle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::voxblox_msgs::Triangle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::voxblox_msgs::Triangle_<ContainerAllocator>& v)
  {
    s << indent << "x[]" << std::endl;
    for (size_t i = 0; i < v.x.size(); ++i)
    {
      s << indent << "  x[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.x[i]);
    }
    s << indent << "y[]" << std::endl;
    for (size_t i = 0; i < v.y.size(); ++i)
    {
      s << indent << "  y[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.y[i]);
    }
    s << indent << "z[]" << std::endl;
    for (size_t i = 0; i < v.z.size(); ++i)
    {
      s << indent << "  z[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.z[i]);
    }
    s << indent << "r[]" << std::endl;
    for (size_t i = 0; i < v.r.size(); ++i)
    {
      s << indent << "  r[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.r[i]);
    }
    s << indent << "g[]" << std::endl;
    for (size_t i = 0; i < v.g.size(); ++i)
    {
      s << indent << "  g[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.g[i]);
    }
    s << indent << "b[]" << std::endl;
    for (size_t i = 0; i < v.b.size(); ++i)
    {
      s << indent << "  b[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.b[i]);
    }
    s << indent << "a[]" << std::endl;
    for (size_t i = 0; i < v.a.size(); ++i)
    {
      s << indent << "  a[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.a[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VOXBLOX_MSGS_MESSAGE_TRIANGLE_H