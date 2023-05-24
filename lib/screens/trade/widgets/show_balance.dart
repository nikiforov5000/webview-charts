import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/constants/box_decorations.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/current_balance.dart';

class ShowBalance extends StatelessWidget {
  const ShowBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kRoundedConteinerDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Balance',
              style: kSmallButtonTextStyle,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(child: CurrentBalance()),
        ],
      ),
    );
  }
}
