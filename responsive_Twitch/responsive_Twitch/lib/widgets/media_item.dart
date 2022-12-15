
import 'package:flutter/material.dart';

class MediaItem extends StatelessWidget {

  final String title;
  final String length;
  final String image;
  final String authorAvatar;
  final String channel;
  final String views;
  
  const MediaItem({
    Key? key, required this.title, required this.length, required this.image, required this.authorAvatar, required this.channel, required this.views,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
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
                bottom: 10,
                right:5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(136, 0, 0, 0),
                  ),
                  child: Text(length),
                )
              )
            ],
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 5.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(authorAvatar),
                  radius: 6,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 7.0),
                      Text(
                        channel,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        views,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Icon(Icons.more_horiz_outlined),
              ]
            ),
          ),
        ],
      ),
    );
  }
}