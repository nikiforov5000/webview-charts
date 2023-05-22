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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TradeScreenTitle(),
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
