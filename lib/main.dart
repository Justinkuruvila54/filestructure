// ignore_for_file: prefer_const_constructors

import 'package:filestructure/presentation/desktop_screen/view/home_screen.dart';
import 'package:filestructure/presentation/desktop_screen/view/tabbar_screen.dart';
import 'package:filestructure/presentation/mobile_screen/view/homescreen.dart';
import 'package:filestructure/presentation/responsive_screen/view/responsive_screen_layout.dart';
import 'package:filestructure/presentation/tablet_screen/view/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBar(
        backgroundColor: Colors.amber,
      ),
      builder: (context, child) => Responsivelayoutscreen(
          mobilescafold: Mobilehomescreen(),
          tabletscafold: Tablethomescreen(),
          desktopscafold: Desktoptabbarscreen()),
    );
  }
}
