import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_weather_with_apis_getx/Resources/images/image_asset.dart';
import 'package:mvvm_weather_with_apis_getx/Utilities/utilities.dart';

import '../../../ViewModel/Controller/home_controller.dart';

class Location extends StatelessWidget {
   Location({Key? key}) : super(key: key);

  final  controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {

        return Row(
          key: key,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  controller.getAddress(),
                        style: const TextStyle(
                          height: 0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),
                ),
                Text(
                  Utilities.formateDate(DateTime.now()),
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
           const  Spacer(),
             SizedBox(
              height: 150,
              width: 150,
              child:Padding(padding: EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(ImageAssets.maps,
                    fit: BoxFit.cover,
                  ),



                ),

              )

            )
          ],
        );

  }
}
