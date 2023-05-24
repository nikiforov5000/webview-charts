import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/timer/time_input.dart';

class ShowTime extends StatelessWidget {
  final TextEditingController minutesController;
  final TextEditingController secondsController;
  const ShowTime(
    this.secondsController,
    this.minutesController, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TimeInput(minutesController),
        Text(' : ', style: kBigButtonTextStyle,),
        TimeInput(secondsController),
      ],
    );
  }
}
