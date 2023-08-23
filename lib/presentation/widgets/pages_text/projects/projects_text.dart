import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/cubit/expansion_panel_cubit.dart';
import 'package:resume/presentation/widgets/pages_text/projects/projects_text_styles.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProjectText extends StatefulWidget {
  final int value;
  final String title, subtitle, image, bodytitle, bodytext;
  const ProjectText(
      {Key? key,
      required this.value,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.bodytitle,
      required this.bodytext})
      : super(key: key);

  @override
  State<ProjectText> createState() => _ProjectTextState();
}

class _ProjectTextState extends State<ProjectText> {
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
    final isMobile = MediaQuery.of(context).size.width <= 550;
    double screenWidth = MediaQuery.of(context).size.width;

    return Align(
        alignment: Alignment.center,
        child: ExpansionPanelList.radio(
            dividerColor: Colores.blue,
            elevation: 3,
            expandedHeaderPadding: const EdgeInsets.all(10),
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                isLastExpanded = isExpanded;
                //Past the value to the callback
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
                        title: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Align(
                              alignment: Alignment.center,
                              child: FittedBox(
                                child: Row(children: [
                                  AutoSizeText(
                                    maxFontSize: 25,
                                    minFontSize: 12,
                                    maxLines: 2,
                                    widget.title,
                                  ).projectsSizeTextTitleStyle(),
                                  const Padding(
                                      padding: EdgeInsets.only(left: 5)),
                                  Image.asset(widget.image,
                                      width: isMobile ? 60 : 100,
                                      height: isMobile ? 60 : 100),
                                  // ),
                                ]),
                              )),
                        ),
                      ),
                    );
                  },
                  body: Container(
                    width: screenWidth,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colores.whiteblue, Colores.whiteyellow])),
                    child: Column(children: [
                      Align(
                        alignment: Alignment.center,
                        child: AutoSizeText(
                                maxFontSize: 16,
                                minFontSize: 14,
                                widget.subtitle)
                            .projectsSizeTextSubtitleStyle(),
                      ),
                      // Column(children: [
                      AutoSizeText(widget.bodytitle)
                          .projectsSizeTitleTextBodyTitleStyle(),
                      AutoSizeText(
                              maxFontSize: 14, minFontSize: 10, widget.bodytext)
                          .projectsSizeTextBodyTextStyle(),
                    ]),
                  )),
            ]));
  }
}
