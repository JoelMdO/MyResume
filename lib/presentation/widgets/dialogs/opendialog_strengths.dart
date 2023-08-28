import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/close_opendialog_button.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/presentation/widgets/pages_text/strenghts/strengths_text.dart';
import 'package:resume/presentation/widgets/pages_text/strenghts/strengths_text_list.dart';
import 'package:resume/utils/constants/colors.dart';

class OpenDialogStrengths {
  static Future<void> openST(BuildContext context) async {
    ///MediaQuery
    double screenWidth = MediaQuery.of(context).size.width / 2;
    double screenHeight = MediaQuery.of(context).size.height / 2;

//STRENGTHS DIALOG FIRS PART//
    return showDialog<void>(
        context: context,
        builder: (BuildContext _) {
          return AlertDialog(
            title: buildTitleStrengthsDialog(screenWidth, screenHeight),
            content: buildContentStrengthsDialog(screenWidth, screenHeight),
            actions: <Widget>[
              buildContentActionsDialog(screenWidth, screenHeight)
            ],
          );
        });
  }

  ///title:
  static Widget buildTitleStrengthsDialog(
      double screenWidth, double screenHeight) {
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
        width: screenWidth / 2,
        height: screenHeight * 0.1,
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: const Text('STRENGTHS:').openDialogTitleStyle(),
        ));
  }

  ///content:
  static Widget buildContentStrengthsDialog(
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
                itemCount: StrengthsTextList.strengthsTextInfo.length,
                itemBuilder: (context, index) {
                  final strengthsText =
                      StrengthsTextList.strengthsTextInfo[index];
                  return StrengthsText(
                    text: strengthsText.text,
                    subtext: strengthsText.subtext,
                  );
                }),
          ),
        ));
  }

  ///actions:
  static Widget buildContentActionsDialog(
      double screenWidth, double screenHeight) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      CloseButtonOpenDialog(),
    ]);
  }
}
