import 'package:resume/presentation/widgets/pages_text/projects/projects_text.dart';

class ProjectsTextList {
  static List<ProjectText> projectsTextInfo = [
//CHARTER FEASIBILITY TOOL
    const ProjectText(
      value: 1,
      title: 'Flight Feasibility Tool',
      subtitle:
          '- Director and developer; results: 50% sales department complaints reduction, the accuracy of the information increased by 95% and reduction of the reply time frame to only 20 minutes.\n',
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
          '- Developer to provide clear and concise instructions about the method to obtain flight clearances and reduce the time frame error requests by 50%, interactive for easy use and standardize of the information.\n',
      image: 'assets/images/Permits.png',
      bodytitle: 'Learned:',
      bodytext:
          '- Documentation with a touch of action, made a handbook more useful',
    ),
//ROSTER APP
    const ProjectText(
      value: 3,
      title: 'Staff Roster App',
      subtitle:
          '- Director and developer to improve the staff roster access during out of the office timings, facilitating the communication and interaction between colleagues.\n',
      image: 'assets/images/app.png',
      bodytitle: 'Learned:',
      bodytext: '- Currently learning...',
    ),
  ];
}
