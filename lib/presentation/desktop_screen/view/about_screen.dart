// ignore_for_file: prefer_const_constructors

import 'package:filestructure/core/color_constansts.dart';
import 'package:filestructure/core/text_contants.dart';
import 'package:flutter/material.dart';

class Aboutscreen extends StatefulWidget {
  const Aboutscreen({super.key});

  @override
  State<Aboutscreen> createState() => _AboutscreenState();
}

class _AboutscreenState extends State<Aboutscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colorconstannts.backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: Textcontants.secondarytitle,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child: Text(
                            textAlign: TextAlign.justify,
                            "My name is Justin, and I am a passionate and dedicated individual with a strong foundation in technology. I hold a B.Tech in Computer Science from Sree Buddha College of Engineering, Alapuzha. During my time at the college, I developed a deep understanding of various computer science concepts and honed my technical skills. I excelled in my coursework and participated in various tech-related extracurricular activities, which further enriched my learning experience.To gain practical industry experience, I completed an internship at Luminar Techno Lab. This internship provided me with hands-on experience and an opportunity to work on real-world projects. I collaborated with a team of professionals, contributing to the development and implementation of innovative solutions. The experience enhanced my problem-solving abilities and gave me insight into the workings of the tech industry.",
                            style: TextStyle(
                                letterSpacing: 1,
                                fontFamily: "fontane",
                                fontSize: 17,
                                color: Color.fromARGB(255, 209, 200, 200)),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ));
  }
}
