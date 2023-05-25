import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/providers/screen_index_provider.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/widgets/back_arrow.dart';

class CurrencyPairScreenTitle extends StatelessWidget {
  const CurrencyPairScreenTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenIndexProvider = Provider.of<ScreenIndexProvider>(context);
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            screenIndexProvider.index = 0;
          },
          child: const BackArrowIcon(),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Currency pair',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
