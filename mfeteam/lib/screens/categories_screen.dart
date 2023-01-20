// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/widgets.dart';
import 'package:mfeteam/screens/detail_screen.dart';
import 'package:mfeteam/screens/details_screen.dart';
import 'package:mfeteam/screens/members_screen.dart';
import 'package:settings_ui/settings_ui.dart';
// ignore: depend_on_referenced_packages
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
];
String? selectedValue;

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Container(
        width: 500,
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: ListView(
            children: [
              IconButton(
                icon: Icon(Icons.home),
                iconSize: 60,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MembersScreen(),
                      ));
                },
              ),
              SizedBox(
                height: 40,
              ),
              IconButton(
                icon: Icon(Icons.phone_android_outlined),
                iconSize: 60,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Phonepage()),
                  );
                },
              ),
              SizedBox(
                height: 40,
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                iconSize: 60,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notificationpage()),
                  );
                },
              ),
              SizedBox(
                height: 40,
              ),
              IconButton(
                icon: Icon(Icons.camera),
                iconSize: 60,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerticalCardPagerDemo()));
                },
              ),
              SizedBox(
                height: 40,
              ),
              IconButton(
                icon: Icon(Icons.settings),
                iconSize: 60,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settingspage()),
                  );
                },
              ),
              SizedBox(
                height: 40,
              ),
              IconButton(
                icon: Icon(Icons.security),
                iconSize: 60,
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class Settingspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: Colors.pink.shade200,
        ),
        body: SettingsList(sections: [
          SettingsSection(
              title: Text(
                'Language Preferences',
                selectionColor: Colors.black,
              ),
              tiles: [
                SettingsTile(
                  title: Text('Language'),
                  leading: Icon(Icons.language),
                  onPressed: (BuildContext context) {},
                ),
              ]),
          SettingsSection(
              title: Text(
                'Security Settings',
                selectionColor: Colors.amber,
              ),
              tiles: [
                SettingsTile(
                  title: Text('Security'),
                  trailing: Text('Fingerprint'),
                  leading: Icon(Icons.lock),
                  onPressed: (BuildContext context) {},
                ),
              ]),
        ]));
  }
}

class Notificationpage extends StatelessWidget {
  static const String _title = 'Notifications';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.pink.shade200,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(_title),
          backgroundColor: Colors.pink.shade200,
          centerTitle: true,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Message $index',
      expandedValue: 'This is message number $index',
    );
  });
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final List<Item> _data = generateItems(15);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle:
                  const Text('To delete this panel, tap the trash can icon'),
              trailing: const Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

class Phonepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Notifications';

    return MaterialApp(
      home: Scaffold(
          body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              snap: false,
              pinned: false,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/c/c6/SearsHouse115.jpg'),
                centerTitle: true,
                title: Text("",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ) //TextStyle
                    ), //Text
              ), //FlexibleSpaceBar
              expandedHeight: 500,
              backgroundColor: Colors.pink.shade200,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              actions: [
                //IconButton
                IconButton(
                  icon: Icon(Icons.settings),
                  tooltip: 'Go Settings',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Settingspage()));
                  },
                ), //IconButton
              ] //<Widget>[]
              ), //SliverAppBar
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                tileColor:
                    (index % 2 == 0) ? Colors.white : Colors.grey.shade200,
                title: Center(
                  child: Text('Room Design $index',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                          color: Colors.pink.shade200) //TextStyle
                      ), //Text
                ), //Center
              ), //ListTile
              childCount: 10,
            ), //SliverChildBuildDelegate
          ) //SliverList
        ], //<Widget>[]
      ) //CustonScrollView
          ), //Scaffold
      debugShowCheckedModeBanner: false,
      // Remove debug banner for proper
      // view of setting icon
    ); //MaterialApp
  }
}

class VerticalCardPagerDemo extends StatefulWidget {
  @override
  _VerticalCardPagerDemoState createState() => _VerticalCardPagerDemoState();
}

class _VerticalCardPagerDemoState extends State<VerticalCardPagerDemo> {
  final List<String> titles = [
    "KİTCHEN",
    "BEDROOM",
    "GARDEN",
    "LİVİNGROOM",
    "GARAGE",
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        child: Image.network(
          'data:image/jpeg;base64,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',
          fit: BoxFit.cover,
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Image.network(
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/bedroom-decorating-ideas-black-wall-1647465057.jpg',
          fit: BoxFit.cover,
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Image.network(
            'data:image/jpeg;base64,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',
            fit: BoxFit.cover),
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCIRgaCSUbTPPdzADGQft796tLt9-gexDP-w&usqp=CAU',
          fit: BoxFit.cover,
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Image.network(
          'https://www.clopaydoor.com/images/default-source/product-image-gallery/residential/garage-door/avante/gallery/normal/avante-ax-frosted-black-single-garage-door.png?sfvrsn=a99ed4bd_3',
          fit: BoxFit.cover,
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade200,
        title: Text(
          'LIVE',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: VerticalCardPager(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              titles: titles,
              images: images,
              onPageChanged: (page) {},
              align: ALIGN.CENTER,
              onSelectedItem: (index) {},
            ),
          ),
        ),
      ),
    );
  }
}
