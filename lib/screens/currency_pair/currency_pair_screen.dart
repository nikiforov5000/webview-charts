import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/constants/box_decorations.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';
import 'package:test_job_slavit_ou/data/currency_provider.dart';
import 'package:test_job_slavit_ou/providers/screen_index_provider.dart';

class CurrencyPairScreen extends StatelessWidget {
  static const String id = 'currency_pair_screen';

  const CurrencyPairScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrencyProvider currencyProvider = Provider.of<CurrencyProvider>(context);

    return Scaffold(

      body: StreamBuilder<CurrencyPair>(
          stream: currencyProvider.stream,
          builder: (BuildContext context, snapshot) {
            return CurrencyPairList();
          }),
    );
  }
}

class CurrencyPairList extends StatelessWidget {
  const CurrencyPairList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    List<Widget> leftCol = [];
    List<Widget> rightCol = [];
    CurrencyProvider currencyProvider = Provider.of<CurrencyProvider>(context);

    for (var currencyPair in CurrencyPair.values) {
      if (currencyPair.index.isEven) {
        leftCol.add(SelectCurrencyPairButton(currencyPair, currencyProvider));
      } else {
        rightCol.add(SelectCurrencyPairButton(currencyPair, currencyProvider));
      }
    }

    return Container(
      color: kCurrencyPairScreenBackgroundColor,
      child: Column(
        children: [
          SizedBox(
            height: height / 12,
          ),
          CurrencyPairScreenTitle(),
          SizedBox(
            height: height / 30,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: height / 20),
              child: Row(
                children: [
                  Expanded(child: Column(children: leftCol)),
                  Expanded(child: Column(children: rightCol)),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height / 10,
          ),
        ],
      ),
    );
  }
}

class SelectCurrencyPairButton extends StatelessWidget {
  final CurrencyPair _currencyPair;
  final CurrencyProvider _currencyProvider;

  const SelectCurrencyPairButton(
    this._currencyPair,
    this._currencyProvider, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = _currencyPair == _currencyProvider.currencyPair
        ? kGreenColor
        : kLightGreyButtons;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          _currencyProvider.currencyPair = _currencyPair;
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: kRoundedConteinerDecoration.copyWith(
            color: color,
          ),
          child: Center(
            child: Text(
              _readable(_currencyPair.name),
              style: kBigButtonTextStyle.copyWith(
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _readable(String name) {
    return name.toUpperCase().substring(0, 3) +
        ' / ' +
        name.toUpperCase().substring(3);
  }
}

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
              child: BackArrowIcon(),
            ),
        Row(
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

class BackArrowIcon extends StatelessWidget {
  const BackArrowIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Icon(Icons.arrow_back_ios, color: Colors.white,),
    );
  }
}

