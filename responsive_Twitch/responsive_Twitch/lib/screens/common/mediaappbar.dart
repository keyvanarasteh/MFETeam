import 'package:flutter/material.dart';
import 'package:responsive_app_1/widgets/my_input_field.dart';

class MediaAppBar extends StatelessWidget {

  final Function()? onMenuClicked;

  const MediaAppBar({super.key, this.onMenuClicked});


  String ekranTanimla(double width) {
    if(width <= 576) {
      return "mobile";
    }
    else if(width <= 768) {
      return "tablet";
    }
    else if(width <= 992) {
      return "desktop";
    }
    else {
      return "large";
    }
  }

  Widget appBar(BuildContext context, String device) {
    if(device == "mobile" || device == 'tablet') {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: onMenuClicked,  
                  child: Icon(Icons.menu)
                ),
                SizedBox(width: 20,),
                Image.asset(
                  'assets/images/youtube.png',
                  height: 40,
                ),
                const SizedBox(width: 10.0),
                Text(
                  'YouTube', 
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.search),
                SizedBox(width: 12.0),
                const Icon(Icons.person),
              ],
            ),
          ],
        ),
      );
    }
    else if(device == "desktop" || device == "large") {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset('assets/images/03-glitch.jpg'),
                const SizedBox(width: 5.0),
                Text(
                  'Twitch', 
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 500,
                  child: MyInputField(
                    hintText: 'Search', 
                    icon: Icon(Icons.search)
                  ),
                ),
                SizedBox(width: 4.0),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.notifications),
                SizedBox(width: 20.0),
                const Icon(Icons.person),
              ],
            ),
          ],
        ),
      );
    }
    else {
      return Text('large');
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var device = ekranTanimla(screenWidth);
    return Container(
      color: Colors.black54,
      width: double.infinity,
      height: 70,
      child: appBar(context, device),
    );
  }
}