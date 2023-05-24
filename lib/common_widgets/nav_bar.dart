import 'package:flutter/material.dart';
import 'package:test_job_slavit_ou/common_widgets/nav_bar_icons.dart';
import 'package:test_job_slavit_ou/constants/colors.dart';
import 'package:test_job_slavit_ou/constants/text_styles.dart';

class NavBar extends StatefulWidget {
  int currentIndex;
  NavBar(this.currentIndex, {Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kNavBarBackgroundColor,
      padding: const EdgeInsets.only(left: 23, right: 23, bottom: 33, top: 10),
      child: BottomNavigationBar(
        elevation: 0,
        iconSize: 50,
        backgroundColor: kNavBarBackgroundColor,
        selectedItemColor: kGreenColor,
        selectedLabelStyle: kNavBarLabelTextStyle,
        unselectedLabelStyle: kNavBarLabelTextStyle,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.currentIndex,
        onTap: (index) => setState(() => widget.currentIndex = index),
        items: NavBarIcons.getIcons(),
      ),
    );
  }
}
