import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('This is just a temporary test homescreen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Don't press!"),
      ),
    );
  }
}
