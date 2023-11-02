import 'dart:async';
// import 'dart:math';
import 'package:get/get.dart';
// import 'package:namaz_mode_app/Hexagon_Painter_splashscreen.dart';
import 'temporary_home.dart';
import 'package:flutter/material.dart';
import './Region_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int duration = 5;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: duration),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => RegionSelectionScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/ssnn.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   int duration = 50;

//   @override
//   void initState() {
//     super.initState();
//     Timer(
//       Duration(seconds: duration),
//       () {
//         Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => HomeScreen()),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Container(
//       color: Color(0xFF012323),
//       width: Get.width,
//       height: Get.height,
//       child: Transform.rotate(
//         angle: pi / 2,
//         child: CustomPaint(
//           size: MediaQuery.of(context).size,
//           painter: DiamondHexagonPainter(),
//           child: Center(
//             child: Text(
//               "Content goes here",
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//       ),
//     )));
//   }
// }
