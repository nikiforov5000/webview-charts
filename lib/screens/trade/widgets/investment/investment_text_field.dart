import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';

class InvestmentTextField extends StatefulWidget {
  final TextEditingController controller;
  const InvestmentTextField(this.controller, {Key? key}) : super(key: key);

  @override
  State<InvestmentTextField> createState() => _InvestmentTextFieldState();
}

class _InvestmentTextFieldState extends State<InvestmentTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        constraints: BoxConstraints(maxHeight: 25),
      ),
      style: kBigButtonTextStyle,
      textAlign: TextAlign.center,
      controller: widget.controller,
    );
  }
}
