import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/top_10_table.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/top_screen_title.dart';

class TopScreen extends StatelessWidget {
  static const String id = 'top_screen';

  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          TopScreenTitle(),
          Top10Table(),
        ],
      ),
    );
  }
}
