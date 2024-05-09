import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/library_lenguages.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/text_styles_techstack.dart';

mixin TextTechMixin {
  Widget textType(BuildContext context, String type) {
    late String text, typeFont;
    //
    switch (type) {
      case 'UX_text':
        text = uxText;
        typeFont = 'ux';
      case 'Code_text':
        text = codeText;
        typeFont = 'code';
      case 'Data_text':
        text = dataText;
        typeFont = 'data';
      case 'Other_text':
        text = othersText;
        typeFont = 'other';
    }
    return Text(text).textStyleSubtitleStyle(typeFont, context);
  }
}
