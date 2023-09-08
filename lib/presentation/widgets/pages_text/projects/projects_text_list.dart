import 'package:resume/presentation/widgets/pages_text/projects/projects_text.dart';

class ProjectsTextList {
  static List<ProjectText> projectsTextInfo = [
//CHARTER FEASIBILITY TOOL
    const ProjectText(
      value: 1,
      title: 'Flight Feasibility Tool',
      subtitle:
          ' \u2022 Director and developer.\n \u2022 Reduced 50% sales department complaints\n \u2022 Increased information accuracy by 95% and decreased the reply time frame to only 20 minutes.\n',
      image: 'assets/images/CharterTool.png',
      bodytitle: 'Learned:',
      bodytext:
          '- Focus on your internal customers (colleagues), will improve workload and enviroment',
    ),
//PERMITS HANDBOOK
    const ProjectText(
      value: 2,
      title: 'Permits Handbook',
      subtitle:
          '\u2022 Developer to provide clear and concise instructions about the method to obtain flight clearances.\n \u2022 Reduced the time frame error requests by 50% with an interactive for easy use and standardize of the information.\n',
      image: 'assets/images/Permits.png',
      bodytitle: 'Learned:',
      bodytext:
          '- Documentation with a touch of action, made a handbook more useful',
    ),
//MY RESUME
    const ProjectText(
      value: 3,
      title: 'Flutter Web Resume',
      subtitle:
          '\u2022 Developer with the objective to have a customize resume.\n',
      image: 'assets/images/J code.png',
      bodytitle: 'Learned:',
      bodytext: '- Dart/Flutter/Firebase...',
    ),
//ROSTER APP
    const ProjectText(
      value: 4,
      title: 'Staff Roster App',
      subtitle:
          ' \u2022 Director and developer.\n \u2022 Working to improve staff roster access during out of the office timings, facilitating the communication and interaction between colleagues.\n',
      image: 'assets/images/app.png',
      bodytitle: 'Learned:',
      bodytext: '- Currently learning...',
    ),
  ];
}
