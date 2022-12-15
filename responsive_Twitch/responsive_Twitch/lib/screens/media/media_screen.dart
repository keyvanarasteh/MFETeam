// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:responsive_app_1/screens/common/drawer.dart';
import 'package:responsive_app_1/screens/common/mediaappbar.dart';
import 'package:responsive_app_1/screens/media/media_drawer.dart';
import 'package:responsive_app_1/screens/media/media_drawer_mini.dart';

import '../../widgets/ad_item.dart';
import '../../widgets/media_item.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {

  bool MenuAcikMi = false;

  String ekranTanimla(double width) {
    if(width <= 576) {
      return "mobile";
    }
    else if(width <= 768) {
      return "tablet";
    }
    else if(width <= 992) {
      return "desktop";
    }
    else {
      return "large";
    }
  }


  @override
  Widget build(BuildContext context) {
    
    var screenWidth = MediaQuery.of(context).size.width;
    var device = ekranTanimla(screenWidth);

    Widget buildScreen() {
      if(device == 'mobile') {
        return Stack(
          children: [
            VideosScreen(),
            MenuAcikMi ? Positioned(
              child: Drawer1(),
            ) : Positioned(width: 0, height: 0, child: Text(''))
          ],
        );
      }
      else if(device == 'tablet') {
        return Stack(
          children: [
            Row(
              children: [
                MediaDrawerMini(),
                Expanded(
                  child: VideosScreen(),
                ),

              ],
            ),
            MenuAcikMi ? Positioned(
              child: Drawer1(),
            ) : Positioned(width: 0, height: 0, child: Text(''))
          ],
        );
      }
      else if(device == 'desktop') {
        return Row(
          children: [
            Drawer1(),
            Expanded(
              child: VideosScreenMid(),
            ),

          ],
        );
      }
      else {
        return Row(
          children: [
            Drawer1(),
            Expanded(
              child: VideosScreenLarge(),
            ),

          ],
        );
      }
    }

    return Scaffold(
      body: Column(children: [
          MediaAppBar(
            onMenuClicked: () => {
              if(MenuAcikMi) {
                setState(() {
                  MenuAcikMi = false;
                },)
              }
              else {
                setState(() {
                  MenuAcikMi = true;
                },)
              }
            },
          ),
          Expanded(
            child: buildScreen(),
          )
        ],
      ),
    );
  }
}

