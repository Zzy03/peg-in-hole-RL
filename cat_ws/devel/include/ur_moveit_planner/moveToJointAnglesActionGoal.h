// Generated by gencpp from file ur_moveit_planner/moveToJointAnglesActionGoal.msg
// DO NOT EDIT!


#ifndef UR_MOVEIT_PLANNER_MESSAGE_MOVETOJOINTANGLESACTIONGOAL_H
#define UR_MOVEIT_PLANNER_MESSAGE_MOVETOJOINTANGLESACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <ur_moveit_planner/moveToJointAnglesGoal.h>

namespace ur_moveit_planner
{
template <class ContainerAllocator>
struct moveToJointAnglesActionGoal_
{
  typedef moveToJointAnglesActionGoal_<ContainerAllocator> Type;

  moveToJointAnglesActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  moveToJointAnglesActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct moveToJointAnglesActionGoal_

typedef ::ur_moveit_planner::moveToJointAnglesActionGoal_<std::allocator<void> > moveToJointAnglesActionGoal;

typedef boost::shared_ptr< ::ur_moveit_planner::moveToJointAnglesActionGoal > moveToJointAnglesActionGoalPtr;
typedef boost::shared_ptr< ::ur_moveit_planner::moveToJointAnglesActionGoal const> moveToJointAnglesActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ur_moveit_planner

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'object_recognition_msgs': ['/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg'], 'octomap_msgs': ['/opt/ros/kinetic/share/octomap_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'ur_moveit_planner': ['/home/wzc/cat_ws/src/ur_moveit_planner/msg', '/home/wzc/cat_ws/devel/share/ur_moveit_planner/msg'], 'moveit_msgs': ['/opt/ros/kinetic/share/moveit_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6cbfda2ea142001a80e3669b41068c46";
  }

  static const char* value(const ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6cbfda2ea142001aULL;
  static const uint64_t static_value2 = 0x80e3669b41068c46ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur_moveit_planner/moveToJointAnglesActionGoal";
  }

  static const char* value(const ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
moveToJointAnglesGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: ur_moveit_planner/moveToJointAnglesGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#inputs\n\
float32 a1\n\
float32 a2\n\
float32 a3\n\
float32 a4\n\
float32 a5\n\
float32 a6\n\
";
  }

  static const char* value(const ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveToJointAnglesActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur_moveit_planner::moveToJointAnglesActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::ur_moveit_planner::moveToJointAnglesGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR_MOVEIT_PLANNER_MESSAGE_MOVETOJOINTANGLESACTIONGOAL_H