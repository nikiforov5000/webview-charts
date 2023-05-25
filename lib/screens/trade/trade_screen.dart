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
    double spacer = height / 100;
    double buttonHeight = height / 15;
    return Scaffold(
      body: Container(
        height:  height,
        padding: EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 10),
        color: kTradeBackgroundColor,
        child: Column(
          children: [
            SizedBox(height: spacer,),
            SizedBox(height: spacer,),
            SizedBox(height: buttonHeight,child: const TradeScreenTitle()),
            SizedBox(height: spacer,),
            SizedBox(height: buttonHeight,child: ShowBalance()),
            SizedBox(height: spacer,),
            SizedBox(height: spacer,),
            Expanded(child: Chart()),
            SizedBox(height: spacer,),
            SizedBox(height: spacer,),
            SizedBox(height: buttonHeight,child: const CurrencyPairButton()),
            SizedBox(height: spacer,),
            SizedBox(
              height: buttonHeight,
              child: Row(
                children: [
                  Expanded(child: FakeTimer()),
                  SizedBox(width: spacer,),
                  Expanded(child: InvestmentAmountSelector()),
                ],
              ),
            ),
            SizedBox(height: spacer,),
            SizedBox(
              height: buttonHeight,
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
