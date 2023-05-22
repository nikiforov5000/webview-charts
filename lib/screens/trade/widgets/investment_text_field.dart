import 'package:flutter/material.dart';

class InvestmentTextField extends StatefulWidget {
  final TextEditingController controller;
  const InvestmentTextField(this.controller, {Key? key}) : super(key: key);

  @override
  State<InvestmentTextField> createState() => _InvestmentTextFieldState();
}

class _InvestmentTextFieldState extends State<InvestmentTextField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        textAlign: TextAlign.center,
        controller: widget.controller,
      ),
    );
  }
}
