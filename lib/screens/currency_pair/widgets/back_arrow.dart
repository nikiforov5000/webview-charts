import 'package:flutter/material.dart';

class BackArrowIcon extends StatelessWidget {
  const BackArrowIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: const Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
    );
  }
}
