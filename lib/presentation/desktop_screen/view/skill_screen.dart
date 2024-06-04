import 'package:filestructure/core/color_constansts.dart';
import 'package:filestructure/core/text_contants.dart';
import 'package:filestructure/presentation/desktop_screen/widgets/animated_hireme_skills.dart';
import 'package:flutter/material.dart';

class Skillsscreen extends StatefulWidget {
  const Skillsscreen({super.key});

  @override
  State<Skillsscreen> createState() => _SkillsscreenState();
}

class _SkillsscreenState extends State<Skillsscreen> {
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
                    "Skills",
                    style: Textcontants.secondarytitle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Tweenanimationhireme(
                        label: 'flutter',
                        percentage: 0.9,
                        percen: "90%",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Tweenanimationhireme(
                        label: 'Dart',
                        percentage: 0.8,
                        percen: "80%",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Tweenanimationhireme(
                        label: 'Hive',
                        percentage: .6,
                        percen: "60%",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Tweenanimationhireme(
                        label: 'Firebase',
                        percentage: .5,
                        percen: "50%",
                      ),
                    ],
                  ),
                ],
              )),
        ));
  }
}
