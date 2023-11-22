import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget deskTop;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.deskTop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width <= 800;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width > 800 &&
      MediaQuery.sizeOf(context).width < 1200;

  static bool isDestop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 1200;

  @override
  Widget build(BuildContext context) {
   return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return deskTop;
        } else if (constraints.maxWidth >= 800 &&
            constraints.maxWidth <= 1200) {
          return tablet ?? mobile;
        } else {
          return mobile;
        }
      },
    );
  }
}
