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
        height: 10,
        width: double.infinity,
        color: Colors.pink,
        child: const Center(
          child: Text(''),
        ),
      );
    } else if (deviceType == 'Tablet') {
      return Container(
        height: 5,
        width: double.infinity,
        color: Colors.red,
        child: const Center(
          child: Text(''),
        ),
      );
    } else if (deviceType == 'Desktop') {
      return Container(
        height: 5,
        width: double.infinity,
        color: Colors.black,
        child: const Center(
          child: Text('Desktop'),
        ),
      );
    } else {
      return AppBar(
        title: Text(
          'Hello User',
          style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w200),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.person,
              color: Colors.black,
            ),
          )
        ],
        leading: Icon(
          Icons.settings,
          color: Colors.black,
        ),
        toolbarHeight: 30,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10.0),
          ),
        ),
      );

      /*Container(
        height: 5,
        width: double.infinity,
        color: Color.fromARGB(255, 206, 197, 197),
        child: const Center(
          child: Text('Large'),
        ),*/

    }
  }
}
