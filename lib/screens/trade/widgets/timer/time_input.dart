import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/utils/time_input_formatter.dart';

class TimeInput extends StatelessWidget {
  final TextEditingController controller;
  const TimeInput(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        border: InputBorder.none,
        constraints: BoxConstraints(maxHeight: 25),
      ),
      style: kBigButtonTextStyle,
      textAlign: TextAlign.center,
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(2),
        TimeInputFormatter(),
      ],
    );
  }
}
