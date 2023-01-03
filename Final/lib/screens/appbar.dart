import 'package:flutter/material.dart';

class AppHeader extends StatefulWidget {
  const AppHeader({super.key});

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  checkDevice(double width) {
    if (width <= 576) {
      return "Mobile";
    } else if (width <= 768) {
      return "Tablet";
    } else if (width <= 1024) {
      return "Desktop";
    } else {
      return "Large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    //var screenHeight = MediaQuery.of(context).size.height;

    var deviceType = checkDevice(screenWidth);

    if (deviceType == 'Mobile') {
      return Container(
        height: 60,
        width: double.infinity,
        color: Colors.blue,
        child: const Center(
          child: Text('Mobil'),
        ),
      );
    } else if (deviceType == 'Tablet') {
      return Container(
        height: 60,
        width: double.infinity,
        color: Color.fromARGB(255, 73, 54, 244),
        child: const Center(
          child: Text('Tablet'),
        ),
      );
    } else if (deviceType == 'Desktop') {
      return Container(
        height: 60,
        width: double.infinity,
        color: Colors.green,
        child: const Center(
          child: Text('Desktop'),
        ),
      );
    } else {
      return Container(
        height: 60,
        width: double.infinity,
        color: Color.fromARGB(255, 206, 197, 197),
        child: const Center(
          child: Text('Large'),
        ),
      );
    }
  }
}
