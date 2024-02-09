import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:resume/cubit/routes_cubit.dart';
import 'package:resume/presentation/widgets/buttons/bar_menu/bar_text_styles.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_cess.dart';

class BarButton extends StatefulWidget {
  final String type;
  const BarButton({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  BarButtonState createState() => BarButtonState();
}

class BarButtonState extends State<BarButton> {
  bool isHovered = false;
  final scaleUp = Matrix4.identity()..scale(1.1);
  final scaleNormal = Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        fit: BoxFit.fitWidth,
        child: SizedBox(
          width: 400,
          height: 250,
          child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                //BLUE IMAGE
                Positioned(
                    top: 85,
                    //   [DelayedDisplay] TO DELAY THE START OF THE WIDGET API DELAYED_DISPLAY
                    child: DelayedDisplay(
                        delay: const Duration(milliseconds: 500),
                        child: FadeInLeft(
                            child: Image.asset(
                          'assets/images/BlueSquare.png',
                        )))),
                //YELLOW IMAGE
                Positioned(
                    top: 65,
                    left: 20,
                    child: FadeInLeft(
                        child: Image.asset(
                      'assets/images/GreySquareYellow.png',
                    ))),
                //WING IMAGE
                Positioned(
                    top: 115,
                    left: 90,
                    child: FadeInLeft(
                        child: Image.asset(
                      'assets/images/BlackWing.png',
                    ))),
                //TEXT TITLE
                Positioned(
                    top: 140,
                    left: 140,
                    child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (event) {
                          setState(() {
                            isHovered = true;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            isHovered = false;
                          });
                        },
                        //     [Inkwell] TO MAKE AS BUTTON THE IMAGE
                        child: InkWell(
                            onTap: () {
                              if (widget.type == 'SKILLS &\n STRENGTHS') {
                                OpenDialogCESS.openD(context, 'skills');
                              } else if (widget.type == 'PROJECTS &\n CAREER') {
                                context
                                    .read<NavigationCubit>()
                                    .navigateTo('/projects');
                              } else {
                                context
                                    .read<NavigationCubit>()
                                    .navigateTo('/techstack');
                              }
                            },
                            child: DelayedDisplay(
                                delay: const Duration(milliseconds: 1500),
                                child: Transform(
                                    transform:
                                        isHovered ? scaleUp : scaleNormal,
                                    //     [IgnorePointer] TO ALLOW THE TEXT TO GET THE GESTUREDETECTOR
                                    child: IgnorePointer(
                                      child: AnimatedTextKit(
                                          repeatForever: false,
                                          animatedTexts: [
                                            ///[widget.type] TEXT IS RECEIVED FROM THE HOME PAGE MOBILE, DESKTOP OR TABLET
                                            /// REFER TO THE COLUMNS FOR EXAMPLE MOBILE TOP COLUMN TO SEE THE TEXT
                                            TypewriterAnimatedText(widget.type)
                                                .typewriterAnimatedText(
                                                    widget.type)
                                          ]),
                                    ))))))
              ]),
        ));
  }
}