class VideosScreen extends StatelessWidget {
  const VideosScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('Canlı Yayınlar',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Expanded(
          child: AdItem(
            title: 'Kaliteli gameplayi özleyenlere yayın | !sonar !dmrgame !vatan',
            image: 'assets/images/Loopy_.jpg',
            length: 'Live',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('En Çok izlenenler',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        MediaItem(
          title: 'LAZER ile TORPİL ve ÇAKMAK Patlatmak!',
          image: 'assets/images/Lazer.png',
          length: '13:01',
          authorAvatar: 'assets/images/Mendeburlemur.jpg',
          channel: 'Mendebur Lemur',
          views: '3.6m',
        ),
        MediaItem(
          title: 'YOUTUBER VE YAYINCILARIN DEDİKODUSUNU YAPTIK! ft.@unlosttv #GömBakalım',
            image: 'assets/images/gömbakalım.png',
            length: '14:45',
            authorAvatar: 'assets/images/Orkunışıtmak.jpg',
            channel: 'Flutter',
            views: '3.2m',
        ),
        MediaItem(
          title: 'DAVA AÇIYORUM.',
          image: 'assets/images/dava.png',
          length: '25:12',
          authorAvatar: 'assets/images/vural.jpg',
          channel: 'Vural Üzül',
          views: '1.2m',
        ),
        MediaItem(
          title: 'ELRAEN UNLOST BİRBİRİNE GİRDİ VAMPİR KÖYLÜ OYUNU',
          image: 'assets/images/kavga.png',
          length: '51:45',
          authorAvatar: 'assets/images/Dexon.jpg',
          channel: 'DexonN',
          views: '1.2m',
        ),
      ]
    );
  }
}


class VideosScreenMid extends StatelessWidget {
  const VideosScreenMid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('Canlı Yayınlar',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AdItem(
                title: 'Kaliteli gameplayi özleyenlere yayın | !sonar !dmrgame !vatan',
                image: 'assets/images/Loopy_.jpg',
                length: 'Live',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
                  width: 300,
                  child: MediaItem(
                    title: 'LAZER ile TORPİL ve ÇAKMAK Patlatmak!',
                    image: 'assets/images/Lazer.png',
                    length: '13:01',
                    authorAvatar: 'assets/images/Mendeburlemur.jpg',
                    channel: 'Mendebur Lemur',
                    views: '3.6m',
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('Canlı Yayınlar',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Container(
                  width: 300,
                  child: MediaItem(
                    title: 'DAVA AÇIYORUM.',
                    image: 'assets/images/dava.png',
                    length: '25:12',
                    authorAvatar: 'assets/images/vural.jpg',
                    channel: 'Vural Üzül',
                    views: '1.2m',
            ),  
            )
          ]
        ),
        Row(
          children: [
            Container(
                  width: 300,
                  child: MediaItem(
                    title: 'ELRAEN UNLOST BİRBİRİNE GİRDİ VAMPİR KÖYLÜ OYUNU',
                    image: 'assets/images/kavga.png',
                    length: '51:45',
                    authorAvatar: 'assets/images/Dexon.jpg',
                    channel: 'DexonN',
                    views: '1.2m',
                  ),
            ),
            Container(
                  width: 300,
                  child: MediaItem(
                    title: 'YOUTUBER VE YAYINCILARIN DEDİKODUSUNU YAPTIK! ft.@unlosttv #GömBakalım',
                    image: 'assets/images/gömbakalım.png',
                    length: '14:45',
                    authorAvatar: 'assets/images/Orkunışıtmak.jpg',
                    channel: 'Flutter',
                    views: '3.2m',
              ),
            )
          ]
        ),
        Row(
          children: [
            Container(
                  width: 300,
                  child: MediaItem(
                    title: 'ISSIZ ADADA BİR GÜN GEÇİRMEK! (ATAKAN ZEHİRLENDİ)',
                    image: 'assets/images/atakanzehirlendi.png',
                    length: '33:23',
                    authorAvatar: 'assets/images/kafalar.jpg',
                    channel: 'Kafalar',
                    views: '13m',         
              ),
            ),
            Container(
                  width: 300,
                  child: MediaItem(                    
                    title: 'Hidrolik Pres vs Lamborghini',
                    image: 'assets/images/lamborhini.png',
                    length: '10:25',
                    authorAvatar: 'assets/images/mrbeast.jpg',
                    channel: 'MrBeast',
                    views: '94m',
            ),  
            )
          ]
        ),
        Row(
          children: [
            Container(
                  width: 300,
                  child: MediaItem(                    
                    title: '11 Yaşında Global İzleyicime Bilgisayar Hediye Ettim [UNLOST & Melih]',
                    image: 'assets/images/melih.png',
                    length: '24:38',
                    authorAvatar: 'assets/images/Unlost.jpg',
                    channel: 'Unlosttv',
                    views: '5.8m',
              ),
            ),
            Container(
                  width: 300,
                  child: MediaItem(
                    title: 'KEŞKE BÜTÜN LAPTOPLAR BÖYLE ÜRETİLSE - MSI ÖZEL SERİ Rainbow 6 Edition İncelemesi',
                    image: 'assets/images/leptop.png',
                    length: '14:59',
                    authorAvatar: 'assets/images/PChocası.jpg',
                    channel: 'PC Hocası TV',
                    views: '36B',
              ),
            )
          ]
        ),
        
        
      ]
    );
  }
}




