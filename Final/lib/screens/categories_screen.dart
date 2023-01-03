// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 137, 154),
      body: Container(
        width: 500,
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: ListView(
            children: [
              Icon(
                Icons.home,
                size: 60,
                color: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.phone_android_outlined,
                size: 60,
                color: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.light,
                size: 60,
                color: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.settings,
                size: 60,
                color: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.security,
                size: 60,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
