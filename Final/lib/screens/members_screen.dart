// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MembersScreen extends StatefulWidget {
  const MembersScreen({super.key});

  @override
  State<MembersScreen> createState() => _MembersScreenState();
}

class _MembersScreenState extends State<MembersScreen> {
  bool click = false;
  bool isclick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 490,
            color: Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Members',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.person,
                    size: 70,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 350,
            color: Colors.grey.shade200,
            child: Column(
              children: [
                Text(
                  'My Devices',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.speaker_rounded,
                      size: 60,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Music System',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Switch(
                      value: click,
                      onChanged: (value) {
                        setState(() {
                          click = value;
                          print(click);
                        });
                      },
                      activeTrackColor: Colors.purple.shade800,
                      activeColor: Colors.purple,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.bluetooth,
                      size: 60,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Bluetooth',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Switch(
                      value: click,
                      onChanged: (value) {
                        setState(() {
                          click = value;
                          print(click);
                        });
                      },
                      activeTrackColor: Colors.purple.shade800,
                      activeColor: Colors.purple,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.heat_pump,
                      size: 60,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Kombi',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Switch(
                      value: isclick,
                      onChanged: (value) {
                        setState(() {
                          isclick = value;
                          print(isclick);
                        });
                      },
                      activeTrackColor: Colors.purple.shade800,
                      activeColor: Colors.purple,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
