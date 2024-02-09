import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/cubit/expansion_panel_cubit.dart';
import 'package:resume/presentation/pages/page_1_home/text/titles/title_text.dart';
import 'package:resume/presentation/widgets/drawer/shape_drawer.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/pages/page_3_career/text/career_text_list.dart';
import 'package:resume/presentation/pages/page_3_career/text/career_text.dart';
import 'package:resume/utils/constants/screen_size.dart';

// ignore: must_be_immutable
class CareerPage extends StatelessWidget {
  bool isExpanded;
  CareerPage({Key? key, required this.isExpanded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpansionPanelCubit>(
        create: (context) =>
            ExpansionPanelCubit()..onExpansionChanged(isExpanded),
        child: CareerPageView(expandedInput: isExpanded));
  }
}

// ignore: must_be_immutable
class CareerPageView extends StatefulWidget {
  bool expandedInput;
  CareerPageView({super.key, required this.expandedInput});

  @override
  State<CareerPageView> createState() => _CareerPageViewState();
}

class _CareerPageViewState extends State<CareerPageView> {
  @override
  Widget build(BuildContext context) {
    ScreenSize myScreenSize = ScreenSize(context);

    return Scaffold(
      floatingActionButton:
          BlocBuilder<ExpansionPanelCubit, ExpansionPanelState>(
        builder: (context, state) {
          return Visibility(
              visible: state.expandedInput != true, child: const FloatButton());
        },
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/First Background.png'),
              fit: BoxFit.fill),
        ),
        width: myScreenSize.screenWidth,
        height: myScreenSize.screenHeight,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          fit: StackFit.loose,
          children: [
            TitleText(type: '', name: 'career'),
            //Career Text
            Positioned(
                top: 180,
                left: 20,
                child: SizedBox(
                    width: myScreenSize.screenWidth * 0.85,
                    height: myScreenSize.screenHeight * 0.70,
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
                            achievementtitle: careerText.achievementtitle,
                            achievementtext: careerText.achievementtext,
                          );
                        }))),
          ],
        ),
      ),
      drawer: const DrawerShape(),
    );
  }
}
