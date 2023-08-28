import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/cubit/expansion_panel_cubit.dart';
import 'package:resume/presentation/widgets/drawer/shape_drawer.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/buttons/projects_button.dart';
import 'package:resume/presentation/widgets/pages_text/career/career_text_list.dart';
import 'package:resume/presentation/widgets/titles/title_career.dart';
import 'package:resume/presentation/widgets/pages_text/career/career_text.dart';

// ignore: must_be_immutable
class CareerPageTablet extends StatelessWidget {
  late bool isExpanded;
  CareerPageTablet({Key? key, required this.isExpanded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpansionPanelCubit>(
        create: (context) =>
            ExpansionPanelCubit()..onExpansionChanged(isExpanded),
        child: CareerPageTabletView(expandedInput: isExpanded));
  }
}

// ignore: must_be_immutable
class CareerPageTabletView extends StatefulWidget {
  bool expandedInput;
  CareerPageTabletView({super.key, required this.expandedInput});

  @override
  State<CareerPageTabletView> createState() => _CareerPageTabletViewState();
}

class _CareerPageTabletViewState extends State<CareerPageTabletView> {
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
          },
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Third%20Background.png'),
                fit: BoxFit.fill),
          ),
          child: SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Stack(
                alignment: AlignmentDirectional.topStart,
                fit: StackFit.loose,
                children: [
                  Positioned(
                    left: 20,
                    child: SizedBox(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.30,
                        child: const TituloCareer()),
                  ),
                  Positioned(
                      top: 240,
                      left: 50,
                      child: SizedBox(
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.8,
                          child: ListView.builder(
                              itemCount: CareerTextList.carrerTextInfo.length,
                              itemBuilder: (context, index) {
                                final careerText =
                                    CareerTextList.carrerTextInfo[index];
                                return CareerText(
                                  title: careerText.title,
                                  subtitle: careerText.subtitle,
                                  value: careerText.value,
                                  bodytitle: careerText.bodytitle,
                                  achievementtitle1:
                                      careerText.achievementtitle1,
                                  achievementtext1: careerText.achievementtext1,
                                  achivementtitle2: careerText.achivementtitle2,
                                  achievementtext2: careerText.achievementtext2,
                                  achievementtitle3:
                                      careerText.achievementtitle3,
                                  achievementtext3: careerText.achievementtext3,
                                  achievementtitle4:
                                      careerText.achievementtitle4,
                                  achievementtext4: careerText.achievementtext4,
                                );
                              }))),
                  Positioned(
                      bottom: 10,
                      left: 10,
                      child: BounceInRight(
                        delay: const Duration(seconds: 6),
                        duration: const Duration(seconds: 1),
                        child: BlocBuilder<ExpansionPanelCubit,
                            ExpansionPanelState>(
                          builder: (context, state) {
                            return Visibility(
                                visible: state.expandedInput,
                                child: const ProjectsNavigationButton());
                          },
                        ),
                      )),
                ]),
          ),
        ),
        drawer: const DrawerShape());
  }
}
