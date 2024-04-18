import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/list_view/certifcates/certficates_text_styles.dart';
import 'package:resume/utils/constants/screen_size.dart';

class CertificatesText extends StatefulWidget {
  final String icon, title, school;

  const CertificatesText(
      {super.key,
      required this.icon,
      required this.title,
      required this.school});

  @override
  State<CertificatesText> createState() => _CertificatesTextState();
}

class _CertificatesTextState extends State<CertificatesText> {
  @override
  Widget build(BuildContext context) {
    ScreenType myScreenType = ScreenType(context);
    return ListTile(
      leading: Image.asset(
        widget.icon,
        width: myScreenType.isMiniMobile ? 50 : 90,
        height: myScreenType.isMiniMobile ? 50 : 90,
      ),
      title: AutoSizeText(widget.title).titleCertificatesStyle(),
      subtitle: AutoSizeText(
        widget.school,
      ).subTitleCertificatesStyle(),
    );
  }
}
