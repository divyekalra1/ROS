// Generated by gencpp from file compound_assignment/CustomServiceMessage.msg
// DO NOT EDIT!


#ifndef COMPOUND_ASSIGNMENT_MESSAGE_CUSTOMSERVICEMESSAGE_H
#define COMPOUND_ASSIGNMENT_MESSAGE_CUSTOMSERVICEMESSAGE_H

#include <ros/service_traits.h>


#include <compound_assignment/CustomServiceMessageRequest.h>
#include <compound_assignment/CustomServiceMessageResponse.h>


namespace compound_assignment
{

struct CustomServiceMessage
{

typedef CustomServiceMessageRequest Request;
typedef CustomServiceMessageResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CustomServiceMessage
} // namespace compound_assignment


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::compound_assignment::CustomServiceMessage > {
  static const char* value()
  {
    return "e886955a85915c1c08925340140db219";
  }

  static const char* value(const ::compound_assignment::CustomServiceMessage&) { return value(); }
};

template<>
struct DataType< ::compound_assignment::CustomServiceMessage > {
  static const char* value()
  {
    return "compound_assignment/CustomServiceMessage";
  }

  static const char* value(const ::compound_assignment::CustomServiceMessage&) { return value(); }
};


// service_traits::MD5Sum< ::compound_assignment::CustomServiceMessageRequest> should match
// service_traits::MD5Sum< ::compound_assignment::CustomServiceMessage >
template<>
struct MD5Sum< ::compound_assignment::CustomServiceMessageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::compound_assignment::CustomServiceMessage >::value();
  }
  static const char* value(const ::compound_assignment::CustomServiceMessageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::compound_assignment::CustomServiceMessageRequest> should match
// service_traits::DataType< ::compound_assignment::CustomServiceMessage >
template<>
struct DataType< ::compound_assignment::CustomServiceMessageRequest>
{
  static const char* value()
  {
    return DataType< ::compound_assignment::CustomServiceMessage >::value();
  }
  static const char* value(const ::compound_assignment::CustomServiceMessageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::compound_assignment::CustomServiceMessageResponse> should match
// service_traits::MD5Sum< ::compound_assignment::CustomServiceMessage >
template<>
struct MD5Sum< ::compound_assignment::CustomServiceMessageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::compound_assignment::CustomServiceMessage >::value();
  }
  static const char* value(const ::compound_assignment::CustomServiceMessageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::compound_assignment::CustomServiceMessageResponse> should match
// service_traits::DataType< ::compound_assignment::CustomServiceMessage >
template<>
struct DataType< ::compound_assignment::CustomServiceMessageResponse>
{
  static const char* value()
  {
    return DataType< ::compound_assignment::CustomServiceMessage >::value();
  }
  static const char* value(const ::compound_assignment::CustomServiceMessageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // COMPOUND_ASSIGNMENT_MESSAGE_CUSTOMSERVICEMESSAGE_H