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
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(children: <Widget>[
                  Container(
                    height: 150,
                    width: 300,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1.0),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
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
                                  color: Colors.black,
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
                    padding: EdgeInsets.all(20),
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1.0),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
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
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Slider(
                          min: 0,
                          max: 100,
                          activeColor: Colors.yellow,
                          thumbColor: Colors.pink,
                          inactiveColor: Colors.black,
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
                    height: 10,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Container(
                              width: 125,
                              height: 125,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(1.0),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        3, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Icon(
                                      Icons.air,
                                      size: 60,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  Text(
                                    'Air Cond',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
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
                                    activeTrackColor: Colors.black,
                                    activeColor: Colors.pink,
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 125,
                            height: 125,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(1.0),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      3, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.wifi,
                                    size: 60,
                                    color: Colors.pink,
                                  ),
                                ),
                                Text(
                                  'Wifi',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
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
                                  activeTrackColor: Colors.black,
                                  activeColor: Colors.pink,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]))));
  }
}
