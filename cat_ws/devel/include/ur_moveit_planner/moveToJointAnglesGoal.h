// Generated by gencpp from file ur_moveit_planner/moveToJointAnglesGoal.msg
// DO NOT EDIT!


#ifndef UR_MOVEIT_PLANNER_MESSAGE_MOVETOJOINTANGLESGOAL_H
#define UR_MOVEIT_PLANNER_MESSAGE_MOVETOJOINTANGLESGOAL_H


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
struct moveToJointAnglesGoal_
{
  typedef moveToJointAnglesGoal_<ContainerAllocator> Type;

  moveToJointAnglesGoal_()
    : a1(0.0)
    , a2(0.0)
    , a3(0.0)
    , a4(0.0)
    , a5(0.0)
    , a6(0.0)  {
    }
  moveToJointAnglesGoal_(const ContainerAllocator& _alloc)
    : a1(0.0)
    , a2(0.0)
    , a3(0.0)
    , a4(0.0)
    , a5(0.0)
    , a6(0.0)  {
  (void)_alloc;
    }



   typedef float _a1_type;
  _a1_type a1;

   typedef float _a2_type;
  _a2_type a2;

   typedef float _a3_type;
  _a3_type a3;

   typedef float _a4_type;
  _a4_type a4;

   typedef float _a5_type;
  _a5_type a5;

   typedef float _a6_type;
  _a6_type a6;




  typedef boost::shared_ptr< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> const> ConstPtr;

}; // struct moveToJointAnglesGoal_

typedef ::ur_moveit_planner::moveToJointAnglesGoal_<std::allocator<void> > moveToJointAnglesGoal;

typedef boost::shared_ptr< ::ur_moveit_planner::moveToJointAnglesGoal > moveToJointAnglesGoalPtr;
typedef boost::shared_ptr< ::ur_moveit_planner::moveToJointAnglesGoal const> moveToJointAnglesGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ba493cf9a78377f9d5f83ae607fbf843";
  }

  static const char* value(const ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xba493cf9a78377f9ULL;
  static const uint64_t static_value2 = 0xd5f83ae607fbf843ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur_moveit_planner/moveToJointAnglesGoal";
  }

  static const char* value(const ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#inputs\n\
float32 a1\n\
float32 a2\n\
float32 a3\n\
float32 a4\n\
float32 a5\n\
float32 a6\n\
";
  }

  static const char* value(const ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a1);
      stream.next(m.a2);
      stream.next(m.a3);
      stream.next(m.a4);
      stream.next(m.a5);
      stream.next(m.a6);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveToJointAnglesGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator>& v)
  {
    s << indent << "a1: ";
    Printer<float>::stream(s, indent + "  ", v.a1);
    s << indent << "a2: ";
    Printer<float>::stream(s, indent + "  ", v.a2);
    s << indent << "a3: ";
    Printer<float>::stream(s, indent + "  ", v.a3);
    s << indent << "a4: ";
    Printer<float>::stream(s, indent + "  ", v.a4);
    s << indent << "a5: ";
    Printer<float>::stream(s, indent + "  ", v.a5);
    s << indent << "a6: ";
    Printer<float>::stream(s, indent + "  ", v.a6);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR_MOVEIT_PLANNER_MESSAGE_MOVETOJOINTANGLESGOAL_H
