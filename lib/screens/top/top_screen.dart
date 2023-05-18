import 'package:flutter/material.dart';

class TopScreen extends StatelessWidget {
  static const String id = 'top_screen';
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('TopScreen'),
      ),
    );
  }
}
