import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/close_opendialog_button.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/presentation/widgets/drawer/contacts_drawer.dart';
import 'package:resume/presentation/widgets/buttons/download_button.dart';
import 'package:resume/utils/constants/colors.dart';

//OPEN DIALOG DRAWER//
class OpenDialogContactsDrawer {
  static Future<void> openDC(BuildContext context) async {
    ///MediaQuery
    double screenWidth = MediaQuery.of(context).size.width / 2;
    double screenHeight = MediaQuery.of(context).size.height / 2;

//CERTIFICATES DIALOG FIRS PART//
    return showDialog<void>(
        context: context,
        builder: (BuildContext _) {
          return AlertDialog(
            title: buildTitleConctactsDialog(screenWidth, screenHeight),
            content: const ContactsDrawer(),
            actions: <Widget>[CloseButtonOpenDialog(), const DownloadButton()],
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
          child: const Text('CONTACT ME...').contactsDialogTitleStyle(),
        ));
  }

  ///content: Refer to ContactsDrawer Class in Drawer.
}
