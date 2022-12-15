import 'package:flutter/material.dart';

class MediaDrawer extends StatelessWidget {
  const MediaDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ListView(
        children: [
          Center(child: Text('Drawer')),
        ],
      ),
    );
  }
}