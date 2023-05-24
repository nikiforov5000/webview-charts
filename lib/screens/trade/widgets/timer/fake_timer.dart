import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/common_widgets/rounded_container.dart';
import 'package:test_job_slavit_ou/constants/box_decorations.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/timer/change_time.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/timer/show_time.dart';

class FakeTimer extends StatelessWidget {
  FakeTimer({Key? key,}) : super(key: key);

  final TextEditingController _secondsController = TextEditingController();
  final TextEditingController _minutesController = TextEditingController();

  Timer? timer;

  @override
  Widget build(BuildContext context) {
    _minutesController.text = '00';
    _secondsController.text = '01';
    timer = Timer.periodic(Duration(seconds: 1), (timer) {});
    return Container(
      decoration: kRoundedConteinerDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Timer', style: kSmallButtonTextStyle,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Expanded(
                  child: ChangeTime(
                    sign: '-',
                    minutesController: _minutesController,
                    secondsController: _secondsController,
                  ),
                ),
                Expanded(child: ShowTime(_secondsController, _minutesController)),
                Expanded(
                  child: ChangeTime(
                    sign: '+',
                    minutesController: _minutesController,
                    secondsController: _secondsController,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
