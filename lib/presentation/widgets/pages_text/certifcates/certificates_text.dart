import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/pages_text/certifcates/certficates_text_styles.dart';

class CertificatesText extends StatefulWidget {
  final String icon, title, school;

  const CertificatesText(
      {Key? key, required this.icon, required this.title, required this.school})
      : super(key: key);

  @override
  State<CertificatesText> createState() => _CertificatesTextState();
}

class _CertificatesTextState extends State<CertificatesText> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        widget.icon,
        width: 30,
        height: 30,
      ),
      title: Text(widget.title).titleCertificatesStyle(),
      subtitle: Text(
        widget.school,
      ).subTitleCertificatesStyle(),
    );
  }
}
