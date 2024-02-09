import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_4_projects/map_projects.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_projects.dart';
import 'package:resume/utils/constants/screen_size.dart';

class UISlider extends StatefulWidget {
  final String type, title;
  const UISlider({super.key, required this.type, required this.title});

  @override
  State<UISlider> createState() => _UISliderState();
}

class _UISliderState extends State<UISlider> {
  String image = '';

  @override
  Widget build(BuildContext context) {
    ScreenSize myScreenSize = ScreenSize(context);

    ///Retrieve of the original map from [map_projects.dart]
    Map<String, Map<int, Map<String, String>>> infoProjectMap =
        MapProjects.projectsMap;

    ///Retrieve of the secondary map created from carousel_by_project
    ///according to the title, to obtain the image from the same project.
    Map<String, String> projectMap = infoProjectMap[widget.type]!
        .values
        .firstWhere((map) => map['title'] == widget.title);

    image = projectMap['image']!;

    return GestureDetector(
      onTap: () =>
          OpenDialogProjects.openCE(context, widget.type, widget.title, image),
      child: Hero(
          tag: 'hero-slider',
          child: Image.asset(
            image,
            width: myScreenSize.screenWidth * 0.8,
            height: myScreenSize.screenHeight * 0.8,
          )),
    );
  }
}
