import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/common_widgets/rounded_container.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/current_balance.dart';

class ShowBalance extends StatelessWidget {
  const ShowBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      color: kLightGreyButtons,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'Balance',
              style: kSmallButtonTextStyle,
            ),
          ),
          SizedBox(height: 5,),
          CurrentBalance(),
        ],
      ),
    );
  }
}


