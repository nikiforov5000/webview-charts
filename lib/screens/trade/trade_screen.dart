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

    return ElevatedButton(
      onPressed: () {
        balanceProvider.buySell();
      },
      child: Text('Buy Sell'),
    );
  }
}


class InvestmentAmountSelector extends StatefulWidget {
  const InvestmentAmountSelector({Key? key}) : super(key: key);

  @override
  State<InvestmentAmountSelector> createState() => _InvestmentAmountSelectorState();
}

class _InvestmentAmountSelectorState extends State<InvestmentAmountSelector> {

    TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BalanceProvider balanceProvider = Provider.of<BalanceProvider>(context);
    _controller.text = balanceProvider.investment.toStringAsFixed(0);

    return Expanded(

      child: Container(
        color: Colors.tealAccent,
        child: Column(
          children: [
            Text('Investment'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (balanceProvider.investment >= 100) {
                        balanceProvider.investment -= 100;
                        _controller.text = balanceProvider.investment.toStringAsFixed(0);
                        balanceProvider.currentInvestment = balanceProvider.investment;
                      }
                    });
                  },
                  child: Icon(Icons.remove),
                ),
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _controller,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (balanceProvider.investment + 100 <= balanceProvider.balance.balance) {
                        balanceProvider.investment += 100;
                        _controller.text = balanceProvider.investment.toStringAsFixed(0);
                        balanceProvider.currentInvestment = balanceProvider.investment;
                      }
                    });
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
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

class FakeTimer extends StatelessWidget {
  const FakeTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.purpleAccent,
        child: Text('Timer'),
      ),
    );
  }
}


