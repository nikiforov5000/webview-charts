import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/home/home_screen.dart';
import 'package:test_job_slavit_ou/screens/preloader/widgets/percent_number.dart';
import 'package:test_job_slavit_ou/screens/preloader/widgets/progress_bar_background.dart';
import 'package:test_job_slavit_ou/screens/preloader/widgets/progress_bar_foreground.dart';
import 'package:test_job_slavit_ou/services/push_notification_request.dart';

class ProgressBar extends StatelessWidget {
  ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = 25.0;

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(seconds: 3),
      onEnd: () {
        requestPushNotifications();
        Future.delayed(Duration.zero, () {
          Navigator.pushNamed(context, HomeScreen.id);
        });
      },
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              ProgressBackground(h: height),
              ProgressForeground(height: height, value: value),
              PercentNumber(value),
            ],
          ),
        );
      },
    );
  }
}
