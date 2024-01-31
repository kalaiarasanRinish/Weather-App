import 'package:mvvm_weather_with_apis_getx/Data/NetWork/api_services.dart';
import 'package:mvvm_weather_with_apis_getx/Resources/AppUrl/app_url.dart';

class HomeRepository
{
  static Future<dynamic> hitApi()async
  {
    var responce = await ApiServices().getApi(AppUrl.url);
    return responce;
  }
}