// Generated by gencpp from file ur_moveit_planner/moveToCartesianPoseGoal.msg
// DO NOT EDIT!


#ifndef UR_MOVEIT_PLANNER_MESSAGE_MOVETOCARTESIANPOSEGOAL_H
#define UR_MOVEIT_PLANNER_MESSAGE_MOVETOCARTESIANPOSEGOAL_H


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
struct moveToCartesianPoseGoal_
{
  typedef moveToCartesianPoseGoal_<ContainerAllocator> Type;

  moveToCartesianPoseGoal_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , u(0.0)
    , v(0.0)
    , w(0.0)  {
    }
  moveToCartesianPoseGoal_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , u(0.0)
    , v(0.0)
    , w(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef float _u_type;
  _u_type u;

   typedef float _v_type;
  _v_type v;

   typedef float _w_type;
  _w_type w;




  typedef boost::shared_ptr< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> const> ConstPtr;

}; // struct moveToCartesianPoseGoal_

typedef ::ur_moveit_planner::moveToCartesianPoseGoal_<std::allocator<void> > moveToCartesianPoseGoal;

typedef boost::shared_ptr< ::ur_moveit_planner::moveToCartesianPoseGoal > moveToCartesianPoseGoalPtr;
typedef boost::shared_ptr< ::ur_moveit_planner::moveToCartesianPoseGoal const> moveToCartesianPoseGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "689e070c789f6952ec03273192a87647";
  }

  static const char* value(const ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x689e070c789f6952ULL;
  static const uint64_t static_value2 = 0xec03273192a87647ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur_moveit_planner/moveToCartesianPoseGoal";
  }

  static const char* value(const ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#inputs\n\
float32 x\n\
float32 y\n\
float32 z\n\
float32 u\n\
float32 v\n\
float32 w\n\
";
  }

  static const char* value(const ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.u);
      stream.next(m.v);
      stream.next(m.w);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveToCartesianPoseGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur_moveit_planner::moveToCartesianPoseGoal_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
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

#endif // UR_MOVEIT_PLANNER_MESSAGE_MOVETOCARTESIANPOSEGOAL_H
