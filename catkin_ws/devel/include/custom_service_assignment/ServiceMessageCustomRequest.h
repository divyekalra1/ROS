// Generated by gencpp from file custom_service_assignment/ServiceMessageCustomRequest.msg
// DO NOT EDIT!


#ifndef CUSTOM_SERVICE_ASSIGNMENT_MESSAGE_SERVICEMESSAGECUSTOMREQUEST_H
#define CUSTOM_SERVICE_ASSIGNMENT_MESSAGE_SERVICEMESSAGECUSTOMREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace custom_service_assignment
{
template <class ContainerAllocator>
struct ServiceMessageCustomRequest_
{
  typedef ServiceMessageCustomRequest_<ContainerAllocator> Type;

  ServiceMessageCustomRequest_()
    : distance(0.0)  {
    }
  ServiceMessageCustomRequest_(const ContainerAllocator& _alloc)
    : distance(0.0)  {
  (void)_alloc;
    }



   typedef float _distance_type;
  _distance_type distance;





  typedef boost::shared_ptr< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ServiceMessageCustomRequest_

typedef ::custom_service_assignment::ServiceMessageCustomRequest_<std::allocator<void> > ServiceMessageCustomRequest;

typedef boost::shared_ptr< ::custom_service_assignment::ServiceMessageCustomRequest > ServiceMessageCustomRequestPtr;
typedef boost::shared_ptr< ::custom_service_assignment::ServiceMessageCustomRequest const> ServiceMessageCustomRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator1> & lhs, const ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator2> & rhs)
{
  return lhs.distance == rhs.distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator1> & lhs, const ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace custom_service_assignment

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6e77fb10f0c8b4833ec273aa9ac74459";
  }

  static const char* value(const ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6e77fb10f0c8b483ULL;
  static const uint64_t static_value2 = 0x3ec273aa9ac74459ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_service_assignment/ServiceMessageCustomRequest";
  }

  static const char* value(const ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 distance\n"
;
  }

  static const char* value(const ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServiceMessageCustomRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_service_assignment::ServiceMessageCustomRequest_<ContainerAllocator>& v)
  {
    s << indent << "distance: ";
    Printer<float>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_SERVICE_ASSIGNMENT_MESSAGE_SERVICEMESSAGECUSTOMREQUEST_H
