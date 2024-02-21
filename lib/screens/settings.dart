import 'package:flutter/material.dart';
import 'package:namaz_mode_app/screens/new_home.dart';
import 'package:namaz_mode_app/widgets/Navigationbar.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _currentIndex = 1; // Set initial index to 1 for SettingsScreen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyNavigationBar(
        currentIndex: _currentIndex,
        onIndexChanged: (index) {
          setState(() {
            _currentIndex = index;
          });

          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          }
        },
      ),
    );
  }
}

// class SettingsScreen extends StatefulWidget {
//   @override
//   _SettingsScreenState createState() => _SettingsScreenState();
// }

// class _SettingsScreenState extends State<SettingsScreen> {
//   int _currentIndex = 1; // Set the default selected index for Settings screen

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF013220),
//       bottomNavigationBar: Material(
//         elevation: 8.0, // Adjust elevation as needed
//         color: Color(0xFF141833), // Background color #141833F0
//         child: BottomNavigationBar(
//           selectedItemColor: Colors.white,
//           unselectedItemColor: Colors.white,
//           currentIndex: _currentIndex,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               label: 'Settings',
//             ),
//           ],
//           onTap: (index) {
//             if (index == 1) {
//               // Tapped on "Settings" icon, do nothing
//             } else if (index == 0) {
//               // Tapped on "Home" icon, navigate to HomeScreen
//               setState(() {
//                 _currentIndex = index;
//               });
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => HomeScreen()),
//               );
//             }
//           },
//           selectedLabelStyle: TextStyle(
//             fontSize: 14.0,
//           ),
//           unselectedLabelStyle: TextStyle(
//             fontSize: 14.0,
//           ),
//         ),
//       ),
//     );
//   }
// }
