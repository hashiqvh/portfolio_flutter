import 'package:flutter/material.dart';

class ScreenUtil {
  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 900 &&
      MediaQuery.sizeOf(context).width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 900;
}
