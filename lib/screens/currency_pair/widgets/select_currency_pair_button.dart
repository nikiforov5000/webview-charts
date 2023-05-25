import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/constants/box_decorations.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';
import 'package:test_job_slavit_ou/data/currency_pair.dart';
import 'package:test_job_slavit_ou/providers/currency_provider.dart';

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
    /// TODO replace with services/readableCurrencyPair
    return '${name.toUpperCase().substring(0, 3)} / ${name.toUpperCase().substring(3)}';
  }
}
