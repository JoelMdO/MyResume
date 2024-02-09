import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/cubit/carousel_index.dart';
import 'package:resume/presentation/pages/page_1_home/text/titles/title_text.dart';
import 'package:resume/presentation/pages/page_4_projects/projects_text_styles.dart';
import 'package:resume/presentation/widgets/carousel/carousel_content_project/carrousel_by_project.dart';
import 'package:resume/presentation/widgets/carousel/carousel_menu_project/carrousel_menu_projects.dart';
import 'package:resume/presentation/widgets/carousel/carousel_menu_project/logo_projects.dart';
import 'package:resume/presentation/pages/page_4_projects/project_description.dart';
import 'package:resume/presentation/widgets/carousel/carousel_content_project/repo_box.dart';
import 'package:resume/presentation/widgets/drawer/shape_drawer.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/screen_size.dart';

// ignore: must_be_immutable
class ProjectTypesContent extends StatefulWidget {
  String type;
  ProjectTypesContent({Key? key, required this.type}) : super(key: key);

  @override
  State<ProjectTypesContent> createState() => _ProjectTypesContentState();
}

class _ProjectTypesContentState extends State<ProjectTypesContent> {
  ///To read the indexevery time the carousel changes and update
  ///the learning and challenge boxes.
  late int finalIndex;

  @override
  Widget build(BuildContext context) {
    ScreenSize myScreenSize = ScreenSize(context);
    ScreenType myScreenType = ScreenType(context);

    return ChangeNotifierProvider(
        create: (context) => CarouselProvider(),
        child: Scaffold(
            body: SizedBox(
              width: myScreenSize.screenWidth,
              height: myScreenSize.screenHeight,
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                fit: StackFit.loose,
                children: [
                  const Positioned(bottom: 25, left: 0, child: FloatButton()),
                  SizedBox(
                    height: myScreenSize.screenHeight * 0.3,
                    child: Image.asset(
                      'images/left_triangle_projects.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                      top: 15,
                      child: SizedBox(
                        width: 70,
                        height: 70,
                        child: Image.asset(
                          'assets/images/BlackWing.png',
                          fit: BoxFit.contain,
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: SizedBox(
                          width: myScreenSize.screenWidth * 0.7,
                          height: 20,
                          child: Image.asset(
                            'images/line_red_yellow.png',
                            fit: BoxFit.contain,
                          ))),
                  Positioned(
                      top: 20,
                      right: 5,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TitleText(type: 'mobile-content', name: 'projects'),
                            Hero(
                              tag: widget.type,
                              child: LogoProjects(
                                type: widget.type,
                                width: 50,
                                height: 50,
                              ),
                            )
                          ])),
                  Center(
                      child: Container(
                          width: myScreenSize.screenWidth,
                          height: myScreenSize.screenHeight * 0.05,
                          decoration: const BoxDecoration(
                              color: Colores.projectSquareLine))),
//Carousel By Project
                  Center(
                      child: SizedBox(
                    width: myScreenSize.screenWidth,
                    child: CarouselByProject(
                      type: widget.type,
                    ),
                  )),
//Description
                  Positioned(
                      bottom: myScreenType.isDesktop
                          ? 210
                          : myScreenType.isTablet
                              ? 110
                              : 95,
                      left: 15,
                      child: Column(
                        children: [
                          ProjectDescription(
                            project: widget.type,
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          const AutoSizeText('Clic the image for more details')
                              .projectsSizeTextClicMessageStyle(),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          RepoBox(
                            project: widget.type,
                          ),
                        ],
                      )),
                  Positioned(
                      bottom: 15,
                      right: 0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Project Index:')
                              .projectsSizeTextSubtitleStyle(),
                          SizedBox(
                              width: myScreenSize.screenWidth * 0.5,
                              child:
                                  const CarouselMenuProjects(page: 'content'))
                        ],
                      )),
                ],
              ),
            ),
            drawer: const DrawerShape()));
  }
}
