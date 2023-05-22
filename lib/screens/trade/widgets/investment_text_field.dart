import 'package:flutter/material.dart';

class InvestmentTextField extends StatelessWidget {
  final controller;
  const InvestmentTextField(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                 Expanded(
      child: TextField(
        textAlign: TextAlign.center,
        controller: controller,
      ),
    );
  }
}
