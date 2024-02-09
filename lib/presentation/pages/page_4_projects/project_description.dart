import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/cubit/carousel_index.dart';
import 'package:resume/presentation/pages/page_4_projects/map_projects.dart';
import 'package:resume/presentation/pages/page_4_projects/projects_text_styles.dart';
import 'package:resume/utils/constants/screen_size.dart';

class ProjectDescription extends StatefulWidget {
  ///A widget to display the description of the project shown.
  ///requires the type of project and follow the index according to the list
  ///of projects display on the main carousel
  final String project;

  const ProjectDescription({super.key, required this.project});

  @override
  State<ProjectDescription> createState() => _RepoBoxState();
}

class _RepoBoxState extends State<ProjectDescription> {
  String title = '', projectDescription = '';

  @override
  Widget build(BuildContext context) {
    ScreenSize myScreenSize = ScreenSize(context);
    Map<String, Map<int, Map<String, String>>> infoProjectMap =
        MapProjects.projectsMap;

    int finalIndex = Provider.of<CarouselProvider>(context).currentIndex;

    if (infoProjectMap.containsKey(widget.project) &&
        infoProjectMap[widget.project]!.containsKey(finalIndex)) {
      projectDescription =
          infoProjectMap[widget.project]![finalIndex]!['description']!;
    }

    return SizedBox(
      width: myScreenSize.screenWidth,
      child: Column(children: [
        const Text('Description:').projectsSizeTextSubtitleStyle(),
        AutoSizeText(projectDescription).projectsSizeTextBodyTextStyle(),
      ]),
    );
  }
}
