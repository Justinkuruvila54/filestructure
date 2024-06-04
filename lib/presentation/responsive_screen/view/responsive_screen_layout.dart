import 'package:flutter/material.dart';

class Responsivelayoutscreen extends StatelessWidget {
  const Responsivelayoutscreen(
      {super.key,
      required this.mobilescafold,
      required this.tabletscafold,
      required this.desktopscafold});

  final Widget mobilescafold;

  final Widget tabletscafold;

  final Widget desktopscafold;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobilescafold;
      } else if (constraints.maxWidth < 1110) {
        return tabletscafold;
      } else {
        return desktopscafold;
      }
    });
  }
}
