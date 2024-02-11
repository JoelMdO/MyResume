import 'package:flutter/widgets.dart';

///MediaQuery for the different widgets resize as per mobile screen measures.
///to be exported as [ScreenSize myScreenSize ScreenSize();]
///
class ScreenSize {
  final double screenWidth, screenHeight;

  ScreenSize(BuildContext context)
      : screenWidth = MediaQuery.sizeOf(context).width,
        screenHeight = MediaQuery.sizeOf(context).height;
}

class ScreenType {
  final dynamic isDesktop, isTablet, isMobile, isMiniMobile;

  ScreenType(BuildContext context)
      : isDesktop = MediaQuery.of(context).size.width >= 992,
        isTablet = MediaQuery.of(context).size.width <= 991 &&
            MediaQuery.of(context).size.width >= 600,
        isMobile = MediaQuery.of(context).size.width < 600 &&
            MediaQuery.of(context).size.width >= 400,
        isMiniMobile = MediaQuery.of(context).size.width < 400;
}
