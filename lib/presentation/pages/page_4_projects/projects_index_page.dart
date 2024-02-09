import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_1_home/text/titles/title_text.dart';
import 'package:resume/presentation/widgets/carousel/carousel_menu_project/carrousel_menu_projects.dart';
import 'package:resume/presentation/widgets/buttons/submenu_nav_button.dart';
import 'package:resume/presentation/widgets/drawer/shape_drawer.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/screen_size.dart';

class ProjectsIndexPage extends StatefulWidget {
  /// Widget to show the Menu or Index of the classes of projects which has been
  /// divided by library, framework or type, for display uses a carousel
  /// [CarouselMenuProjects] for the user to select the one which are interested in
  ///
  const ProjectsIndexPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProjectsIndexPage> createState() => _ProjectsIndexPageState();
}

class _ProjectsIndexPageState extends State<ProjectsIndexPage> {
  @override
  Widget build(BuildContext context) {
    ScreenSize myScreenSize = ScreenSize(context);
    ScreenType myscreenType = ScreenType(context);

    return Scaffold(
        floatingActionButton: const FloatButton(),
        body: SizedBox(
          width: myScreenSize.screenWidth,
          height: myScreenSize.screenHeight,
          child: Stack(
            fit: StackFit.loose,
            alignment: AlignmentDirectional.topStart,
            children: [
              Positioned(
                  left: 0,
                  child: SizedBox(
                    height: myScreenSize.screenHeight * 0.3,
                    child: Image.asset(
                      'assets/images/left_triangle_projects.png',
                      fit: BoxFit.fill,
                    ),
                  )),
              Positioned(
                  top: 15,
                  child: SizedBox(
                      height: 70,
                      width: 70,
                      child: Image.asset(
                        'assets/images/BlackWing.png',
                        fit: BoxFit.contain,
                      ))),
              Positioned(
                  bottom: 5,
                  right: 1,
                  child: SizedBox(
                      width: myScreenSize.screenWidth * 0.5,
                      height: 20,
                      child: Image.asset(
                        'images/line_blue_yellow.png',
                        fit: BoxFit.fill,
                      ))),
              TitleText(type: 'mobile-index', name: 'projects'),
              Center(
                  child: Container(
                      width: myScreenSize.screenWidth,
                      height: myScreenSize.screenHeight * 0.05,
                      decoration: BoxDecoration(
                          color: Colores.projectSquareLine.withOpacity(0.4)))),
              const Center(
                child: CarouselMenuProjects(
                  page: '',
                ),
              ),
              //BUTTON FOR CAREER //
              Positioned(
                  bottom: myscreenType.isDesktop
                      ? 100
                      : myscreenType.isTablet
                          ? 100
                          : 80,
                  right: 30,
                  child: BounceInRight(
                    delay: const Duration(seconds: 6),
                    duration: const Duration(seconds: 1),
                    child: const SubMenuNavigationButton(
                      type: 'career',
                    ),
                  ))
            ],
          ),
        ),
        drawer: const DrawerShape());
  }
}
