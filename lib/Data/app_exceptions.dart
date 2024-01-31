
class AppException implements Exception
{
  String? _prefix;
  String? _message;

  AppException([this._prefix,this ._message]);

  @override
  String toString() {
    // TODO: implement toString
    return '$_prefix$_message';
  }
}
class InternetException extends AppException
{
  InternetException([String? message]) : super(message,'Internet Erorr Issues');

}
class RequestTimeOut extends AppException
{
  RequestTimeOut([String? message]) : super(message,'The request has Time out');
}
class ServerErorr extends AppException
{
  ServerErorr([String? message]): super (message,'An internal Server erorr occurred');

}
class InvalidUrlException extends AppException
{
  InvalidUrlException([String? message]): super (message,'The Url provided is Invalid');
}

class FetchDataExpection extends AppException
{
  FetchDataExpection([String? message]): super (message,'Failed to Fetch Data from Server');
}
