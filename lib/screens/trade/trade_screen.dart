import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/buy_sell_buttons.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/chart.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/current_pair_button.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/timer/fake_timer.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/investment/investment_amount_selector.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/show_balance.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/trade_screen_title.dart';

class TradeScreen extends StatelessWidget {
  static const String id = 'TradeScreen';


  TradeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    double spacer = height / 120;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 10),
        color: kTradeBackgroundColor,
        child: Column(
          children: [
            SizedBox(height: spacer,),
            const TradeScreenTitle(),
            SizedBox(height: spacer,),
            Expanded(child: ShowBalance()),
            SizedBox(height: spacer,),
            Expanded(flex: 5,child: Chart()),
            SizedBox(height: spacer,),
            Expanded(child: const CurrencyPairButton()),
            SizedBox(height: spacer,),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: FakeTimer()),
                  SizedBox(width: spacer,),
                  Expanded(child: InvestmentAmountSelector()),
                ],
              ),
            ),
            SizedBox(height: spacer,),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: BuySellButton('Sell')),
                  SizedBox(width: spacer,),
                  Expanded(child: BuySellButton('Buy')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
