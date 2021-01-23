// Generated by gencpp from file as_assignment/odomDataFeedback.msg
// DO NOT EDIT!


#ifndef AS_ASSIGNMENT_MESSAGE_ODOMDATAFEEDBACK_H
#define AS_ASSIGNMENT_MESSAGE_ODOMDATAFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/Odometry.h>

namespace as_assignment
{
template <class ContainerAllocator>
struct odomDataFeedback_
{
  typedef odomDataFeedback_<ContainerAllocator> Type;

  odomDataFeedback_()
    : currentValues()  {
    }
  odomDataFeedback_(const ContainerAllocator& _alloc)
    : currentValues(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::Odometry_<ContainerAllocator>  _currentValues_type;
  _currentValues_type currentValues;





  typedef boost::shared_ptr< ::as_assignment::odomDataFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::as_assignment::odomDataFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct odomDataFeedback_

typedef ::as_assignment::odomDataFeedback_<std::allocator<void> > odomDataFeedback;

typedef boost::shared_ptr< ::as_assignment::odomDataFeedback > odomDataFeedbackPtr;
typedef boost::shared_ptr< ::as_assignment::odomDataFeedback const> odomDataFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::as_assignment::odomDataFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::as_assignment::odomDataFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::as_assignment::odomDataFeedback_<ContainerAllocator1> & lhs, const ::as_assignment::odomDataFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.currentValues == rhs.currentValues;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::as_assignment::odomDataFeedback_<ContainerAllocator1> & lhs, const ::as_assignment::odomDataFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace as_assignment

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::as_assignment::odomDataFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::as_assignment::odomDataFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::as_assignment::odomDataFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::as_assignment::odomDataFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::as_assignment::odomDataFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::as_assignment::odomDataFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::as_assignment::odomDataFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d511308bb8ff39e474358f535bbdacc1";
  }

  static const char* value(const ::as_assignment::odomDataFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd511308bb8ff39e4ULL;
  static const uint64_t static_value2 = 0x74358f535bbdacc1ULL;
};

template<class ContainerAllocator>
struct DataType< ::as_assignment::odomDataFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "as_assignment/odomDataFeedback";
  }

  static const char* value(const ::as_assignment::odomDataFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::as_assignment::odomDataFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#Feedback\n"
"nav_msgs/Odometry currentValues\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Odometry\n"
"# This represents an estimate of a position and velocity in free space.  \n"
"# The pose in this message should be specified in the coordinate frame given by header.frame_id.\n"
"# The twist in this message should be specified in the coordinate frame given by the child_frame_id\n"
"Header header\n"
"string child_frame_id\n"
"geometry_msgs/PoseWithCovariance pose\n"
"geometry_msgs/TwistWithCovariance twist\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/TwistWithCovariance\n"
"# This expresses velocity in free space with uncertainty.\n"
"\n"
"Twist twist\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::as_assignment::odomDataFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::as_assignment::odomDataFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.currentValues);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct odomDataFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::as_assignment::odomDataFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::as_assignment::odomDataFeedback_<ContainerAllocator>& v)
  {
    s << indent << "currentValues: ";
    s << std::endl;
    Printer< ::nav_msgs::Odometry_<ContainerAllocator> >::stream(s, indent + "  ", v.currentValues);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AS_ASSIGNMENT_MESSAGE_ODOMDATAFEEDBACK_H
