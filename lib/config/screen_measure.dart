import 'package:flutter/material.dart';

class MeasuredScreen extends StatelessWidget {
  const MeasuredScreen({super.key});

  /// class created to easy reference and measure certains screens

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SizedBox(
      width: width,
      height: height,
      child: Text("$width,$height"),
    ));
  }
}

// isDektop 920,736
// isTablet  767, 736
// isMobile 500, 736