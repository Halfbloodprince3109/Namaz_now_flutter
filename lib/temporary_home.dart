import 'package:flutter/material.dart';

class TemporaryHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('This is a temporary test homescreen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Don't press!"),
      ),
    );
  }
}
