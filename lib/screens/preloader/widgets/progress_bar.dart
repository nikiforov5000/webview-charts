import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/home/home_screen.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = 15.0;
    double width = MediaQuery.of(context).size.width;

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(seconds: 3),
      onEnd: () {
        Future.delayed(Duration.zero, () {
          Navigator.pushNamed(context, HomeScreen.id);
        });
      },
      builder: (context, value, child) {
        return Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(99)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: height,
                  width: value * width,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(99)),
                ),
              ],
            ),
            Center(
              child: Text(
                (value * 100).toStringAsFixed(0) + '%',
              ),
            ),
          ],
        );
      },
    );
  }
}