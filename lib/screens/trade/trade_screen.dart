import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/data/balance_provieder.dart';
import 'package:test_job_slavit_ou/models/balance.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/chart.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/current_pair_button.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/fake_timer.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/investment_amount_selector.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/show_balance.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/trade_screen_title.dart';

class TradeScreen extends StatefulWidget {
  static const String id = 'TradeScreen';

  TradeScreen({Key? key}) : super(key: key);

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
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

class BuySellButtons extends StatelessWidget {
  const BuySellButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BalanceProvider balanceProvider = Provider.of<BalanceProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            balanceProvider.buySell();
          },
          child: Text('Buy Sell'),
        ),
        ElevatedButton(
          onPressed: () {
            balanceProvider.buySell();
          },
          child: Text('Buy Sell'),
        ),
      ],
    );
  }
}


