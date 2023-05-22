import 'package:flutter/material.dart';

class FakeTimer extends StatelessWidget {
  const FakeTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.purpleAccent,
        child: Text('Timer'),
      ),
    );
  }
}
