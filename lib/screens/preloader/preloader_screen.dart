import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/preloader/widgets/progress_bar.dart';

class PreloaderScreen extends StatelessWidget {
  static const String id = 'preloader_screen';

  const PreloaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProgressBar(),
          ],
        ),
      ),
    );
  }
}
