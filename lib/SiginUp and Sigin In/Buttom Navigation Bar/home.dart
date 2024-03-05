import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
          child: SizedBox(
        child: Text(
          'Home page',
          style: TextStyle(fontSize: 40),
        ),
      )),
    );
  }
}
