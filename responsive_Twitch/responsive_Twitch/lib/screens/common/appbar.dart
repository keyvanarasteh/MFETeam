import 'package:flutter/material.dart';

class AppHeader extends StatefulWidget {

  final Function()? onCategoryClicked;
  final Function()? onInfoClicked;

  const AppHeader({super.key, this.onCategoryClicked, this.onInfoClicked});

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {



  checkDevice(double width) {
    if(width <= 576) {
      return "mobile";
    }
    else if(width <= 768) {
      return "tablet";
    }
    else if(width <= 1024) {
      return "desktop";
    }
    else  {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {

    var scrWidth = MediaQuery.of(context).size.width;
    // var scrHeight = MediaQuery.of(context).size.height;

    var deviceType = checkDevice(scrWidth);

    if(deviceType == 'mobile') {
      return Container(
        height: 60,
        width: double.infinity,
        color: Colors.grey.shade200,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu),
            Text('Conversations'),
            Icon(Icons.person),
          ],
        ),
      );
    }
    else if(deviceType == 'tablet') {
      return Container(
        height: 60,
        width: double.infinity,
        color: Colors.grey.shade200,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: widget.onCategoryClicked,
              child: Icon(Icons.category_outlined)
            ),
            Text('Conversations'),
            InkWell(
              onTap: widget.onInfoClicked,
              child: Icon(Icons.info_outline)
            ),
          ],
        ),
      );
    }
    else if(deviceType == 'desktop') {
      return Container(
        height: 60,
        width: double.infinity,
        color: Colors.grey.shade200,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Conversations'),
            InkWell(
              onTap: widget.onInfoClicked,
              child: Icon(Icons.info_outline)
            ),
          ],
        ),
      );
    }
    else {
      return Container(
        height: 60,
        width: double.infinity,
        color: Colors.grey.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home'),
            SizedBox(width:14.0),
            Text('Conversations'),
            SizedBox(width:14.0),
            Text('Profile'),
            SizedBox(width:14.0),
            Text('Support'),
          ],
        )
      );
    }
  }
}