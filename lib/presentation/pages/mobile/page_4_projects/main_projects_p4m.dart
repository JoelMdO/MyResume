import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/cubit/expansion_panel_cubit.dart';
import 'package:resume/presentation/widgets/drawer/shape_drawer.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/pages_text/projects/projects_text_list.dart';
import 'package:resume/presentation/widgets/titles/title_projects.dart';
import 'package:resume/presentation/widgets/pages_text/projects/projects_text.dart';

// ignore: must_be_immutable
class ProjectsPageMobile extends StatelessWidget {
  late bool isExpanded;
  ProjectsPageMobile({Key? key, required this.isExpanded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            ExpansionPanelCubit()..onExpansionChanged(isExpanded),
        child: ProjectsPageMobileView(expandedInput: isExpanded));
  }
}

// ignore: must_be_immutable
class ProjectsPageMobileView extends StatefulWidget {
  late bool expandedInput;
  ProjectsPageMobileView({Key? key, required this.expandedInput})
      : super(key: key);

  @override
  State<ProjectsPageMobileView> createState() => _ProjectsPageMobileViewState();
}

class _ProjectsPageMobileViewState extends State<ProjectsPageMobileView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
                  image: AssetImage('assets/images/First Background.png'),
                  fit: BoxFit.fill),
            ),
            child: SizedBox(
              width: screenWidth * 0.95,
              height: screenHeight * 0.95,
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                fit: StackFit.loose,
                children: [
                  const TituloProjects(),
                  Positioned(
                      top: 180,
                      left: 20,
                      child: SizedBox(
                          width: screenWidth * 0.85,
                          height: screenHeight * 0.70,
                          child: ListView.builder(
                              itemCount:
                                  ProjectsTextList.projectsTextInfo.length,
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
                              })))
                ],
              ),
            )),
        drawer: const DrawerShape());
  }
}
