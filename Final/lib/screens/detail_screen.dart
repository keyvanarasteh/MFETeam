// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double isik = 0.0;
  bool switched = false;
  bool isswitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 300,
            color: Colors.grey.shade200,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Outdoor Temperature',
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 48.0),
                      child: Text(
                        '13 °C',
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
                    Icon(
                      Icons.severe_cold,
                      color: Colors.lightBlue.shade300,
                      size: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.grey.shade200,
            padding: EdgeInsets.all(20),
            height: 150,
            width: 300,
            child: Column(
              children: [
                Text(
                  'Light Intensity',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '${isik.round()} % ',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slider(
                  min: 0,
                  max: 100,
                  value: isik,
                  onChanged: (double newValue) {
                    setState(() {
                      isik = newValue;
                    });
                  },
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
                            Icons.air,
                            size: 60,
                            color: Colors.grey.shade800,
                          ),
                          Text(
                            'Air Conditioning',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                          Switch(
                            value: isswitched,
                            onChanged: (value) {
                              setState(() {
                                isswitched = value;
                                print(isswitched);
                              });
                            },
                            activeTrackColor: Colors.purple.shade800,
                            activeColor: Colors.purple,
                          ),
                        ],
                      )),
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
                          Icons.wifi,
                          size: 60,
                          color: Colors.grey.shade800,
                        ),
                        Text(
                          'Wifi',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                          ),
                        ),
                        Switch(
                          value: switched,
                          onChanged: (value) {
                            setState(() {
                              switched = value;
                              print(switched);
                            });
                          },
                          activeTrackColor: Colors.purple.shade800,
                          activeColor: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
