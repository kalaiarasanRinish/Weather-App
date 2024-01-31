
import 'package:mvvm_weather_with_apis_getx/Resources/Colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_weather_with_apis_getx/ViewModel/Services/Splash%20Screen/splash_services.dart';

import '../../Resources/images/image_asset.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  SplashServices.getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: AppColors.buildGradientBoxDecoraion(),


      child: Scaffold(

        backgroundColor: Colors.transparent,
        body: Center(
          child: Image.asset(ImageAssets.nightStarRain,height:200,width:200,),
        ),
      ),
    );
  }
}
