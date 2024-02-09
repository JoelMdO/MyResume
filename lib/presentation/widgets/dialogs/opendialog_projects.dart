import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_4_projects/projects_text_styles.dart';
import 'package:resume/presentation/widgets/buttons/contacts_button.dart';
import 'package:resume/presentation/widgets/carousel/carousel_content_project/box_learn_challenges.dart';
import 'package:resume/presentation/pages/page_4_projects/map_projects.dart';
import 'package:resume/presentation/widgets/buttons/close_opendialog_button.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/screen_size.dart';

class OpenDialogProjects {
  static Future<void> openCE(BuildContext context, type, title, image) async {
    String summary = '';
    ScreenSize myScreenSize = ScreenSize(context);
    ScreenType myScreenType = ScreenType(context);

    Map<String, Map<int, Map<String, String>>> infoProjectMap =
        MapProjects.projectsMap;

    Map<String, String> projectMap =
        infoProjectMap[type]!.values.firstWhere((map) => map['title'] == title);

    summary = projectMap['summary']!;

    return showDialog<void>(
        context: context,
        builder: (BuildContext _) {
          return Stack(children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: AlertDialog(
                  //Change the size of the dialog.
                  insetPadding: myScreenType.isDesktop
                      ? const EdgeInsets.symmetric(horizontal: 300)
                      : const EdgeInsets.all(0),
                  titlePadding:
                      const EdgeInsets.only(top: 180, left: 10, right: 10),
                  title: buildTitleProjectsDialog(myScreenSize.screenWidth,
                      myScreenSize.screenHeight, title),
                  content: buildContentProjectsDialog(
                      myScreenSize.screenWidth,
                      myScreenSize.screenHeight,
                      summary,
                      type,
                      title,
                      myScreenType.isDesktop),
                  actions: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Let\'s connect')
                            .letsConnectDialogTitleStyle(),
                        const ContactsButton(type: 'email')
                      ],
                    ),
                    const CloseButtonOpenDialog(type: 'projects'),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                        tag: 'hero-slider',
                        child: Image.asset(
                          image,
                          width: myScreenType.isDesktop
                              ? myScreenSize.screenWidth
                              : myScreenSize.screenWidth * 0.7,
                          height: 300,
                        )),
                  )),
            ])
          ]);
        });
  }

  ///title:
  static Widget buildTitleProjectsDialog(screenWidth, screenHeight, title) {
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
        height: screenHeight * 0.05,
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: Text('  PROJECT:   $title.').openDialogTitleStyle(),
        ));
  }

  ///content:
  static Widget buildContentProjectsDialog(
      screenWidth, screenHeight, summary, type, title, isDesktop) {
    return SizedBox(
      width: isDesktop ? screenWidth : screenWidth * 0.8,
      height: screenHeight * 0.4,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colores.projectSquare,
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            AutoSizeText(summary).projectsSizeTextBodyStyle(),
            const Padding(padding: EdgeInsets.only(top: 30)),
            BoxProjectLearnChallengeDetails(
                project: type, type: 'challenges', title: title),
            const Padding(padding: EdgeInsets.only(top: 18)),
            BoxProjectLearnChallengeDetails(
                project: type, type: 'solution', title: title),
            const Padding(padding: EdgeInsets.only(top: 18)),
            BoxProjectLearnChallengeDetails(
                project: type, type: 'learned', title: title),
          ],
        ),
      ),
    );
  }
}
