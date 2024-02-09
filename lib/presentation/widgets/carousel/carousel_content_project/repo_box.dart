import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/cubit/carousel_index.dart';
import 'package:resume/presentation/pages/page_4_projects/map_projects.dart';
import 'package:resume/presentation/pages/page_4_projects/projects_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class RepoBox extends StatefulWidget {
  ///A widget to display the repository link according to the project shown.
  ///requires the type of project and follow the index according to the list
  ///of projects display on the main carousel
  final String project;

  const RepoBox({super.key, required this.project});

  @override
  State<RepoBox> createState() => _RepoBoxState();
}

class _RepoBoxState extends State<RepoBox> {
  String title = '', repository = '', repositoryName = '';
  bool isGithubAvail = false, showToolTip = false;

  @override
  Widget build(BuildContext context) {
    Map<String, Map<int, Map<String, String>>> infoProjectMap =
        MapProjects.projectsMap;

    ///Creation of the widget following the type, project and belonged
    ///content according to the [CarouselByProject] index receive by Provider.
    ///as not all the projects have repository due to non disclose policies
    ///it will be show as text when the case is required.
    int finalIndex = Provider.of<CarouselProvider>(context).currentIndex;

    if (infoProjectMap.containsKey(widget.project) &&
        infoProjectMap[widget.project]!.containsKey(finalIndex)) {
      repositoryName =
          infoProjectMap[widget.project]![finalIndex]!['repository']!;
      repository = infoProjectMap[widget.project]![finalIndex]!['repository']!;
    }

    if (repositoryName == 'in-progress' || repositoryName == 'aviation') {
      isGithubAvail = false;
    } else {
      isGithubAvail = true;
    }

    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Text('Repository').projectsSizeTextSubtitleStyle(),
      const Padding(padding: EdgeInsets.only(left: 10)),
      isGithubAvail
          ? InkWell(
              onTap: () {
                launchUrl(Uri.parse(repository));
              },
              onHover: (value) {
                setState(() {
                  showToolTip = value;
                });
                Future.delayed(const Duration(milliseconds: 500), () {
                  setState(() {
                    showToolTip = false;
                  });
                });
              },
              child: Tooltip(
                message: showToolTip ? 'Click to visit the repo' : '',
                child: Image.asset(
                  'assets/images/github-logo.png',
                  width: 30,
                  height: 30,
                ),
              ))
          : Text(repository).nonRepoTextStyle(),
    ]);
  }
}
