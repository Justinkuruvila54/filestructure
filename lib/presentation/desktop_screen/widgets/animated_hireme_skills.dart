import 'package:filestructure/core/text_contants.dart';
import 'package:flutter/material.dart';

class Tweenanimationhireme extends StatelessWidget {
  const Tweenanimationhireme({
    super.key,
    required this.label,
    required this.percentage,
    required this.percen,
  });
  final String label;
  final double percentage;
  final String percen;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      builder: (context, double value, child) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  child: CircularProgressIndicator(
                    value: value,
                    backgroundColor: const Color.fromARGB(255, 35, 35, 35),
                    color: Colors.green,
                  ),
                ),
                Positioned(
                    right: 20,
                    top: 50,
                    bottom: 30,
                    left: 40,
                    child: Text(percen, style: TextStyle(color: Colors.white))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      duration: Duration(seconds: 5),
      tween: Tween<double>(begin: 0, end: percentage),
    );
  }
}
