// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Textcontants {
  static TextStyle secondarytitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'fontane',
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle textheading = TextStyle(
      fontSize: 40,
      fontFamily: 'fontane',
      fontWeight: FontWeight.bold,
      color: Colors.green,
      letterSpacing: 5,
      decorationThickness: 10);

  static TextStyle homescreenbottomtext = TextStyle(
      fontFamily: 'fontane',
      fontSize: 14,
      color: Color.fromARGB(255, 151, 148, 148));

  static TextStyle homescreenbottomnumber =
      TextStyle(fontFamily: 'fontane', fontSize: 45, color: Colors.white);
}
