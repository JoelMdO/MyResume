import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/certificates_opendialog_button.dart';
import 'package:resume/presentation/widgets/buttons/close_opendialog_button.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/presentation/widgets/pages_text/education/education_text.dart';
import 'package:resume/presentation/widgets/pages_text/education/education_text_list.dart';
import 'package:resume/utils/constants/colors.dart';

class OpenDialogEducation {
  static Future<void> openED(BuildContext context) async {
    ///MediaQuery
    double screenWidth = MediaQuery.of(context).size.width / 2;
    double screenHeight = MediaQuery.of(context).size.height / 2;

//EDUCATION DIALOG FIRS PART//
    return showDialog<void>(
        context: context,
        builder: (BuildContext _) {
          return AlertDialog(
            title: buildTitleEducationDialog(screenWidth, screenHeight),
            content: buildContentEducationDialog(screenWidth, screenHeight),
            actions: <Widget>[
              buildContentActionsDialog(screenWidth, screenHeight)
            ],
          );
        });
  }

  ///title:
  static Widget buildTitleEducationDialog(
      double screenWidth, double screenHeight) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colores.blue, Colores.lightblue])),
        width: screenWidth / 2,
        height: screenHeight * 0.1,
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),

          ///EDUCATION DIALOG TITLE//
          child: const Text('EDUCATION:').openDialogTitleStyle(),
        ));
  }

  ///content:
  static Widget buildContentEducationDialog(
      double screenWidth, double screenHeight) {
    return SizedBox(
        height: screenHeight * 0.8,
        width: screenWidth * 0.8,
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colores.whiteblue, Colores.whiteyellow])),
          child: ListView.builder(
              itemCount: EducationTextList.educationInfo.length,
              itemBuilder: (context, index) {
                final educationText = EducationTextList.educationInfo[index];
                return EducationText(
                  title: educationText.title,
                  date: educationText.date,
                );
              }),
        ));
  }

  ///actions:
  static Widget buildContentActionsDialog(
      double screenWidth, double screenHeight) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      CertificatesOpenButtonOpenDialog(),
      CloseButtonOpenDialog(),
    ]);
  }
}
