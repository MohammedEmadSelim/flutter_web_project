import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget webl;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.webl,
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
          
          throw UnimplementedError();
        }




}
