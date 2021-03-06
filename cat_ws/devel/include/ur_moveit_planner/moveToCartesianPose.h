// Generated by gencpp from file ur_moveit_planner/moveToCartesianPose.msg
// DO NOT EDIT!


#ifndef UR_MOVEIT_PLANNER_MESSAGE_MOVETOCARTESIANPOSE_H
#define UR_MOVEIT_PLANNER_MESSAGE_MOVETOCARTESIANPOSE_H

#include <ros/service_traits.h>


#include <ur_moveit_planner/moveToCartesianPoseRequest.h>
#include <ur_moveit_planner/moveToCartesianPoseResponse.h>


namespace ur_moveit_planner
{

struct moveToCartesianPose
{

typedef moveToCartesianPoseRequest Request;
typedef moveToCartesianPoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct moveToCartesianPose
} // namespace ur_moveit_planner


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ur_moveit_planner::moveToCartesianPose > {
  static const char* value()
  {
    return "41d6dd698621218dee992cb3b7e0ea60";
  }

  static const char* value(const ::ur_moveit_planner::moveToCartesianPose&) { return value(); }
};

template<>
struct DataType< ::ur_moveit_planner::moveToCartesianPose > {
  static const char* value()
  {
    return "ur_moveit_planner/moveToCartesianPose";
  }

  static const char* value(const ::ur_moveit_planner::moveToCartesianPose&) { return value(); }
};


// service_traits::MD5Sum< ::ur_moveit_planner::moveToCartesianPoseRequest> should match 
// service_traits::MD5Sum< ::ur_moveit_planner::moveToCartesianPose > 
template<>
struct MD5Sum< ::ur_moveit_planner::moveToCartesianPoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ur_moveit_planner::moveToCartesianPose >::value();
  }
  static const char* value(const ::ur_moveit_planner::moveToCartesianPoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ur_moveit_planner::moveToCartesianPoseRequest> should match 
// service_traits::DataType< ::ur_moveit_planner::moveToCartesianPose > 
template<>
struct DataType< ::ur_moveit_planner::moveToCartesianPoseRequest>
{
  static const char* value()
  {
    return DataType< ::ur_moveit_planner::moveToCartesianPose >::value();
  }
  static const char* value(const ::ur_moveit_planner::moveToCartesianPoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ur_moveit_planner::moveToCartesianPoseResponse> should match 
// service_traits::MD5Sum< ::ur_moveit_planner::moveToCartesianPose > 
template<>
struct MD5Sum< ::ur_moveit_planner::moveToCartesianPoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ur_moveit_planner::moveToCartesianPose >::value();
  }
  static const char* value(const ::ur_moveit_planner::moveToCartesianPoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ur_moveit_planner::moveToCartesianPoseResponse> should match 
// service_traits::DataType< ::ur_moveit_planner::moveToCartesianPose > 
template<>
struct DataType< ::ur_moveit_planner::moveToCartesianPoseResponse>
{
  static const char* value()
  {
    return DataType< ::ur_moveit_planner::moveToCartesianPose >::value();
  }
  static const char* value(const ::ur_moveit_planner::moveToCartesianPoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UR_MOVEIT_PLANNER_MESSAGE_MOVETOCARTESIANPOSE_H
