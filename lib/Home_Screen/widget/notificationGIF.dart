import 'package:flutter/material.dart';

class notificationgif extends StatelessWidget {
  const notificationgif({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 30,
        width: 30,
        alignment: Alignment.center,
        child: Image(
          image: AssetImage('assets/notification.gif'),
        ),
      ),
    );
  }
}
