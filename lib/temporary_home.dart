import 'package:flutter/material.dart';

class TemporaryHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Half Blood prince's Home "),
      ),
      body: Center(
        child: Text(
          'This is a temporary test homescreen created by the half blood prince',
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Don't press!"),
      ),
    );
  }
}
