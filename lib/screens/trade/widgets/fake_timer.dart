import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FakeTimer extends StatelessWidget {
  FakeTimer({Key? key}) : super(key: key);

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
                ChangeTime(sign: '-', minutesController: _minutesController, secondsController: _secondsController,),
                ShowDuration(_secondsController, _minutesController),
                ChangeTime(sign: '+', minutesController: _minutesController, secondsController: _secondsController,),
                // ChangeTime(sign: '+', controller: _controller),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ShowDuration extends StatefulWidget {
  final minutesController;
  final secondsController;
  const ShowDuration(this.secondsController, this.minutesController, {Key? key}) : super(key: key);

  @override
  State<ShowDuration> createState() => _ShowDurationState();
}

class _ShowDurationState extends State<ShowDuration> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TimeInput(widget.minutesController),
          Text(' : '),
          TimeInput(widget.secondsController),
        ],
      ),
    );
  }
}

class TimeInput extends StatelessWidget {
  final TextEditingController controller;
  const TimeInput(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: TextField(
      textAlign: TextAlign.center,
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(2),
        TimeInputFormatter(),
      ],
      )
    );
  }
}


class TimeInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newFormattedText = newValue.text;

    if (int.parse(newValue.text) > 59) {
      newFormattedText = oldValue.text;
    }
    print('oldValue:${oldValue.text}, newValue:${newValue.text}');

    return TextEditingValue(
      text: newFormattedText,
      selection: TextSelection.collapsed(offset: newFormattedText.length),
    );
  }
}

class ChangeTime extends StatelessWidget {
  final String sign;
  final TextEditingController minutesController;
  final TextEditingController secondsController;

  const ChangeTime({
    required this.minutesController,
    required this.secondsController,
    required this.sign,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (sign == '-') {
          reduceOneSecond(minutesController: minutesController, secondsController: secondsController);
        }
        else {
          addOneSecond(minutesController: minutesController, secondsController: secondsController);
        }
        formatAfterButtons(minutesController: minutesController, secondsController: secondsController);
      },
      child: Icon(sign == '-' ? Icons.remove : Icons.add),
    );
  }
}

void formatAfterButtons({required TextEditingController minutesController, required TextEditingController secondsController}) {
  if (secondsController.text.length < 2) {
    secondsController.text = '0${secondsController.text}';
  }
  if (minutesController.text.length < 2) {
    minutesController.text = '0${minutesController.text}';
  }
}

void reduceOneSecond({
  required TextEditingController minutesController,
  required TextEditingController secondsController
}) {
  int minutes = int.parse(minutesController.text);
  int seconds = int.parse(secondsController.text);

  if (seconds > 0) {
    secondsController.text = (--seconds).toString();
    return;
  }
  if (minutes > 0) {
    minutesController.text = (--minutes).toString();
    secondsController.text = '59';
  }
}

void addOneSecond({
  required TextEditingController minutesController,
  required TextEditingController secondsController
}) {
  int minutes = int.parse(minutesController.text);
  int seconds = int.parse(secondsController.text);

  if (seconds < 59) {
    secondsController.text = (++seconds).toString();
    return;
  }
  if (minutes < 59) {
    minutesController.text = (++minutes).toString();
    secondsController.text = '00';
  }

}

