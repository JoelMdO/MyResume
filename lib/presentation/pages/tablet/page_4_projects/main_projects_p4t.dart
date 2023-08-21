import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/cubit/expansion_panel_cubit.dart';
import 'package:resume/presentation/widgets/drawer/shape_drawer.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/pages_text/projects/projects_text_list.dart';
import 'package:resume/presentation/widgets/titles/title_projects.dart';
import 'package:resume/presentation/widgets/pages_text/projects/projects_text.dart';

class ProjectsPageTablet extends StatelessWidget {
  final bool isExpanded;
  const ProjectsPageTablet({Key? key, required this.isExpanded})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            ExpansionPanelCubit()..onExpansionChanged(isExpanded),
        child: ProjectsPageTabletView(expandedInput: isExpanded));
  }
}

class ProjectsPageTabletView extends StatefulWidget {
  final bool expandedInput;
  const ProjectsPageTabletView({Key? key, required this.expandedInput})
      : super(key: key);

  @override
  State<ProjectsPageTabletView> createState() => _ProjectsPageTabletViewState();
}

class _ProjectsPageTabletViewState extends State<ProjectsPageTabletView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
        floatingActionButton:
            BlocBuilder<ExpansionPanelCubit, ExpansionPanelState>(
                builder: (context, state) {
          return Visibility(
              visible: state.expandedInput, child: const FloatButton());
        }),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Third%20Background.png'),
                fit: BoxFit.fill),
          ),
          child: SizedBox(
              width: screenWidth,
              height: screenheight,
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const TituloProjects(),
                    ListView.builder(
                        itemCount: ProjectsTextList.projectsTextInfo.length,
                        itemBuilder: (context, index) {
                          final projectText =
                              ProjectsTextList.projectsTextInfo[index];
                          return ProjectText(
                            value: projectText.value,
                            title: projectText.title,
                            subtitle: projectText.subtitle,
                            image: projectText.image,
                            bodytitle: projectText.bodytitle,
                            bodytext: projectText.bodytext,
                          );
                        })
                  ],
                ),
              )),
        ),
        drawer: const DrawerShape());
  }
}
