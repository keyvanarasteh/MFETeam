// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool click = false;
  bool isclik = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Column(
          children: [
            Container(
              width: 300,
              height: 150,
              color: Colors.grey.shade200,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Indoor Temperature',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: Text(
                          ' 23 °C',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 0.0,
                        ),
                        child: Icon(
                          Icons.local_fire_department,
                          size: 40,
                          color: Colors.orange.shade700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 150,
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Humidity',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: Text(
                          '27%',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.water_drop_outlined,
                        color: Colors.lightBlue.shade300,
                        size: 60,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey.shade200,
                      child: Column(
                        children: [
                          Icon(
                            Icons.tv_rounded,
                            size: 60,
                            color: Colors.grey.shade800,
                          ),
                          Text(
                            'TV',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
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
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey.shade200,
                      child: Column(
                        children: [
                          Icon(
                            Icons.linked_camera_rounded,
                            size: 60,
                            color: Colors.grey.shade800,
                          ),
                          Text(
                            'Security Camera',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                          Switch(
                            value: isclik,
                            onChanged: (value) {
                              setState(() {
                                isclik = value;
                                print(isclik);
                              });
                            },
                            activeTrackColor: Colors.purple.shade800,
                            activeColor: Colors.purple,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
