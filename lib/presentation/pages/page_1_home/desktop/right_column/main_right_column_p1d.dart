import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/contacts/contacts_page.dart';
import 'package:resume/presentation/widgets/contacts/qr_code.dart';
import 'package:resume/utils/constants/screen_size.dart';

//---RIGHT COLUMN //
class RightColumnDesktop extends StatefulWidget {
  const RightColumnDesktop({
    super.key,
  });

  @override
  RightColumnDesktopState createState() => RightColumnDesktopState();
}

class RightColumnDesktopState extends State<RightColumnDesktop> {
  @override
  Widget build(BuildContext context) {
    ScreenSize myScreenSize = ScreenSize(context);
    ScreenType myScreenType = ScreenType(context);

    return SizedBox(
        width: myScreenSize.screenWidth * 0.3,
        height: myScreenSize.screenHeight,
        child: Stack(
            alignment: AlignmentDirectional.topStart,
            fit: StackFit.loose,
            children: <Widget>[
              //SQUARE TOP
              Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                      width: myScreenSize.screenWidth * 0.3,
                      height: myScreenSize.screenHeight / 3,
                      child: Align(
                          alignment: Alignment.topRight,
                          //  Positioned(
                          child: BounceInDown(
                              duration: const Duration(seconds: 1),
                              child: Image.asset(
                                'assets/images/LeftRectangle.png',
                                fit: BoxFit.fill,
                              ))))),
//TRIANGLE
              Align(
                  alignment: Alignment.centerRight,
                  child: FadeInRightBig(
                      duration: const Duration(seconds: 1),
                      delay: const Duration(seconds: 2),
                      child: SizedBox(
                          width: 400,
                          height: 400,
                          child: Stack(
                              alignment: AlignmentDirectional.centerEnd,
                              fit: StackFit.loose,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/TriangleFaceLeft.png',
                                  fit: BoxFit.fill,
                                ),
                                const ContactsHomePage(),
                                myScreenType.isDesktop
                                    ? const Align(
                                        alignment: Alignment.topRight,
                                        child: QRCode())
                                    : myScreenType.isTablet
                                        ? const Align(
                                            alignment: Alignment.topRight,
                                            child: QRCode())
                                        : const SizedBox(),
                              ])))),
//SQUARE DOWN
              Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                      width: myScreenSize.screenWidth * 0.3,
                      height: myScreenSize.screenHeight / 3,
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: BounceInUp(
                            duration: const Duration(seconds: 1),
                            delay: const Duration(seconds: 1),
                            child: Image.asset(
                              'assets/images/RectangleBottomRight.png',
                              fit: BoxFit.fitWidth,
                            ),
                          )))),
            ]));
  }
}
