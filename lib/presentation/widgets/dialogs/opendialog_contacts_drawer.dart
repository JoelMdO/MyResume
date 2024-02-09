import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/close_opendialog_button.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/presentation/widgets/drawer/contacts_drawer.dart';
import 'package:resume/presentation/widgets/buttons/download_button.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/screen_size.dart';

//OPEN DIALOG DRAWER//
class OpenDialogContactsDrawer {
  static Future<void> openDC(BuildContext context) async {
    ScreenSize myScreenSize = ScreenSize(context);
    ScreenType myScreenType = ScreenType(context);

    ///MediaQuery
    double screenWidth = 0, screenHeight = 0;
    screenWidth = myScreenSize.screenWidth / 2;
    screenHeight = myScreenSize.screenHeight * 0.4;

//CERTIFICATES DIALOG FIRS PART//
    return showDialog<void>(
        context: context,
        builder: (BuildContext _) {
          return AlertDialog(
            //Change the size of the dialog.
            insetPadding: myScreenType.isDesktop
                ? const EdgeInsets.symmetric(horizontal: 300)
                : const EdgeInsets.all(0),
            title: buildTitleConctactsDialog(screenWidth, screenHeight),
            content: const Padding(
                padding: EdgeInsets.only(top: 15), child: ContactsDrawer()),
            actions: <Widget>[
              FittedBox(
                  fit: BoxFit.contain,
                  child: SizedBox(
                      width: screenWidth * 0.5,
                      height: screenHeight * 0.4,
                      child: const DownloadButton())),
              const CloseButtonOpenDialog(type: ''),
            ],
          );
        });
  }

  ///title:
  static Widget buildTitleConctactsDialog(
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
          child: const Text('LETS CONNECT...').contactsDialogTitleStyle(),
        ));
  }

  ///content: Refer to ContactsDrawer Class in Drawer.
}
