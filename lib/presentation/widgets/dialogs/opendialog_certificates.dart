import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/close_opendialog_button.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/presentation/widgets/pages_text/certifcates/certificates_text.dart';
import 'package:resume/presentation/widgets/pages_text/certifcates/certificates_text_list.dart';
import 'package:resume/utils/constants/colors.dart';

class OpenDialogCertificates {
  static Future<void> openCE(BuildContext context) async {
    ///MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height * 0.6;

//CERTIFICATES DIALOG FIRS PART//
    return showDialog<void>(
        context: context,
        builder: (BuildContext _) {
          return AlertDialog(
            title: buildTitleCertificatesDialog(screenWidth, screenHeight),
            content: buildContentCertificatesDialog(screenWidth, screenHeight),
            actions: <Widget>[
              CloseButtonOpenDialog(),
            ],
          );
        });
  }

  ///title:
  static Widget buildTitleCertificatesDialog(
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
          child: const Text('CERTIFICATES.').openDialogTitleStyle(),
        ));
  }

  ///content:
  static Widget buildContentCertificatesDialog(
      double screenWidth, double screenHeight) {
    return SizedBox(
      width: screenWidth,
      height: double.maxFinite,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colores.whiteblue, Colores.whiteyellow],
          ),
        ),

        ///LIST OF CERTIFICATES
        child: ListView.builder(
          itemCount: CertificatesTextList.certificatesInfo.length,
          itemBuilder: (context, index) {
            final certificatesText =
                CertificatesTextList.certificatesInfo[index];
            return CertificatesText(
              icon: certificatesText.icon,
              title: certificatesText.title,
              school: certificatesText.school,
            );
          },
        ),
      ),
    );
  }
}