class VideosScreenLarge extends StatelessWidget {
  const VideosScreenLarge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('Canlı Yayınlar',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AdItem(
                title: 'Twitch Prime a Bedava skin geldi kaçırmayın! | !ins !solidraid',
                image: 'assets/images/reembey.jpg',
                length: 'Live',
              ),
            ),
            Expanded(
              child: AdItem(
                title: 'Kaliteli gameplayi özleyenlere yayın | !sonar !dmrgame !vatan',
                image: 'assets/images/Loopy_.jpg',
                length: 'Live',
              ),
            ),
            Expanded(
              child: AdItem(
                title: 'değişik bir valorant | !elgato !hyperx !vatan !fireflux !playsultan',
                image: 'assets/images/ubeka_.jpg',
                length: 'Live',
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('İzleme Geçmişi',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Container(
          width: screenWidth - 100,
          height: 400,
          child: Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 300,
                  child: MediaItem(
                    title: 'LAZER ile TORPİL ve ÇAKMAK Patlatmak!',
                    image: 'assets/images/Lazer.png',
                    length: '13:01',
                    authorAvatar: 'assets/images/Mendeburlemur.jpg',
                    channel: 'Mendebur Lemur',
                    views: '3.6m',
                  ),
                ),
                Container(
                  width: 300,
                  child: MediaItem(
                    title: 'DAVA AÇIYORUM.',
                    image: 'assets/images/dava.png',
                    length: '25:12',
                    authorAvatar: 'assets/images/vural.jpg',
                    channel: 'Vural Üzül',
                    views: '1.2m',
                  ),
                ),
                Container(
                  width: 300,
                  child: MediaItem(
                    title: 'ELRAEN UNLOST BİRBİRİNE GİRDİ VAMPİR KÖYLÜ OYUNU',
                    image: 'assets/images/kavga.png',
                    length: '51:45',
                    authorAvatar: 'assets/images/Dexon.jpg',
                    channel: 'DexonN',
                    views: '1.2m',
                  ),
                ),
                Container(
                  width: 300,
                  child: MediaItem(
                    title: 'YOUTUBER VE YAYINCILARIN DEDİKODUSUNU YAPTIK! ft.@unlosttv #GömBakalım',
                    image: 'assets/images/gömbakalım.png',
                    length: '14:45',
                    authorAvatar: 'assets/images/Orkunışıtmak.jpg',
                    channel: 'Flutter',
                    views: '3.2m',
                  ),
                ),
                Container(
                  width: 300,
                  child: MediaItem(
                    title: 'ISSIZ ADADA BİR GÜN GEÇİRMEK! (ATAKAN ZEHİRLENDİ)',
                    image: 'assets/images/atakanzehirlendi.png',
                    length: '33:23',
                    authorAvatar: 'assets/images/kafalar.jpg',
                    channel: 'Kafalar',
                    views: '13m',             
                  ),
                ),
                Container(
                  width: 300,
                  child: MediaItem(                    
                    title: 'Hidrolik Pres vs Lamborghini',
                    image: 'assets/images/lamborhini.png',
                    length: '10:25',
                    authorAvatar: 'assets/images/mrbeast.jpg',
                    channel: 'MrBeast',
                    views: '94m',
                  ),
                ),
                Container(
                  width: 300,
                  child: MediaItem(                    
                    title: '11 Yaşında Global İzleyicime Bilgisayar Hediye Ettim [UNLOST & Melih]',
                    image: 'assets/images/melih.png',
                    length: '24:38',
                    authorAvatar: 'assets/images/Unlost.jpg',
                    channel: 'Unlosttv',
                    views: '5.8m',
                  ),
                ),
                Container(
                  width: 300,
                  child: MediaItem(
                    title: 'KEŞKE BÜTÜN LAPTOPLAR BÖYLE ÜRETİLSE - MSI ÖZEL SERİ Rainbow 6 Edition İncelemesi',
                    image: 'assets/images/leptop.png',
                    length: '14:59',
                    authorAvatar: 'assets/images/PChocası.jpg',
                    channel: 'PC Hocası TV',
                    views: '36B',
                  ),
                ),
              ],
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('En Çok İzlenenler',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: MediaItem(
                title: 'KEŞKE BÜTÜN LAPTOPLAR BÖYLE ÜRETİLSE - MSI ÖZEL SERİ Rainbow 6 Edition İncelemesi',
                image: 'assets/images/leptop.png',
                length: '14:59',
                authorAvatar: 'assets/images/PChocası.jpg',
                channel: 'PC Hocası TV',
                views: '36B',
              ),
            ),
            Expanded(
              child: MediaItem(
                title: '11 Yaşında Global İzleyicime Bilgisayar Hediye Ettim [UNLOST & Melih]',
                image: 'assets/images/melih.png',
                length: '24:38',
                authorAvatar: 'assets/images/Unlost.jpg',
                channel: 'Unlosttv',
                views: '5.8m',
            ),  
            ),
            Expanded(
              child: MediaItem(
                title: 'Hidrolik Pres vs Lamborghini',
                image: 'assets/images/lamborhini.png',
                length: '10:25',
                authorAvatar: 'assets/images/mrbeast.jpg',
                channel: 'MrBeast',
                views: '94m',
              ),
            ),
            Expanded(
              child: MediaItem(
              title: 'ISSIZ ADADA BİR GÜN GEÇİRMEK! (ATAKAN ZEHİRLENDİ)',
              image: 'assets/images/atakanzehirlendi.png',
              length: '33:23',
              authorAvatar: 'assets/images/kafalar.jpg',
              channel: 'Kafalar',
              views: '13m',
            ),  
            ),
          ]
        ),
        Row(
          children: [
            Expanded(
              child: MediaItem(
                title: 'YOUTUBER VE YAYINCILARIN DEDİKODUSUNU YAPTIK! ft.@unlosttv #GömBakalım',
                image: 'assets/images/gömbakalım.png',
                length: '14:45',
                authorAvatar: 'assets/images/Orkunışıtmak.jpg',
                channel: 'Flutter',
                views: '3.2m',
              ),
            ),
            Expanded(
              child: MediaItem(
                title: 'ELRAEN UNLOST BİRBİRİNE GİRDİ VAMPİR KÖYLÜ OYUNU',
                image: 'assets/images/kavga.png',
                length: '51:45',
                authorAvatar: 'assets/images/Dexon.jpg',
                channel: 'DexonN',
                views: '1.2m',
              ),
            ),
            Expanded(
              child: MediaItem(
                title: 'DAVA AÇIYORUM.',
                image: 'assets/images/dava.png',
                length: '25:12',
                authorAvatar: 'assets/images/vural.jpg',
                channel: 'Vural Üzül',
                views: '1.2m',
              ),
            ),
            Expanded(
              child: MediaItem(
                title: 'LAZER ile TORPİL ve ÇAKMAK Patlatmak!',
                image: 'assets/images/Lazer.png',
                length: '13:01',
                authorAvatar: 'assets/images/Mendeburlemur.jpg',
                channel: 'Mendebur Lemur',
                views: '3.6m',
              ),
            )
          ]
        ),
      ]
    );
  }
}
