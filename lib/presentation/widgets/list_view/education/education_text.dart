import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/list_view/education/education_text_styles.dart';

class EducationText extends StatefulWidget {
  final String title, date;
  const EducationText({Key? key, required this.title, required this.date})
      : super(key: key);

  @override
  State<EducationText> createState() => _EducationTextState();
}

class _EducationTextState extends State<EducationText> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AutoSizeText(widget.title).educationTitleTextStyle(),
      subtitle: AutoSizeText(widget.date).educationDateTextStyle(),
    );
  }
}
