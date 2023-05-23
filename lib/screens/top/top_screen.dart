import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/top_10_table.dart';
import 'package:test_job_slavit_ou/screens/top/widgets/top_screen_title.dart';

class TopScreen extends StatelessWidget {
  static const String id = 'top_screen';

  TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: height / 12.3,),
          TopScreenTitle(),
          SizedBox(height: height / 28,),
          Top10Table(),
        ],
      ),
    );
  }
}
