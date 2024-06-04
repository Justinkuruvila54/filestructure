import 'package:filestructure/core/color_constansts.dart';
import 'package:filestructure/core/text_contants.dart';
import 'package:flutter/material.dart';

class Eduactionscreen extends StatefulWidget {
  const Eduactionscreen({super.key});

  @override
  State<Eduactionscreen> createState() => _EduactionscreenState();
}

class _EduactionscreenState extends State<Eduactionscreen> {
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
                    "Education",
                    style: Textcontants.secondarytitle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 19, 19, 18),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2020",
                            style: Textcontants.homescreenbottomtext,
                          ),
                          Text(
                            "Btech in computer science",
                            style: Textcontants.secondarytitle,
                          ),
                          Text(
                            "Sree Buddha College Of Engineering Alappuzha",
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
