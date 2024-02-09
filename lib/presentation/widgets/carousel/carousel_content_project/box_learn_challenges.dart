import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_4_projects/map_projects.dart';
import 'package:resume/presentation/pages/page_4_projects/projects_text_styles.dart';

// ignore: must_be_immutable
class BoxProjectLearnChallengeDetails extends StatefulWidget {
  ///There are two types of boxes one to diplay the information which
  ///was learned and the challenges faced during the project development it
  ///will receive the type of display (learned or challenges) using the
  ///variable type to display it, as well the type of project
  ///and the current title of the project which determines the specific project (1,2,3,4).
  String project, type, title;

  BoxProjectLearnChallengeDetails(
      {super.key,
      required this.project,
      required this.type,
      required this.title});

  @override
  State<BoxProjectLearnChallengeDetails> createState() =>
      _BoxProjectLearnChallengeDetailsState();
}

class _BoxProjectLearnChallengeDetailsState
    extends State<BoxProjectLearnChallengeDetails> {
  String contentChallenge = '',
      contentLearned = '',
      title = '',
      contentSolution = '';
  bool isLearned = false;
  bool isSolution = false;

  @override
  Widget build(BuildContext context) {
    ///Creation of the widget following the type, project and belonged
    ///content according to the [CarouselByProject] index receive by Provider.

    Map<String, Map<int, Map<String, String>>> infoProjectMap =
        MapProjects.projectsMap;

    Map<String, String> projectMap = infoProjectMap[widget.project]!
        .values
        .firstWhere((map) => map['title'] == widget.title);

    contentLearned = projectMap['learned']!;
    contentChallenge = projectMap['challenges']!;
    contentSolution = projectMap['solution']!;

    switch (widget.type) {
      case 'learned':
        title = 'Learned';
        isLearned = true;
        break;
      case 'challenges':
        title = 'Challenges';
        isLearned = false;
        break;
      case 'solution':
        title = 'Solution';
        isSolution = true;
        isLearned = false;
        break;
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text(title).projectsSizeTextSubtitleStyle(),
      SizedBox(
        width: 70,
        height: 70,
        child: Image.asset(
          'assets/images/triangle_projects.png',
          fit: BoxFit.contain,
        ),
      ),
      AutoSizeText(
        isSolution
            ? contentSolution
            : isLearned
                ? contentLearned
                : contentChallenge,
      ).projectsSizeTextBodyTextStyle(),
    ]);
  }
}
