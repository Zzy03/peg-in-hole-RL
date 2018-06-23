// Generated by gencpp from file ur_moveit_planner/currentPoseResponse.msg
// DO NOT EDIT!


#ifndef UR_MOVEIT_PLANNER_MESSAGE_CURRENTPOSERESPONSE_H
#define UR_MOVEIT_PLANNER_MESSAGE_CURRENTPOSERESPONSE_H


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
struct currentPoseResponse_
{
  typedef currentPoseResponse_<ContainerAllocator> Type;

  currentPoseResponse_()
    : motionComplete(false)  {
    }
  currentPoseResponse_(const ContainerAllocator& _alloc)
    : motionComplete(false)  {
  (void)_alloc;
    }



   typedef uint8_t _motionComplete_type;
  _motionComplete_type motionComplete;




  typedef boost::shared_ptr< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> const> ConstPtr;

}; // struct currentPoseResponse_

typedef ::ur_moveit_planner::currentPoseResponse_<std::allocator<void> > currentPoseResponse;

typedef boost::shared_ptr< ::ur_moveit_planner::currentPoseResponse > currentPoseResponsePtr;
typedef boost::shared_ptr< ::ur_moveit_planner::currentPoseResponse const> currentPoseResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9f739e08659d6e65dcea7b75b197c1e0";
  }

  static const char* value(const ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9f739e08659d6e65ULL;
  static const uint64_t static_value2 = 0xdcea7b75b197c1e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur_moveit_planner/currentPoseResponse";
  }

  static const char* value(const ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
bool motionComplete\n\
\n\
\n\
";
  }

  static const char* value(const ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.motionComplete);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct currentPoseResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur_moveit_planner::currentPoseResponse_<ContainerAllocator>& v)
  {
    s << indent << "motionComplete: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motionComplete);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR_MOVEIT_PLANNER_MESSAGE_CURRENTPOSERESPONSE_H
