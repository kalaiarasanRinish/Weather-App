import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_weather_with_apis_getx/Resources/images/image_asset.dart';
import 'package:mvvm_weather_with_apis_getx/View/Home/Components/small_container.dart';


import '../../../ViewModel/Controller/days_controller.dart';
import '../../../ViewModel/Controller/home_controller.dart';

class SmallContainerList extends StatelessWidget {
   SmallContainerList({super.key});
  final homeController = Get.put(HomeController());
  final controller = Get.put(DaysController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Obx(()=> SmallContainer(text: '${ controller.day.value.precipprob.toInt().toString()}%', image: ImageAssets.heavyRain, color: Colors.white38, textColor: Colors.white),),
        const Spacer(),
        Obx(()=> SmallContainer(text: '${ controller.day.value.windspeed.toInt().toString()}%', image: ImageAssets.wind, color: Colors.white38, textColor: Colors.white),),
        const Spacer(),
        Obx(()=> SmallContainer(text: '${ controller.day.value.humidity.toInt().toString()}%', image: ImageAssets.sun, color: Colors.white38, textColor: Colors.white),),
        const Spacer(),
      ],

    );
  }
}
