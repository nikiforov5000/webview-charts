import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';

class ProgressForeground extends StatelessWidget {
  final double height;
  final double value;

  const ProgressForeground({
    required this.height,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double currentWidth = constraints.maxWidth * value;
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height,
              width: currentWidth,
              decoration: BoxDecoration(
                  color: kGreenColor,
                  borderRadius: BorderRadius.circular(99)),
            ),
          ],
        );
      },
    );
  }
}
