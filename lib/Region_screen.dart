import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './temporary_home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegionSelectionScreen extends StatefulWidget {
  const RegionSelectionScreen({super.key});

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
            width: MediaQuery.sizeOf(context).width,
            height: 143,
            decoration: const BoxDecoration(color: Color(0xFF013220)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                      Text(
                        "REGION",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 44,
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(10, 15),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Text(
                  'Manual',
                  style: TextStyle(
                    color: Color(0xFF007AFF),
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 8),
                const Spacer(),
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
          const SizedBox(height: 50), // Add space here

          IgnorePointer(
            ignoring:
                !isManualSelection, // Disable interaction when manual is off
            child: Opacity(
              opacity:
                  isManualSelection ? 1.0 : 0.3, // Adjust the opacity as needed
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 66,
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Text(
                      'Region',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Spacer(),
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
            ),
          ),
          const SizedBox(height: 150), // Add significant space here

          GestureDetector(
            onTap: () {
              // Navigate to the new screen when "Proceed" is tapped
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => TemporaryHomeScreen()),
              );
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 50.h,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: ShapeDecoration(
                color: const Color(0xFF013220),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(79.sp),
                ),
              ),
              child: Center(
                child: Text("Proceed",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0.sp,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
