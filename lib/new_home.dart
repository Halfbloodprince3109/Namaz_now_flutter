import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './Navigationbar.dart';
import './settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          //   mainAxisSize: MainAxisSize.min,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Container(
          //       width: MediaQuery.of(context).size.width,
          //       height: MediaQuery.of(context).size.height * 0.2,
          //       color: Colors.white, // White container above the image
          //     ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              "assets/md.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ]),
        backgroundColor: Color(0xFF013220),
        bottomNavigationBar: MyNavigationBar(
          currentIndex: _currentIndex,
          onIndexChanged: (index) {
            setState(() {
              _currentIndex = index;
            });

            if (index == 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            }
          },
        ),
      ),
    );
  }
}



















// ---------------------------------------------------------
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF013220),
//       body: Center(
//         child: Text(
//           'Welcome to the Home Screen!',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       bottomNavigationBar: Stack(
//         children: [
//           BottomNavigationBar(
//             selectedItemColor: Colors.white,
//             unselectedItemColor: Colors.white,
//             currentIndex: _currentIndex,
//             elevation: 0.0, // Set elevation to 0 for the BottomNavigationBar
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.settings),
//                 label: 'Settings',
//               ),
//             ],
//             onTap: (index) {
//               if (index == 1) {
//                 // Tapped on "Settings" icon, do nothing
//               } else if (index == 0) {
//                 // Tapped on "Home" icon, navigate to HomeScreen
//                 setState(() {
//                   _currentIndex = index;
//                 });
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => HomeScreen()),
//                 );
//               }
//             },
//             selectedLabelStyle: TextStyle(
//               fontSize: 14.0,
//             ),
//             unselectedLabelStyle: TextStyle(
//               fontSize: 14.0,
//             ),
//           ),
//           Positioned(
//             left: 0.0,
//             right: 0.0,
//             bottom: 0.0,
//             child: Container(
//               height: 8.0, // Adjust the elevation height as needed
//               decoration: BoxDecoration(
//                 color: Colors.grey
//                     .withOpacity(0.8), // Adjust color and opacity as needed
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(
//                         0.3), // Adjust shadow color and opacity as needed
//                     blurRadius: 10.0, // Adjust blur radius as needed
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
