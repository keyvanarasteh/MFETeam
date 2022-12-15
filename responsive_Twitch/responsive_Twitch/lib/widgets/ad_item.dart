
import 'package:flutter/material.dart';

class AdItem extends StatelessWidget {

  final String title;
  final String length;
  final String image;
  
  const AdItem({
    Key? key, required this.title, required this.length, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        fit: StackFit.loose,
        alignment: Alignment.center,
        children: [
          Positioned(
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(image,
                      // fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Image.asset(
              'assets/images/youtube.png',
              fit: BoxFit.contain,
              width: 50,
            ),
          ),
          Positioned(
            top: 280,
            left: 80,
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ),
          Positioned(
            bottom: 25,
            right: 50,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(134, 192, 0, 0),
                
              ),
              child: Text(length),
            )
          )
        ],
      ),
    );
  }
}
