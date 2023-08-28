import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/contacts/contacts_right_column.dart';

//---RIGHT COLUMN //
class RightColumnDesktop extends StatefulWidget {
  const RightColumnDesktop({
    Key? key,
  }) : super(key: key);

  @override
  RightColumnDesktopState createState() => RightColumnDesktopState();
}

class RightColumnDesktopState extends State<RightColumnDesktop> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * 0.3;
    double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
            alignment: AlignmentDirectional.topStart,
            fit: StackFit.loose,
            children: <Widget>[
              //SQUARE TOP
              Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                      width: screenWidth,
                      height: screenHeight / 3,
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
                                const ContactsRightColumn(),
                              ])))),
//SQUARE DOWN
              Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                      width: screenWidth,
                      height: screenHeight / 3,
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
