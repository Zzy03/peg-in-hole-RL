// Generated by gencpp from file ur_moveit_planner/Rpy.msg
// DO NOT EDIT!


#ifndef UR_MOVEIT_PLANNER_MESSAGE_RPY_H
#define UR_MOVEIT_PLANNER_MESSAGE_RPY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ur_moveit_planner
{
template <class ContainerAllocator>
struct Rpy_
{
  typedef Rpy_<ContainerAllocator> Type;

  Rpy_()
    : u(0.0)
    , v(0.0)
    , w(0.0)  {
    }
  Rpy_(const ContainerAllocator& _alloc)
    : u(0.0)
    , v(0.0)
    , w(0.0)  {
  (void)_alloc;
    }



   typedef float _u_type;
  _u_type u;

   typedef float _v_type;
  _v_type v;

   typedef float _w_type;
  _w_type w;




  typedef boost::shared_ptr< ::ur_moveit_planner::Rpy_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur_moveit_planner::Rpy_<ContainerAllocator> const> ConstPtr;

}; // struct Rpy_

typedef ::ur_moveit_planner::Rpy_<std::allocator<void> > Rpy;

typedef boost::shared_ptr< ::ur_moveit_planner::Rpy > RpyPtr;
typedef boost::shared_ptr< ::ur_moveit_planner::Rpy const> RpyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur_moveit_planner::Rpy_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur_moveit_planner::Rpy_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ur_moveit_planner

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'object_recognition_msgs': ['/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg'], 'octomap_msgs': ['/opt/ros/kinetic/share/octomap_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'ur_moveit_planner': ['/home/wzc/cat_ws/src/ur_moveit_planner/msg', '/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg'], 'moveit_msgs': ['/opt/ros/kinetic/share/moveit_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ur_moveit_planner::Rpy_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_moveit_planner::Rpy_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_moveit_planner::Rpy_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_moveit_planner::Rpy_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_moveit_planner::Rpy_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_moveit_planner::Rpy_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur_moveit_planner::Rpy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3e053b7c204c5284962522efbf66bb32";
  }

  static const char* value(const ::ur_moveit_planner::Rpy_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3e053b7c204c5284ULL;
  static const uint64_t static_value2 = 0x962522efbf66bb32ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur_moveit_planner::Rpy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur_moveit_planner/Rpy";
  }

  static const char* value(const ::ur_moveit_planner::Rpy_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur_moveit_planner::Rpy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 u\n\
float32 v\n\
float32 w\n\
";
  }

  static const char* value(const ::ur_moveit_planner::Rpy_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur_moveit_planner::Rpy_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.u);
      stream.next(m.v);
      stream.next(m.w);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Rpy_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur_moveit_planner::Rpy_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur_moveit_planner::Rpy_<ContainerAllocator>& v)
  {
    s << indent << "u: ";
    Printer<float>::stream(s, indent + "  ", v.u);
    s << indent << "v: ";
    Printer<float>::stream(s, indent + "  ", v.v);
    s << indent << "w: ";
    Printer<float>::stream(s, indent + "  ", v.w);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR_MOVEIT_PLANNER_MESSAGE_RPY_H
