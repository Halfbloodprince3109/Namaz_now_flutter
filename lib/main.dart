import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(360, 690),
    minTextAdapt: true,
    child: GetMaterialApp(
      home: SplashScreen(),
    ),
  ));
}
