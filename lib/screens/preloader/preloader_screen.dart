import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/home/home_screen.dart';
import 'package:test_job_slavit_ou/screens/top/top_screen.dart';

class PreloaderScreen extends StatelessWidget {
  static const String id = 'preloader_screen';
  const PreloaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('preloader'),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              child: Text('go to Homee'),
            )
          ],
        ),
      ),
    );
  }
}
