import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namaz_mode_app/widgets/Navigationbar.dart';
import './settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List namazTimes = [
    {
      "title": "Fajr",
      "timeStarts": "4:00",
      "JamaatTime": "4:30",
    },
    {
      "title": "Dhuhr",
      "timeStarts": "12:30",
      "JamaatTime": "1:30",
    },
    {
      "title": "Asr",
      "timeStarts": "5:00",
      "JamaatTime": "5:30",
    },
    {
      "title": "Maghrib ",
      "timeStarts": "6:00",
      "JamaatTime": "6:00",
    },
    {
      "title": "Ishaa",
      "timeStarts": "7:45",
      "JamaatTime": "8:00",
    }
  ];

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
          // SizedBox(
          //   width: MediaQuery.of(context).size.width,
          //   // height: MediaQuery.of(context).size.height * 0.3,
          //   child: Image.asset(
          //     "assets/md.jpeg",
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.sizeOf(context).height * 0.25,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/md.jpeg"), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 20,
                        width: 15,
                      ),
                      Expanded(
                          child: customColumn(
                              title: "Namaz", icon: Icons.terrain)),
                      Container(
                        height: 20,
                        width: 15,
                      ),
                      Expanded(
                          child: customColumn(
                              title: "Time starts",
                              icon: Icons.place_outlined)),
                      Container(
                        height: 20,
                        width: 15,
                      ),
                      Expanded(
                          child: customColumn(
                              title: "jamaat", icon: Icons.place_outlined)),
                      Container(
                        height: 20,
                        width: 15,
                      ),
                    ],
                  ),
                ],
              )),

          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: namazTimes.length,
              itemBuilder: (context, index) {
                final item = namazTimes[index];
                print(item["title"]);
                print(item["timeStarts"]);
                print(item["JamaatTime"]);
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item["title"],
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        item["timeStarts"],
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        item["JamaatTime"],
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                );
              },
            ),
          )
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

  Widget customColumn({required String title, required IconData icon}) {
    return Container(
      color: Color(0xFF013220),
      child: Column(
        children: [
          Text(
            "$title",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10),
          Icon(icon, color: Colors.white)
        ],
      ),
    );
  }
}
