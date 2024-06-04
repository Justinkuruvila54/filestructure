// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

// import 'package:animated_dashed_circle/animated_dashed_circle.dart';
import 'package:animated_dashed_circle/animated_dashed_circle_view.dart';
import 'package:flutter/material.dart';
import 'package:filestructure/core/text_contants.dart';
import 'package:filestructure/presentation/desktop_screen/widgets/link_homescreen_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Desktophomescreen extends StatefulWidget {
  const Desktophomescreen({super.key});

  @override
  State<Desktophomescreen> createState() => _DesktophomescreenState();
}

class _DesktophomescreenState extends State<Desktophomescreen> {
  void lauchurl({required String urlString}) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 300),
            child: Text(
              "Justin",
              style: TextStyle(
                  fontFamily: 'fontane', fontSize: 25, color: Colors.white),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter Developer",
                          style: Textcontants.secondarytitle,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Hello I'm",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'fontane',
                              fontSize: 40,
                              letterSpacing: 5),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Justin Kuruvila",
                          style: Textcontants.textheading,
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(right: 300),
                          child: Text(
                            "Proficient Flutter Developer with one year of experience in creating high-performance mobile apps for Android and iOS. Expert in Dart, state management, and API integration, with a strong focus on user-friendly design and agile development. Passionate about innovation and staying updated with the latest tech trends.",
                            textAlign: TextAlign.justify,
                            maxLines: 10,
                            style: TextStyle(
                                fontFamily: 'fontane',
                                fontSize: 18,
                                letterSpacing: 1,
                                color:
                                    const Color.fromARGB(255, 217, 217, 217)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  AnimatedDashedCircleView(
                      image: AssetImage("assets/image/profile1.jpeg"),
                      duration: Duration(seconds: 100),
                      autoPlay: true,
                      borderWidth: 10,
                      dashSize: 25,
                      height: 250,
                      color: Colors.green)
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        lauchurl(
                            urlString:
                                "https://drive.google.com/file/d/1xDqKdq0gV5ufRL750Bqxgb62OgByUPle/view?usp=drive_link");
                      },
                      child: Container(
                        height: 40,
                        width: 135,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                            height: 37,
                            width: 130,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Download CV",
                                      style: Textcontants.secondarytitle,
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.download_outlined,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Linkhomescreenwidgets(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "1",
                          style: Textcontants.homescreenbottomnumber,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "year of\nexperience",
                          style: Textcontants.homescreenbottomtext,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "6",
                          style: Textcontants.homescreenbottomnumber,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "projects\ncompleted",
                          style: Textcontants.homescreenbottomtext,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "5",
                          style: Textcontants.homescreenbottomnumber,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "technologies\nmastered",
                          style: Textcontants.homescreenbottomtext,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "100",
                          style: Textcontants.homescreenbottomnumber,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "number of\ncommits",
                          style: Textcontants.homescreenbottomtext,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
