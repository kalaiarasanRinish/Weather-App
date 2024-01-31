import 'dart:convert';
import 'dart:io';
import 'package:mvvm_weather_with_apis_getx/Data/app_exceptions.dart';
import 'package:http/http.dart' as http;
import 'base_api_service.dart';




class ApiServices extends BaseApiService
{
  dynamic jsonResponse(http.Response response) {
    switch( response.statusCode) {
    case 200:
    var jsonResponse = jsonDecode(response.body);
    return jsonResponse;

    case 400:
    var jsonResponse = jsonDecode(response.body);
    return jsonResponse;

    default:
    throw FetchDataExpection(
      'Error While Communication ${response.statusCode}'
    );


    }
  }
  @override
  Future getApi(String url)async
  {
    var jsonData;
    try {
      var response = await http.get(Uri.parse(url)).timeout( const Duration(seconds: 10));
     jsonData = jsonResponse(response);

    } on RequestTimeOut {
      throw RequestTimeOut('RequestTimeOut');
    }on SocketException
    {
      throw InternetException('No Internet');
    }
    return jsonData;
  }
  }
