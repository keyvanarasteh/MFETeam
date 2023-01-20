// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mfeteam/screens/appbar.dart';
import 'package:mfeteam/screens/categories_screen.dart';
import 'package:mfeteam/screens/detail_screen.dart';
import 'package:mfeteam/screens/details_screen.dart';
import 'package:mfeteam/screens/members_screen.dart';
import 'package:mfeteam/screens/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  checkDevice(double width) {
    if (width <= 576) {
      return "Mobile";
    } else if (width <= 768) {
      return "Tablet";
    } else if (width <= 1024) {
      return "Desktop";
    } else {
      return "Large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    //var screenHeight = MediaQuery.of(context).size.height;

    var deviceType = checkDevice(screenWidth);

    Widget buildMainArea() {
      if (deviceType == 'Mobile') {
        return MembersScreen();
      } else if (deviceType == 'Tablet') {
        return Row(
          children: [
            Expanded(child: DetailsScreen()),
            Expanded(
              child: DetailScreen(),
            ),
          ],
        );
      } else if (deviceType == 'Desktop') {
        return Row(
          children: [
            Expanded(child: CategoriesScreen()),
            Expanded(child: DetailsScreen()),
            Expanded(
              child: DetailScreen(),
            ),
          ],
        );
      } else {
        return Row(
          children: [
            Expanded(child: CategoriesScreen()),
            Expanded(child: DetailsScreen()),
            Expanded(
              child: DetailScreen(),
            ),
            Expanded(
              child: MembersScreen(),
            )
          ],
        );
      }
    }

    return Scaffold(
      body: Column(
        children: [
          AppHeader(),
          Expanded(child: buildMainArea()),
        ],
      ),
    );
  }
}
