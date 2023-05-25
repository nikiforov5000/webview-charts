import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/common_widgets/nav_bar.dart';
import 'package:test_job_slavit_ou/data/balance_provieder.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';
import 'package:test_job_slavit_ou/data/currency_provider.dart';
import 'package:test_job_slavit_ou/models/balance.dart';
import 'package:test_job_slavit_ou/providers/screen_index_provider.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';
import 'package:test_job_slavit_ou/screens/top/top_screen.dart';
import 'package:test_job_slavit_ou/screens/trade/trade_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = <Widget>[
    TradeScreen(),
    TopScreen(),
    CurrencyPairScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    BalanceProvider balanceProvider = Provider.of<BalanceProvider>(context);
    balanceProvider.balance = Balance(10000.0);

    CurrencyProvider currencyProvider = Provider.of<CurrencyProvider>(context);
    currencyProvider.currencyPair = CurrencyPair.eurUsd;

    ScreenIndexProvider screenIndexProvider = Provider.of<ScreenIndexProvider>(context);

    return Stack(
      children: [
        Scaffold(
          body: IndexedStack(
            index: screenIndexProvider.currentIndex,
            children: screens,
          ),
          bottomNavigationBar: NavBar(screenIndexProvider.currentIndex > 1 ? 0 : 1),
        ),
        // Opacity(
        //   opacity: 0.5,
        //   child: Center(
        //     child: Image(
        //       image: AssetImage('assets/images/reference/Choose pair.png'),
        //       fit: BoxFit.fitWidth,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
