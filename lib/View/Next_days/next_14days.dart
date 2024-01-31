import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_weather_with_apis_getx/Resources/Colors/colors.dart';
import 'package:mvvm_weather_with_apis_getx/View/Next_days/Components/app_bar.dart';
import 'package:mvvm_weather_with_apis_getx/View/Next_days/Components/bottem_list.dart';
import 'package:mvvm_weather_with_apis_getx/View/Next_days/Components/center_card.dart';
import 'package:mvvm_weather_with_apis_getx/View/Next_days/Components/days_list.dart';
import 'package:mvvm_weather_with_apis_getx/ViewModel/Controller/home_controller.dart';

class NextDays extends StatelessWidget {
  NextDays({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: AppColors.buildGradientBoxDecoraion(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: 20),
                    CustomAppBarz(),
                    SizedBox(height: 20),
                    DaysList(),


                  ],
                ),
                Hero(tag:'Tag',
                    child: Material(color: Colors.transparent,
                      child: CenterCard(),)),
                Positioned(
                  bottom: 1,
                  child: Container(
                    height: size.height / 1.9,
                    width: size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100),
                        )
                    ),
                  ),
                ),
                BottemList(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
