import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/buy_sell_buttons.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/chart.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/current_pair_button.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/fake_timer.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/investment_amount_selector.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/show_balance.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/trade_screen_title.dart';

class TradeScreen extends StatelessWidget {
  static const String id = 'TradeScreen';

  const TradeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height / 12,),
            const TradeScreenTitle(),
            SizedBox(height: height / 70,),
            ShowBalance(),
            Chart(),
            const CurrencyPairButton(),
            Row(
              children: [
                FakeTimer(),
                InvestmentAmountSelector(),
              ],
            ),
            BuySellButtons(),
          ],
        ),
      ),
    );
  }
}
