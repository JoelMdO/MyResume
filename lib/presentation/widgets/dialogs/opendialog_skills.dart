import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/close_opendialog_button.dart';
import 'package:resume/presentation/widgets/buttons/strengths_opendialog_button.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/presentation/widgets/pages_text/skills/sklills_text_list.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/presentation/widgets/pages_text/skills/skills_text.dart';

//OPEN DIALOG - SKILLS//
class OpenDialogSkills {
  static Future<void> openDS(BuildContext context) async {
    ///MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height * 0.6;

//SKILLS DIALOG FIRS PART//
    return showDialog<void>(
        context: context,
        builder: (BuildContext _) {
          return AlertDialog(
            title: buildTitleSkillsDialog(screenWidth, screenHeight),
            content: buildContentSkillsDialog(screenWidth, screenHeight),
            actions: <Widget>[
              buildContentActionsDialog(screenWidth, screenHeight)
            ],
          );
        });
  }

  ///title:
  static Widget buildTitleSkillsDialog(
      double screenWidth, double screenHeight) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colores.blue, Colors.blueGrey])),
        width: screenWidth / 2,
        height: screenHeight * 0.1,
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          //SKILLS DIALOG TITLE//
          child: const Text('SKILLS:').openDialogTitleStyle(),
        ));
  }

  ///content:
  static Widget buildContentSkillsDialog(
      double screenWidth, double screenHeight) {
    return SizedBox(
        width: screenWidth,
        height: screenHeight * 0.9,
        child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colores.whiteblue, Colores.whiteyellow])),
            child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListView.builder(
                    itemCount: SkillsTextList.skillsTextInfo.length,
                    itemBuilder: (context, index) {
                      final skillsText = SkillsTextList.skillsTextInfo[index];
                      return SkillsText(
                        textbold: skillsText.textbold,
                        text: skillsText.text,
                      );
                    }))));
  }

  ///actions:
  static Widget buildContentActionsDialog(
      double screenWidth, double screenHeight) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      StrengthsOpenButtonOpenDialog(),
      CloseButtonOpenDialog(),
    ]);
  }
}
