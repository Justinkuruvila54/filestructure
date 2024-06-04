import 'package:filestructure/core/color_constansts.dart';
import 'package:filestructure/core/hire_me_list_text.dart';
import 'package:filestructure/core/page_contants.dart';
import 'package:filestructure/core/text_contants.dart';

import 'package:flutter/material.dart';

class Hiremescreen extends StatefulWidget {
  const Hiremescreen({super.key});

  @override
  State<Hiremescreen> createState() => _HiremescreenState();
}

class _HiremescreenState extends State<Hiremescreen> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colorconstannts.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 2, 2, 2),
                      ),
                      width: 400,
                      height: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "why Hire me?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'fontane',
                                  fontSize: 40,
                                  letterSpacing: 5),
                            ),
                            Text(
                              "Hire me for my proven track record of delivering results, my strong problem-solving skills, and my dedication to continuous improvement. I bring a proactive approach and a commitment to excellence. Let's drive success together.",
                              style: Textcontants.homescreenbottomtext,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) => Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: InkWell(
                                          onTap: () {
                                            selectedindex = index;

                                            setState(() {});
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: selectedindex == index
                                                    ? Colors.green
                                                    : Colors.grey),
                                            child: Center(
                                                child: Text(Hiremetext
                                                        .listseperatorinhireme[
                                                    index])),
                                          ),
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        height: 15,
                                      ),
                                  itemCount:
                                      Hiremetext.listseperatorinhireme.length),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Scaffold(
                  backgroundColor: Colorconstannts.backgroundColor,
                  body: Center(
                      child: Container(
                          child: PageContants.hiremepages[selectedindex])),
                ),
              )
            ],
          ),
        ));
  }
}
