import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/list_view/educ_certif_listview.dart';
import 'package:resume/presentation/widgets/buttons/open_subdialog_button.dart';
import 'package:resume/presentation/widgets/buttons/close_opendialog_button.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/presentation/widgets/skills_kanban/skills_kanbas.dart';
import 'package:resume/presentation/widgets/strengths_chart/strengths_chart_board.dart';
import 'package:resume/presentation/widgets/strengths_chart/strengths_chart_title.dart';
import 'package:resume/utils/constants/screen_size.dart';
import 'package:resume/utils/constants/colors.dart';

class OpenDialogCESS {
  ///An [OpenDialog] used to show: CESS: Certificates, Education,
  ///Skills and Strengths uses a switch to get the type of
  ///information to retrieve and will show the corresponded
  ///ListView.builder based on a bool isEducation, isCareer, etc.

  static Future<void> openD(BuildContext context, type) async {
    ///MediaQuery
    ScreenSize myScreenSize = ScreenSize(context);
    ScreenType myScreenType = ScreenType(context);

    bool isSkills = false, isNoSkillsAndEducation = false, isStrengths = false;
    String title = '';
    double screenWidth = 0, screenHeight = 0;

    switch (type) {
      case 'education':
        title = 'EDUCATION:';
        break;
      case 'certificates':
        title = 'CERTIFICATES:';
        isNoSkillsAndEducation = true;
        break;
      case 'skills':
        title = 'SKILLS:';
        isSkills = true;
        break;
      case 'strengths':
        title = 'STRENGTHS:';
        isNoSkillsAndEducation = true;
        isStrengths = true;
        break;
    }

    if (myScreenType.isDesktop && myScreenType.isTablet) {
      screenWidth = myScreenSize.screenWidth / 2;
      screenHeight = myScreenSize.screenHeight * 0.6;
    } else {
      screenWidth = myScreenSize.screenWidth;
      screenHeight = myScreenSize.screenHeight * 0.6;
    }
//EDUCATION DIALOG FIRS PART//
    return showDialog<void>(
        context: context,
        builder: (BuildContext _) {
          return AlertDialog(
            //Change the size of the dialog.
            insetPadding: myScreenType.isDesktop
                ? const EdgeInsets.symmetric(horizontal: 300)
                : const EdgeInsets.all(0),
            title: buildTitleEducationDialog(
                screenWidth, screenHeight, title, isStrengths),
            content: buildContentEducationDialog(isSkills, type, isStrengths),
            actions: <Widget>[
              buildContentActionsDialog(isSkills, isNoSkillsAndEducation)
            ],
          );
        });
  }

  ///title:
  static Widget buildTitleEducationDialog(
      double screenWidth, double screenHeight, String title, bool isStrengths) {
    return isStrengths
        ? const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: StrengthsChartTitle()))
        : Container(
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

              ///DIALOG TITLE//
              child: Text(title).openDialogTitleStyle(),
            ));
  }

  ///content:
  static Widget buildContentEducationDialog(
      bool isSkills, String type, bool isStrengths) {
    // return
    return isSkills
        ? const SkillsKanban()
        : isStrengths
            ? const StrengthsChartBoard()
            : EducationAndCertificatesListView(type: type);
  }

  ///actions:
  static Widget buildContentActionsDialog(
      bool isSkills, bool isNoSkillsAndEducation) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      isNoSkillsAndEducation
          ? const SizedBox()
          : ButtonOpenSubDialogs(type: isSkills ? 'strengths' : 'certificates'),
      const CloseButtonOpenDialog(type: ''),
    ]);
  }
}
