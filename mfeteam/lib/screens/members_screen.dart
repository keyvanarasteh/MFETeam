// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MembersScreen extends StatefulWidget {
  MembersScreen({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<MembersScreen> createState() => _MembersScreenState(ScrollController());
}

class _MembersScreenState extends State<MembersScreen> {
  String dropdownvalue = 'Members';

  var items = [
    'Members',
    'Eren',
    'FOYYEK',
    'Keyvan',
    'DuaLipa',
  ];
  ScrollController _scrollController;

  _MembersScreenState(this._scrollController);
  @override
  void initstate() {
    super.initState();
    _scrollController = ScrollController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Text(
        'Members',
        style: TextStyle(fontStyle: FontStyle.normal, fontSize: 9),
      ),
      Container(
          width: double.infinity,
          height: 150,
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
          child: Scrollbar(
              thumbVisibility: false,
              controller: _scrollController,
              child: ListView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 5),
                      child: Center(
                        child: Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.pink,
                                backgroundImage: NetworkImage(
                                    'data:image/jpeg;base64,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'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Dua Lipa',
                                  style: TextStyle(color: Colors.pink))
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKGxbIyNnY8g15xexKXJDkO1DYyaBK40IhiQ&usqp=CAU'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Maria Markova',
                                style: TextStyle(color: Colors.pink))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Miley Crus',
                                style: TextStyle(color: Colors.pink))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_-ECHUsnvKazBTi0c8SnDvMxGpE9K97iWXg&usqp=CAU'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Afra Saraçoğlu',
                                style: TextStyle(color: Colors.pink))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Madonna',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmHMsP8hTelFnU7Ljvf9Bz3zCsIxcsZNG0DQ&usqp=CAU'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9w-Nnnigt10_Bih4kYUqdwgSVvYPmaXfISQ&usqp=CAU'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxG7Yll-Mqdj3Ce_9XfWDQ3qqvNTpEX82IeQ&usqp=CAU'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLlraT2ZPMCkxkMEFwKKdnD3Iag5etgT0wQ&usqp=CAU'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXrNbTnba1sRCKx_AuoOOBXLAOg23uJc78MQ&usqp=CAU'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSey92a9obZmUrKjrJVvex4Zpz17uYHXxcpRQ&usqp=CAU'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.pink,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4lIYHayjQIVQJiS-LDe3JL41kHdmtezK6Rg&usqp=CAU'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alisha Lehman',
                              style: TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: const Text('Welcome MFE'),
                          content: const Text('ALL SYSTEMS CONNECTED'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
                      child: const Text(
                        'Giriş Yap',
                        style: TextStyle(color: Colors.black87),
                      ),
                    )
                    /*
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return CircleAvatar(
              radius: 38,
              backgroundColor: Colors.pink,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://t3.ftcdn.net/jpg/05/03/99/96/360_F_503999607_FsUlTvXPdr8BN7G2RelyIUsdPS78HyvZ.jpg"),
                radius: 35,
              ),
            );
          },
          itemCount: colorCodes.length,
        ),*/

                    /* child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
              height: 30,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                 child: DropdownButton(
                  value: dropdownvalue,
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: const Icon(
                        Icons.person_add,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          items,
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    print('you selected $newValue');
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                  dropdownColor: Colors.grey.shade200,
                ),
              ),
            ),
              SizedBox(
              width: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://t3.ftcdn.net/jpg/05/03/99/96/360_F_503999607_FsUlTvXPdr8BN7G2RelyIUsdPS78HyvZ.jpg'),
                  ),
                )),
            Icon(
              Icons.person,
              size: 50,
              color: Colors.grey.shade800,
            ),
            TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => CupertinoAlertDialog(
                  title: const Text('Welcome MFE'),
                  content: const Text('ALL SYSTEMS CONNECTED'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              child: const Text(
                'Giriş Yap',
                style: TextStyle(color: Colors.black87),
              ),
            )
          ],
        ),*/
                  ]))),
      Container(
        width: double.infinity,
        height: 10,
        color: Colors.grey.shade200,
      ),
      Container(
          width: double.infinity,
          height: 390,
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
          child: Column(children: [
            Text(
              'My Devices',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Column(children: [
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      width: double.tryParse('150'),
                      height: 95,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0, top: 10),
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: Icon(
                                Icons.kitchen,
                                size: 60,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text('Freezer',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9,
                                            fontStyle: FontStyle.normal)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )))
            ])),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: double.tryParse('150'),
                    height: 95,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 10),
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Icon(
                              Icons.air_outlined,
                              size: 60,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Column(
                              children: [
                                Center(
                                  child: Text('Air Conditioner',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontStyle: FontStyle.normal)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )))
          ]))
    ]));

    /*  Icon(
                  Icons.speaker_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Music System',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
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
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.bluetooth,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Bluetooth',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Switch(
                    value: click1,
                    onChanged: (value) {
                      setState(() {
                        click1 = value;
                        print(click1);
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
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Kombi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Switch(
                    value: click2,
                    onChanged: (value) {
                      setState(() {
                        click2 = value;
                        print(click2);
                      });
                    },
                    activeTrackColor: Colors.purple.shade800,
                    activeColor: Colors.purple,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.wifi,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Wifi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Switch(
                    value: click5,
                    onChanged: (value) {
                      setState(() {
                        click5 = value;
                        print(click5);
                      });
                    },
                    activeTrackColor: Colors.purple.shade800,
                    activeColor: Colors.purple,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.camera,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Camera',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Switch(
                    value: click6,
                    onChanged: (value) {
                      setState(() {
                        click6 = value;
                        print(click6);
                      });
                    },
                    activeTrackColor: Colors.purple.shade800,
                    activeColor: Colors.purple,
                  ),

  }*/
  }
}
