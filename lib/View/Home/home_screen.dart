import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_weather_with_apis_getx/Resources/Colors/colors.dart';
import 'package:mvvm_weather_with_apis_getx/View/Home/Components/app_bar.dart';
import 'package:mvvm_weather_with_apis_getx/View/Home/Components/container_list.dart';
import 'package:mvvm_weather_with_apis_getx/View/Home/Components/hours_list.dart';
import 'package:mvvm_weather_with_apis_getx/View/Home/Components/info_card.dart';
import 'package:mvvm_weather_with_apis_getx/View/Home/Components/location.dart';
import 'package:mvvm_weather_with_apis_getx/View/Next_days/next_14days.dart';
import 'package:mvvm_weather_with_apis_getx/ViewModel/Controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: AppColors.buildGradientBoxDecoraion(),

      child:  Scaffold(
         backgroundColor: Colors.transparent,
        body: SafeArea(child:Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const CustomAppBar(),
          const SizedBox(
            height: 20,
          ),

          Location(),

            Hero(tag: 'Tag', child: Material(
              color: Colors.transparent,

              child: InfoCard(),
            )
            ),
            ContainerList(),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => Get.to(()=>  NextDays()),
              child: const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
             child: Row(

               children: [
                 Text('Today',
                 style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                   fontSize: 25,

                 ),
                 ),
                 Spacer(),
                 Text(
                   'Next 14 days',
                   style: TextStyle(
                     color: Colors.white70,
                     fontWeight: FontWeight.bold,
                     fontSize: 18,
                   ),
                 ),
               ],
             ),

              ),

            ),
            HoursList()
          ],
        )

        ),
        ),
      ),
    );
  }
}
