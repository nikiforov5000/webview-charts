import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';

class PlusMinusIcon extends StatelessWidget {
  final String _sign;
  const PlusMinusIcon(this._sign, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Icon(Icons.add)
    return Icon(
      _sign == '-' ? Icons.remove_circle_outline : Icons.add_circle_outline,
      color: kLightGreyTextColor,
      size: 20,
    );
  }
}
