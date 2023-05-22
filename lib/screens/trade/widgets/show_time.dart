import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/time_input.dart';

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
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TimeInput(minutesController),
          const Text(' : '),
          TimeInput(secondsController),
        ],
      ),
    );
  }
}
