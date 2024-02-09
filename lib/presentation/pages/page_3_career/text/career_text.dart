import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/presentation/pages/page_3_career/text/career_text_styles.dart';
import '../../../../cubit/expansion_panel_cubit.dart';

// ignore: must_be_immutable
class CareerText extends StatefulWidget {
  final String title, subtitle, bodytitle;
  final int value;
  final List achievementtitle, achievementtext;

  const CareerText({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.bodytitle,
    required this.value,
    required this.achievementtitle,
    required this.achievementtext,
  }) : super(key: key);

  @override
  State<CareerText> createState() => _CareerTextState();
}

class _CareerTextState extends State<CareerText> {
  late bool isLastExpanded;
  late bool isExpanded;
  late bool expandedInput;
  late dynamic title, text;

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
                                Colores.darkblue,
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
                        border: Border.all(color: Colores.darkblue, width: 1.0),
                        color: Colores.whitelightyellow,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(
                          widget.achievementtitle.length,
                          (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  widget.achievementtitle[index],
                                ).careerBodySubTitleStyle(),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(widget.bodytitle)
                                    .careerBodyTitleStyle(),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  widget.achievementtext[index],
                                ).careerBodyTextStyle(),
                              ),
                            ],
                          ),
                        ),
                      )))
            ],
          ),
        ));
  }
}
