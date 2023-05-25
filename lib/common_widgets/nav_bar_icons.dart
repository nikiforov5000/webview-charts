import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';

class NavBarIcons {
  static const ColorFilter inactiveColorFilter =
      ColorFilter.mode(kGreyColor, BlendMode.srcIn);
  static const ColorFilter activeColorFilter =
      ColorFilter.mode(kGreenColor, BlendMode.srcIn);
  static const String topIconPath = 'assets/images/icons/top.svg';
  static const String tradeIconPath = 'assets/images/icons/trade.svg';

  static final trade = makeNavBarItem(tradeIconPath, 'Trade');
  static final top = makeNavBarItem(topIconPath, 'Top');


  static makeNavBarItem(String path, String label) {
    final bottomPadding = EdgeInsets.only(bottom: 3);
    return BottomNavigationBarItem(
      label: label,
      icon: Padding(
        padding:bottomPadding,
        child: SvgPicture.asset(
          path,
          colorFilter: inactiveColorFilter,
        ),
      ),
      activeIcon: Padding(
        padding:bottomPadding,
        child: SvgPicture.asset(
          path,
          colorFilter: activeColorFilter,
        ),
      ),
    );
  }

  static getIcons() {
    return <BottomNavigationBarItem>[
      trade,
      top,
    ];
  }
}
