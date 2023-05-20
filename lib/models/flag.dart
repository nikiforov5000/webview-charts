import 'package:flutter_svg/flutter_svg.dart';

class Flag {
  static getFlag(String path) {
    return SvgPicture.asset(path);
  }
}
