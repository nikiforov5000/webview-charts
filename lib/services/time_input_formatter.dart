import 'package:flutter/services.dart';

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
