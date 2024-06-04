// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Mobilehomescreen extends StatefulWidget {
  const Mobilehomescreen({super.key});

  @override
  State<Mobilehomescreen> createState() => _MobilehomescreenState();
}

class _MobilehomescreenState extends State<Mobilehomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Icon(Icons.menu),
      ),
      body: Text("mobile_screen"),
    );
  }
}
