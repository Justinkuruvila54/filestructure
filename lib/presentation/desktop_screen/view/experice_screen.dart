// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:filestructure/core/color_constansts.dart';
import 'package:filestructure/core/text_contants.dart';
import 'package:filestructure/presentation/desktop_screen/widgets/animated_hireme_skills.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Experiencescreen extends StatefulWidget {
  const Experiencescreen({super.key});

  @override
  State<Experiencescreen> createState() => _ExperiencescreenState();
}

class _ExperiencescreenState extends State<Experiencescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colorconstannts.backgroundColor,
        body: Center(
          child: Container(
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Experience",
                    style: Textcontants.secondarytitle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 19, 19, 18),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2024  - present",
                            style: Textcontants.homescreenbottomtext,
                          ),
                          Text(
                            "flutter intern",
                            style: Textcontants.secondarytitle,
                          ),
                          Text(
                            "Luminar techno lab ",
                            style: Textcontants.homescreenbottomtext,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ));
  }
}
