import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './temporary_home.dart';

class RegionSelectionScreen extends StatefulWidget {
  @override
  _RegionSelectionScreenState createState() => _RegionSelectionScreenState();
}

class _RegionSelectionScreenState extends State<RegionSelectionScreen> {
  String selectedRegion = 'Pakistan'; // Initial selection
  bool isManualSelection = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 143,
            decoration: BoxDecoration(color: Color(0xFF013220)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                      Text(
                        "REGION",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          Container(
            width: 360,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  'Manual',
                  style: TextStyle(
                    color: Color(0xFF007AFF),
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 8),
                Spacer(),
                CupertinoSwitch(
                  value: isManualSelection,
                  onChanged: (value) {
                    setState(() {
                      isManualSelection = value;
                    });
                  },
                  activeColor: Colors.green, // Change to your desired color
                ),
              ],
            ),
          ),
          SizedBox(height: 50), // Add space here

          Container(
            width: 360,
            height: 66,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  'Region',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 8),
                Spacer(),
                DropdownButton<String>(
                  value: selectedRegion,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedRegion = newValue!;
                    });
                  },
                  items: <String>[
                    'Pakistan',
                    'Australia',
                    'India',
                    'Saudi Arabia'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          SizedBox(height: 150), // Add significant space here

          GestureDetector(
            onTap: () {
              // Navigate to the new screen when "Proceed" is tapped
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Container(
              width: 368,
              height: 83,
              decoration: ShapeDecoration(
                color: Color(0xFF013220),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(79),
                ),
              ),
              child: Center(
                child: Text("Proceed",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
