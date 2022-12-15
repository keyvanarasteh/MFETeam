import 'package:flutter/material.dart';

class MediaDrawerMini extends StatelessWidget {
  const MediaDrawerMini({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      color: Colors.black54,
      child: ListView(
        children: [
          SizedBox(height: 10.0),
          Icon(Icons.settings),
          SizedBox(height: 10.0),
          Icon(Icons.notifications),
          SizedBox(height: 10.0),
          Icon(Icons.history),
          SizedBox(height: 10.0),
          Icon(Icons.settings),
          SizedBox(height: 10.0),
          Icon(Icons.notifications),
          SizedBox(height: 10.0),
          Icon(Icons.history),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}