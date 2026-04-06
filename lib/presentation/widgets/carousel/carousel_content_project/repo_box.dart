import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/cubit/carousel_index.dart';
import 'package:resume/presentation/pages/page_4_projects/map_projects.dart';
import 'package:resume/presentation/pages/page_4_projects/projects_text_styles.dart';
import 'package:flutter/services.dart';
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
  bool isGithubAvail = false;

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
      repository = infoProjectMap[widget.project]![finalIndex]!['repository']!;
    }

    if (repository == 'Not available due to QR company non disclose policy' ||
        repository == 'Not available due to client non disclose policy') {
      isGithubAvail = false;
      repository = 'Not available due non disclose policy';
    } else {
      isGithubAvail = true;
      repository = repository;
    }

    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Text('Repository').projectsSizeTextSubtitleStyle(),
      const Padding(padding: EdgeInsets.only(left: 10)),
      isGithubAvail
          ? InkWell(
              onTap: () async {
                // Unfocus any focused node to avoid stuck keyboard state
                FocusManager.instance.primaryFocus?.unfocus();

                final uri = Uri.tryParse(repository);
                if (uri == null) return;

                // If modifier keys (e.g., Meta/Command) are still pressed the
                // platform may send duplicate key events when the app loses focus.
                // Wait briefly for Meta keys to be released before launching.
                final maxWait = const Duration(milliseconds: 700);
                final start = DateTime.now();
                while ((HardwareKeyboard.instance.logicalKeysPressed
                            .contains(LogicalKeyboardKey.metaLeft) ||
                        HardwareKeyboard.instance.logicalKeysPressed
                            .contains(LogicalKeyboardKey.metaRight)) &&
                    DateTime.now().difference(start) < maxWait) {
                  await Future.delayed(const Duration(milliseconds: 50));
                }

                try {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                } catch (e, st) {
                  log('Could not launch $repository: $e\n$st');
                }
              },
              child: Tooltip(
                message: 'Click to visit the repo',
                waitDuration: Duration(milliseconds: 150),
                showDuration: Duration(milliseconds: 1500),
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
