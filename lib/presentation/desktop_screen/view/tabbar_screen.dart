// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:filestructure/core/text_contants.dart';
import 'package:filestructure/presentation/desktop_screen/view/contact_screen.dart';
import 'package:filestructure/presentation/desktop_screen/view/hire_me_screen.dart';
import 'package:filestructure/presentation/desktop_screen/view/home_screen.dart';
import 'package:flutter/material.dart';

class Desktoptabbarscreen extends StatefulWidget {
  const Desktoptabbarscreen({super.key});

  @override
  State<Desktoptabbarscreen> createState() => _DesktoptabbarscreenState();
}

class _DesktoptabbarscreenState extends State<Desktoptabbarscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            TabBarView(
              children: [
                Desktophomescreen(),
                Text("data"),
                Contactscreen(),
                Hiremescreen()
              ],
            ),
            Positioned(
              right: 300, // Adjust position as needed
              top: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: TabBar(
                  unselectedLabelStyle: Textcontants.secondarytitle,
                  labelColor: Colors.green,
                  isScrollable: true,
                  indicatorColor: Colors.green,
                  tabs: [
                    Tab(
                      child: Text(
                        "Home",
                        style: TextStyle(fontFamily: 'fontane'),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Work",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "contact",
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green),
                        child: Center(
                          child: Text(
                            "Hire me",
                            style: Textcontants.secondarytitle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
