import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/submenu_nav_button.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/graphic_shape.dart';
import 'package:resume/presentation/widgets/drawer/shape_drawer.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/utils/constants/screen_size.dart';

class TechStackPage extends StatefulWidget {
  const TechStackPage({super.key});

  @override
  State<TechStackPage> createState() => _TechStackPageState();
}

class _TechStackPageState extends State<TechStackPage> {
  @override
  Widget build(BuildContext context) {
    ScreenSize myScreenSize = ScreenSize(context);
    ScreenType myScreenType = ScreenType(context);

    return Scaffold(
        floatingActionButton: const FloatButton(),
        body: SizedBox(
          width: myScreenSize.screenWidth,
          height: myScreenSize.screenHeight,
          child: Stack(
              alignment: AlignmentDirectional.topStart,
              fit: StackFit.loose,
              children: [
                const Center(child: GraphicShape()),
                Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: myScreenSize.screenHeight * 0.3,
                      child: Image.asset(
                        'assets/images/left_triangle_projects.png',
                        fit: BoxFit.contain,
                      ),
                    )),
                //BUTTON FOR EDUCATION //
                Positioned(
                    bottom: 50,
                    left: myScreenType.isMiniMobile ? 10 : 50,
                    child: BounceInRight(
                      delay: const Duration(seconds: 6),
                      duration: const Duration(seconds: 1),
                      child: const SubMenuNavigationButton(type: 'education'),
                    )),
                Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      height: myScreenSize.screenHeight * 0.3,
                      child: Transform(
                        transform: Matrix4.rotationX(120),
                        child: Image.asset(
                          'assets/images/left_triangle_projects.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    )),
              ]),
        ),
        drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.transparent,
            ),
            child: const DrawerShape()));
  }
}
