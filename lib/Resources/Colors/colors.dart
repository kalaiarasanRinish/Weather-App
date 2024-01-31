import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors{
  static BoxDecoration buildGradientBoxDecoraion()
  {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.white,Colors.blue],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.0,1.0],
        tileMode: TileMode.clamp

      )
    );
  }
}
