import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/list_view/certifcates/certificates_text.dart';
import 'package:resume/presentation/widgets/list_view/certifcates/certificates_text_list.dart';
import 'package:resume/presentation/widgets/list_view/education/education_text.dart';
import 'package:resume/presentation/widgets/list_view/education/education_text_list.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/screen_size.dart';

class EducationAndCertificatesListView extends StatelessWidget {
  final String type;
  const EducationAndCertificatesListView({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    ScreenType myScreenType = ScreenType(context);

    List typeItemList = [];
    int typeItemCount = 0;
    bool isEducation = false;

    switch (type) {
      case 'education':
        typeItemCount = EducationTextList.educationInfo.length;
        typeItemList = EducationTextList.educationInfo;
        isEducation = true;
        break;
      case 'certificates':
        typeItemCount = CertificatesTextList.certificatesInfo.length;
        typeItemList = CertificatesTextList.certificatesInfo;
        break;
    }
    return SizedBox(
        width: myScreenType.isMobile ? 400 : 200,
        height: isEducation ? 400 : 600,
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colores.whiteblue, Colores.whiteyellow])),
          child: ListView.builder(
              itemCount: typeItemCount,
              itemBuilder: (context, index) {
                final itemText = typeItemList[index];
                return isEducation
                    //EDUCATION DIALOG
                    ? EducationText(
                        title: itemText.title,
                        date: itemText.date,
                      )
                    : //CERTIFICATES DIALOG
                    CertificatesText(
                        icon: itemText.icon,
                        title: itemText.title,
                        school: itemText.school,
                      );
              }),
        ));
  }
}
