import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/change_time.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/show_time.dart';

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
    return Expanded(
      child: Container(
        color: Colors.purpleAccent,
        child: Column(
          children: [
            Text('Timer'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChangeTime(
                  sign: '-',
                  minutesController: _minutesController,
                  secondsController: _secondsController,
                ),
                ShowTime(_secondsController, _minutesController),
                ChangeTime(
                  sign: '+',
                  minutesController: _minutesController,
                  secondsController: _secondsController,
                ),
                // ChangeTime(sign: '+', controller: _controller),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
