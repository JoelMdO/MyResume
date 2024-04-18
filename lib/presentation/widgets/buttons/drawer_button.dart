import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/styles_text_buttons.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/mixin/buttonS_mixin.dart';

//--DRAWER BUTTON-- //
class MyDrawerButton extends StatefulWidget {
  final int page;
  final String pagename;

  const MyDrawerButton({
    super.key,
    required this.page,
    required this.pagename,
  });

  @override
  MyDrawerButtonState createState() => MyDrawerButtonState();
}

class MyDrawerButtonState extends State<MyDrawerButton> with ButtonsMixin {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      DelayedDisplay(
          delay: const Duration(seconds: 1),
          child: FadeInLeft(
              duration: const Duration(seconds: 1),
              child: const SizedBox(
                  width: 75,
                  height: 75,
                  child: Image(
                      image: AssetImage(
                    'assets/images/BlackWing.png',
                  ))))),
      //TEXT TITLE
      FittedBox(
        fit: BoxFit.fitWidth,
        child: DelayedDisplay(
            delay: const Duration(milliseconds: 200),
            //--[GestureDetector] To create a button from the image
            child: GestureDetector(onTap: () {
              onTapBarButton(context, widget.page);
            },
                //--[IgnorePointer] To allow the text to get the GestureDetector
                //--[MouseRegion] To allow the mouse icon to change and advise the user it can be clicked
                child: StatefulBuilder(builder: (context, setState) {
              return MouseRegion(
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
                child: Container(
                  decoration: BoxDecoration(
                      border: isHovered
                          ? const Border(
                              bottom: BorderSide(color: Colores.green))
                          : null),
                  child: IgnorePointer(
                    child: AnimatedTextKit(
                      repeatForever: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                                //--[widget.pagename] Obtains the name of the page to be included as button text
                                widget.pagename)
                            .typewriterAnimatedText(widget.pagename),
                      ],
                    ),
                  ),
                ),
              );
            }))),
      )
    ]);
  }
}
