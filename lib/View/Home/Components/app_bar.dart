import 'package:flutter/material.dart';
import 'package:mvvm_weather_with_apis_getx/Resources/images/image_asset.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        SizedBox(width: 10.0,),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.notifications_none_rounded,
            color: Colors.grey,
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset(
            ImageAssets.nightRain,
            height: 30,
            width: 30,
          ),
        ),
      ],
    );
  }
}
