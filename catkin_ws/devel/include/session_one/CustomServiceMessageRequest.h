// Generated by gencpp from file session_one/CustomServiceMessageRequest.msg
// DO NOT EDIT!


#ifndef SESSION_ONE_MESSAGE_CUSTOMSERVICEMESSAGEREQUEST_H
#define SESSION_ONE_MESSAGE_CUSTOMSERVICEMESSAGEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace session_one
{
template <class ContainerAllocator>
struct CustomServiceMessageRequest_
{
  typedef CustomServiceMessageRequest_<ContainerAllocator> Type;

  CustomServiceMessageRequest_()
    {
    }
  CustomServiceMessageRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CustomServiceMessageRequest_

typedef ::session_one::CustomServiceMessageRequest_<std::allocator<void> > CustomServiceMessageRequest;

typedef boost::shared_ptr< ::session_one::CustomServiceMessageRequest > CustomServiceMessageRequestPtr;
typedef boost::shared_ptr< ::session_one::CustomServiceMessageRequest const> CustomServiceMessageRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::session_one::CustomServiceMessageRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace session_one

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::session_one::CustomServiceMessageRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "session_one/CustomServiceMessageRequest";
  }

  static const char* value(const ::session_one::CustomServiceMessageRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::session_one::CustomServiceMessageRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CustomServiceMessageRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::session_one::CustomServiceMessageRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::session_one::CustomServiceMessageRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // SESSION_ONE_MESSAGE_CUSTOMSERVICEMESSAGEREQUEST_H
