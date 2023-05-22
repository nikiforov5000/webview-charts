import 'package:flutter/material.dart';

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
          reduceOneSecond();
        } else {
          addOneSecond();
        }
        formatAfterButtons();
      },
      child: Icon(sign == '-' ? Icons.remove : Icons.add),
    );
  }

  void reduceOneSecond() {
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

  void addOneSecond() {
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

  void formatAfterButtons() {
    if (secondsController.text.length < 2) {
      secondsController.text = '0${secondsController.text}';
    }
    if (minutesController.text.length < 2) {
      minutesController.text = '0${minutesController.text}';
    }
  }
}
