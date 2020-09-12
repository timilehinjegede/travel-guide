import 'package:flutter/material.dart';

class ResponsiveUtil extends StatelessWidget {
  final Widget mobileWidget;
  final Widget tabletWidget;
  final Widget desktopWidget;

  ResponsiveUtil({
    this.mobileWidget,
    this.tabletWidget,
    this.desktopWidget,
  });

  static bool isMobile(context) =>
      MediaQuery.of(context).size.shortestSide < 600;
  static bool isTablet(context) =>
      MediaQuery.of(context).size.shortestSide >= 600;
  static bool isDesktop(context) =>
      MediaQuery.of(context).size.shortestSide >= 1300;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1300) {
          return desktopWidget;
        } else if (constraints.maxWidth >= 600) {
          return tabletWidget;
        } else {
          return mobileWidget;
        }
      },
    );
  }
}
