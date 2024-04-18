import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/screen_size.dart';
import 'package:resume/presentation/widgets/skills_kanban/skills_text_styles.dart';

class SkillsKanban extends StatelessWidget {
  const SkillsKanban({super.key});

  static get context => null;

  @override
  Widget build(BuildContext context) {
    ScreenType myScreenType = ScreenType(context);

    return FittedBox(
      fit: BoxFit.contain,
      child: SizedBox(
        width: myScreenType.isDesktop ? 600 : 450,
        height: myScreenType.isDesktop ? 550 : 450,
        child: Stack(
          children: [
            Positioned(
                right: myScreenType.isDesktop
                    ? 0
                    : myScreenType.isTablet
                        ? 40
                        : 60,
                top: myScreenType.isDesktop ? 50 : 90,
                child: const Kanban(type: 'data')),
            Positioned(
                left: myScreenType.isDesktop
                    ? 30
                    : myScreenType.isTablet
                        ? 70
                        : 40,
                top: myScreenType.isDesktop
                    ? 85
                    : myScreenType.isTablet
                        ? 85
                        : 95,
                child: const Kanban(type: 'business')),
            Positioned(
                left: myScreenType.isDesktop
                    ? 220
                    : myScreenType.isTablet
                        ? 190
                        : 160,
                top: myScreenType.isDesktop ? 55 : 75,
                child: const Kanban(type: 'multi')),
            Positioned(
                right: myScreenType.isDesktop
                    ? 200
                    : myScreenType.isTablet
                        ? 160
                        : 155,
                bottom: myScreenType.isDesktop ? 15 : 80,
                child: const Kanban(type: 'cyber')),
            Positioned(
                left: myScreenType.isDesktop ? 20 : 55,
                bottom: myScreenType.isDesktop ? 5 : 55,
                child: const Kanban(type: 'pm')),
            Positioned(
                right: myScreenType.isDesktop
                    ? 10
                    : myScreenType.isTablet
                        ? 40
                        : 35,
                bottom: myScreenType.isDesktop ? 0 : 60,
                child: const Kanban(type: 'agile')),
            Positioned(
                left: myScreenType.isDesktop
                    ? 20
                    : myScreenType.isTablet
                        ? 50
                        : 45,
                bottom: myScreenType.isTablet ? 160 : 150,
                child: const Kanban(type: 'seo')),
            Positioned(
                right: myScreenType.isDesktop
                    ? 20
                    : myScreenType.isTablet
                        ? 60
                        : 50,
                bottom: 155,
                child: const Kanban(type: 'ui')),
            const Align(
                alignment: Alignment.center,
                child: Kanban(type: 'problemsolver'))
          ],
        ),
      ),
    );
  }
}

class Kanban extends StatelessWidget {
  final String type;
  const Kanban({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    ScreenType myScreenType = ScreenType(context);
    Color? color;
    late String title;
    Offset? offset;
    bool isProblemSolver = false;

    switch (type) {
      case 'data':
        color = Colores.greenKanban;
        title = 'Data\n Analytics';
        offset = const Offset(10, 10);
        break;
      case 'pm':
        color = Colores.redKanban;
        title = 'Project Management';
        offset = const Offset(-10, 10);
        break;
      case 'problemsolver':
        color = Colors.yellow;
        title = 'Creative\n Problem\n Solver';
        isProblemSolver = true;
        break;
      case 'agile':
        color = Colores.orangeTechLetter;
        title = 'Agile\n Kaizen\n Shape Up';
        offset = const Offset(10, 10);
        break;
      case 'business':
        color = Colors.blue;
        title = 'Business\n Re-\n engineering';
        offset = const Offset(-10, -10);
        break;
      case 'multi':
        color = Colors.pinkAccent;
        title = 'Multicultural\n Team Work';
        offset = const Offset(0, -10);
        break;
      case 'ui':
        color = Colors.purple;
        title = 'UI and UX\n Design';
        offset = const Offset(10, 0);
        break;
      case 'seo':
        color = Colors.brown.shade100;
        title = 'SEO\n Digital\n Marketing';
        offset = const Offset(-10, 0);
        break;
      case 'cyber':
        color = Colores.oliveKanban;
        title = 'CyberSecurity';
        offset = const Offset(0, 10);
        break;
    }

    return Container(
      width: myScreenType.isDesktop ? 190 : 120,
      height: myScreenType.isDesktop ? 160 : 100,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: isProblemSolver ? 0.0 : 1.0,
          offset: offset ?? const Offset(0, 0),
          color: Colores.grey,
        )
      ], color: color ?? Colors.transparent),
      child: Center(child: AutoSizeText(title).skillTextBoldStyle()),
    );
  }
}
