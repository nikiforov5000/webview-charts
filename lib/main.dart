import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/data/balance_provieder.dart';
import 'package:test_job_slavit_ou/data/currency_provider.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';
import 'package:test_job_slavit_ou/screens/home/home_screen.dart';
import 'package:test_job_slavit_ou/screens/preloader/preloader_screen.dart';
import 'package:test_job_slavit_ou/screens/top/top_screen.dart';
import 'package:test_job_slavit_ou/screens/trade/trade_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CurrencyProvider()),
        ChangeNotifierProvider(create: (_) => BalanceProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: PreloaderScreen.id,
        initialRoute: PreloaderScreen.id,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          CurrencyPairScreen.id: (context) => CurrencyPairScreen(),
          PreloaderScreen.id: (context) => PreloaderScreen(),
          TopScreen.id: (context) => TopScreen(),
          TradeScreen.id: (context) => TradeScreen(),
        },
      ),
    );
  }
}
