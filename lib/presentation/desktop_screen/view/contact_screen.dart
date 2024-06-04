// ignore_for_file: prefer_const_constructors

import 'package:filestructure/core/color_constansts.dart';
import 'package:filestructure/core/text_contants.dart';
import 'package:flutter/material.dart';

class Contactscreen extends StatefulWidget {
  const Contactscreen({super.key});

  @override
  State<Contactscreen> createState() => _ContactscreenState();
}

class _ContactscreenState extends State<Contactscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstannts.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 250, top: 100),
        child: Row(
          children: [
            Container(
              height: 500,
              width: 450,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 29, 27, 27)),
              // ignore: sort_child_properties_last
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Let's work together",
                      style: Textcontants.textheading,
                    ),
                    Text(
                      "Let's collaborate effectively to achieve your goals. Combining our skills and knowledge will lead to success. Together, we can create something remarkable.",
                      style: Textcontants.homescreenbottomtext,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.black,
                                filled: true,
                                labelText: "First name",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 5),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40,
                          width: 200,
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.black,
                                filled: true,
                                labelText: "last Name",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 5),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.black,
                                filled: true,
                                labelText: "Email",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 5),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40,
                          width: 200,
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.black,
                                filled: true,
                                labelText: "phone",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 5),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 180,
                        width: 450,
                        color: Colors.black,
                        child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.black,
                              filled: true,
                              labelText: "Type your message here.."),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green),
                      child: Center(
                        child: Text(
                          "send message",
                          style: Textcontants.secondarytitle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.green,
                        child: Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone",
                            style: Textcontants.homescreenbottomtext,
                          ),
                          Text(
                            "+91 94961509996",
                            style: Textcontants.secondarytitle,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.green,
                        child: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: Textcontants.homescreenbottomtext,
                          ),
                          Text(
                            "Justinkuruvila54@gamil.com",
                            style: Textcontants.secondarytitle,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.green,
                        child: Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Address",
                            style: Textcontants.homescreenbottomtext,
                          ),
                          Text(
                            "Eranakulam",
                            style: Textcontants.secondarytitle,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
