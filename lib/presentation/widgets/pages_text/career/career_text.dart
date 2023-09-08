import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/presentation/widgets/pages_text/career/career_text_styles.dart';
import '../../../../cubit/expansion_panel_cubit.dart';

// ignore: must_be_immutable
class CareerText extends StatefulWidget {
  final String title, subtitle, bodytitle;
  final int value;
  final String achievementtitle1,
      achievementtext1,
      achivementtitle2,
      achievementtext2,
      achievementtitle3,
      achievementtext3,
      achievementtitle4,
      achievementtext4;

  const CareerText({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.bodytitle,
    required this.value,
    required this.achievementtitle1,
    required this.achievementtext1,
    required this.achivementtitle2,
    required this.achievementtext2,
    required this.achievementtitle3,
    required this.achievementtext3,
    required this.achievementtitle4,
    required this.achievementtext4,
  }) : super(key: key);

  @override
  State<CareerText> createState() => _CareerTextState();
}

class _CareerTextState extends State<CareerText> {
  late bool isLastExpanded;
  late bool isExpanded;
  late bool expandedInput;

  onExpansionChanged(expanded) {
    setState(() {
      isExpanded = expanded;
      expandedInput = expanded;
    });
    context.read<ExpansionPanelCubit>().onExpansionChanged(expandedInput);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Align(
          alignment: Alignment.center,
          child: ExpansionPanelList.radio(
              dividerColor: Colores.blue,
              expandedHeaderPadding: const EdgeInsets.all(10),
              elevation: 3,
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  isLastExpanded = isExpanded;
                  //pass the value to the cubit
                  expandedInput = isExpanded;
                  //Past the value to the callback
                  onExpansionChanged(isLastExpanded);
                  //update the context of the cubit
                  context
                      .read<ExpansionPanelCubit>()
                      .onExpansionChanged(expandedInput);
                });
              },
              children: [
                ExpansionPanelRadio(
                    value: widget.value,
                    backgroundColor: Colores.whiteyellow,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colores.blue,
                                  Colores.lightblue,
                                ])),
                        child: ListTile(
                            title: Align(
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                      maxFontSize: 25,
                                      minFontSize: 15,
                                      maxLines: 2,
                                      widget.title)
                                  .careerTitleStyle(),
                            ),
                            subtitle: Align(
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                        maxFontSize: 16,
                                        minFontSize: 14,
                                        maxLines: 2,
                                        widget.subtitle)
                                    .careerSubTitleStyle())),
                      );
                    },
                    body: Container(
                      width: screenWidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colores.whiteblue,
                                Colores.whiteyellow
                              ])),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                      maxFontSize: 14,
                                      minFontSize: 10,
                                      widget.bodytitle)
                                  .careerBodyTitleStyle(),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(widget.achievementtitle1)
                                  .careerBodySubTitleStyle(),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(widget.achievementtext1)
                                  .careerBodyTextStyle(),
                            ),
                            if (widget.achivementtitle2 != '')
                              Align(
                                alignment: Alignment.center,
                                child: Text(widget.achivementtitle2)
                                    .careerBodySubTitleStyle(),
                              ),
                            if (widget.achievementtext2 != '')
                              Align(
                                alignment: Alignment.center,
                                child: Text(widget.achievementtext2)
                                    .careerBodyTextStyle(),
                              ),
                            if (widget.achievementtitle3 != '')
                              Align(
                                alignment: Alignment.center,
                                child: Text(widget.achievementtitle3)
                                    .careerBodySubTitleStyle(),
                              ),
                            if (widget.achievementtext3 != '')
                              Align(
                                alignment: Alignment.center,
                                child: Text(widget.achievementtext3)
                                    .careerBodyTextStyle(),
                              ),
                            if (widget.achievementtitle4 != '')
                              Align(
                                alignment: Alignment.center,
                                child: Text(widget.achievementtitle4)
                                    .careerBodySubTitleStyle(),
                              ),
                            if (widget.achievementtext4 != '')
                              Align(
                                alignment: Alignment.center,
                                child: Text(widget.achievementtext4)
                                    .careerBodyTextStyle(),
                              ),
                          ]),
                    ))
              ])),
    );
  }
}
