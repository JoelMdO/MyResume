import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/cubit/expansion_panel_cubit.dart';
import 'package:resume/presentation/widgets/drawer/shape_drawer.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/pages_text/projects/projects_text_list.dart';
import 'package:resume/presentation/widgets/titles/title_projects.dart';
import 'package:resume/presentation/widgets/pages_text/projects/projects_text.dart';

// ignore: must_be_immutable
class ProjectsPageDesktop extends StatelessWidget {
  late bool isExpanded;
  ProjectsPageDesktop({Key? key, required this.isExpanded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            ExpansionPanelCubit()..onExpansionChanged(isExpanded),
        child: ProjectsPageDesktopView(expandedInput: isExpanded));
  }
}

// ignore: must_be_immutable
class ProjectsPageDesktopView extends StatefulWidget {
  bool expandedInput;
  ProjectsPageDesktopView({super.key, required this.expandedInput});

  @override
  State<ProjectsPageDesktopView> createState() =>
      _ProjectsPageDesktopViewState();
}

class _ProjectsPageDesktopViewState extends State<ProjectsPageDesktopView> {
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
                image: AssetImage('assets/images/Background2.png'),
                fit: BoxFit.fill),
          ),
          child: SizedBox(
              width: screenWidth,
              height: screenHeight,
              child: Stack(
                  alignment: AlignmentDirectional.topStart,
                  fit: StackFit.loose,
                  children: [
                    const TituloProjects(),
                    Padding(
                      padding: const EdgeInsets.only(top: 170),
                      child: Align(
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Padding(
                                    padding: EdgeInsets.only(top: 35)),
                                SizedBox(
                                    width: screenWidth * 0.8,
                                    height: screenHeight,
                                    child: ListView.builder(
                                        itemCount: ProjectsTextList
                                            .projectsTextInfo.length,
                                        itemBuilder: (context, index) {
                                          final projectText = ProjectsTextList
                                              .projectsTextInfo[index];
                                          return ProjectText(
                                            value: projectText.value,
                                            title: projectText.title,
                                            subtitle: projectText.subtitle,
                                            image: projectText.image,
                                            bodytitle: projectText.bodytitle,
                                            bodytext: projectText.bodytext,
                                          );
                                        }))
                              ],
                            ),
                          )),
                    )
                  ]))),
      drawer: const DrawerShape(),
    );
  }
}
