// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_app_1/widgets/menu_tile1.dart';


class Drawer1 extends StatefulWidget {
  const Drawer1({super.key});

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {

  int expandedItem = -1;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      width: 250,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Profile Pic
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,                  
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar1.jpg'),
                        radius: 40,
                      ),
                    ),
              MenuTile1(
                title: 'Furkan Emir Eroğlu',
                icon: Icon(Icons.account_circle_rounded, size: 30),
                expanded: false,                
              ),
                  ],
                )
              )),
              MenuTile1(
                title: 'Ana Sayfa',
                onTap: () {
                  
                },
                icon: Icon(Icons.home_filled, size: 20),
                expanded: false,
              ),
              MenuTile1(
                title: 'Trendler',
                icon: Icon(Icons.celebration_rounded, size: 20),
                expanded: false,                
              ),
              MenuTile1(
                title: 'Kitaplık',
                icon: Icon(Icons.apps_outlined, size: 20),
                expanded: false),
              MenuTile1(
                title: 'Geçmiş',
                icon: Icon(Icons.history_rounded, size: 20),
                expanded: false),
              MenuTile1(
                title: 'Videolarınız',
                icon: Icon(Icons.assignment_rounded, size: 20),
                expanded: false),
              MenuTile1(
                title: 'Daha sonra izle',
                icon: Icon(Icons.access_time_outlined, size: 20),
                expanded: false),
              MenuTile1(
                title: 'Bildirimler',
                icon: Icon(Icons.circle_notifications, size: 20),
                expanded: false),
              MenuTile1(
                title: 'Beğendiğim videolar',
                icon: Icon(Icons.bookmark_add, size: 20),
                expanded: false),
              MenuTile1(
                title: 'Daha Fazla Göster',
                expanded: false,
                children: [
                  MenuTile1(
                    title: 'Resident Evil 8',
                    icon: Icon(Icons.add_circle_outline, size: 20),
                  ),
                  MenuTile1(
                    title: 'Rainbow Six Siege',
                    icon: Icon(Icons.add_circle_outline, size: 20),
                  ),
                  MenuTile1(
                    title: 'MB Warband ',
                    icon: Icon(Icons.add_circle_outline, size: 20),
                  ),
                ],
              ),MenuTile1(
                title: 'Ayarlar',
                icon: Icon(Icons.settings, size: 18),
                expanded: false),
              // Definition
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                child: Text(
                  'Abonelikler',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              MenuTile1(
                title: 'Foyyek',
                icon: Icon(Icons.hail, size: 20),
                expanded: false,
              ),
              MenuTile1(
                title: 'Unlost',
                icon: Icon(Icons.hail, size: 20),
                expanded: false,
              ),
              MenuTile1(
                title: 'Elraen',
                icon: Icon(Icons.hail, size: 20),
                expanded: false,
              ),
              MenuTile1(
                title: 'Hype',
                icon: Icon(Icons.hail, size: 20),
                expanded: false,
              ),
              MenuTile1(
                title: 'Ebonivon',
                icon: Icon(Icons.hail, size: 20),
                expanded: false,
              ),
              MenuTile1(
                title: 'DuruBTR',
                icon: Icon(Icons.hail, size: 20),
                expanded: false,
              ),
              MenuTile1(
                title: 'Loopy_',
                icon: Icon(Icons.hail, size: 20),
                expanded: false,
              ),
              MenuTile1(
                title: 'Videoyun',
                icon: Icon(Icons.hail, size: 20),
                expanded: false,
              ),
            ],
          ),
        )
      );
  }
}