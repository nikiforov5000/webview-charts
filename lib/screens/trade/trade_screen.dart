import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/data/balance_provieder.dart';
import 'package:test_job_slavit_ou/models/balance.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';
import 'package:test_job_slavit_ou/screens/trade/widgets/chart.dart';

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
            const CurrencyPairButton(),
            Chart(),
          ],
        ),
      ),
    );
  }
}

class TradeScreenTitle extends StatelessWidget {
  const TradeScreenTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('TradeScreen');
  }
}

class CurrencyPairButton extends StatelessWidget {
  const CurrencyPairButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, CurrencyPairScreen.id);
      },
      child: const Text('go to CurrencyPair'),
    );
  }
}


class ShowBalance extends StatelessWidget {
  const ShowBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          Text('Balance'),
          CurrentBalance(),
        ],
      ),
    );
  }
}

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final balanceProvider = Provider.of<BalanceProvider>(context);
    return StreamBuilder<Balance>(
      stream: balanceProvider.stream,
        builder: (context, snapshot) {
          double balance = snapshot.data!.balance;
          return Text(balance.toStringAsFixed(0));
        },
    );
  }
}

