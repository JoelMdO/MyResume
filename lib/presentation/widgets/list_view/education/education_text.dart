import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/list_view/education/education_text_styles.dart';

class EducationText extends StatefulWidget {
  final String title, date, school;
  const EducationText(
      {super.key,
      required this.title,
      required this.date,
      required this.school});

  @override
  State<EducationText> createState() => _EducationTextState();
}

class _EducationTextState extends State<EducationText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 20)),
        AutoSizeText(widget.title).educationTitleTextStyle(),
        AutoSizeText(widget.school).educationSchoolTextStyle(),
        AutoSizeText(widget.date).educationDateTextStyle(),
      ],
    );
  }
}
