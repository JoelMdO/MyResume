import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/desktop/page_1_home/main_home_p1d.dart';
import 'package:resume/presentation/pages/desktop/page_2_techstack/main_techstack_p2d.dart';
import 'package:resume/presentation/pages/desktop/page_3_career/main_career_p3d.dart';
import 'package:resume/presentation/pages/desktop/page_4_projects/main_projects_p4d.dart';
import 'package:resume/presentation/pages/mobile/page_1_home/main_home_p1m.dart';
import 'package:resume/presentation/pages/mobile/page_2_techstack/main_techstack_p2m.dart';
import 'package:resume/presentation/pages/mobile/page_3_career/main_career_p3m.dart';
import 'package:resume/presentation/pages/mobile/page_4_projects/main_projects_p4m.dart';
import 'package:resume/presentation/pages/tablet/page_1_home/main_home_p1t.dart';
import 'package:resume/presentation/pages/tablet/page_2_techstack/main_techstack_p2t.dart';
import 'package:resume/presentation/pages/tablet/page_3_career/main_career_p3t.dart';
import 'package:resume/presentation/pages/tablet/page_4_projects/main_projects_p4t.dart';

// Define the global keys
final GlobalKey<NavigatorState> desktopNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> isTabletNavigatorKey =
    GlobalKey<NavigatorState>();

class ResponsiveHomePage extends StatefulWidget {
  const ResponsiveHomePage({super.key});

  @override
  ResponsiveHomePageState createState() => ResponsiveHomePageState();
}

/// My Resume has 3 breakpoints one for desktop with a size width of 920,
/// Tablet for size width of 767 and rest will be mobile.
/// Each of it has 4 pages (Home, TechStack, Career and Projects)

class ResponsiveHomePageState extends State<ResponsiveHomePage> {
  bool isDesktop = true;
  bool isTablet = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = MediaQuery.of(context).size.width >= 920;
        isTablet = MediaQuery.of(context).size.width >= 767 &&
            MediaQuery.of(context).size.width <= 919;
        if (MediaQuery.of(context).size.width < 767) {
          isTablet = false;
        }

        return Navigator(
          key: isDesktop ? desktopNavigatorKey : isTabletNavigatorKey,
          onGenerateRoute: (RouteSettings settings) {
            switch (settings.name) {
              case '/':
                return MaterialPageRoute(builder: (context) {
                  if (isDesktop) {
                    return const HomePageDesktop();
                  } else if (isTablet) {
                    return const HomePageTablet();
                  } else {
                    return const HomePageMobile();
                  }
                });
              case '/techstack':
                return MaterialPageRoute(builder: (context) {
                  if (isDesktop) {
                    return const TechStackPageDesktop();
                  } else if (isTablet) {
                    return const TechStackPageTablet();
                  } else {
                    return const TechStackPageMobile();
                  }
                });
              case '/career':
                return MaterialPageRoute(builder: (context) {
                  if (isDesktop) {
                    return const CareerPageDesktop();
                  } else if (isTablet) {
                    return const CareerPageTablet();
                  } else {
                    return const CareerPageMobile();
                  }
                });
              case '/projects':
                return MaterialPageRoute(builder: (context) {
                  if (isDesktop) {
                    return const ProjectsPageDesktop();
                  } else if (isTablet) {
                    return const ProjectsPageTablet();
                  } else {
                    return const ProjectsPageMobile();
                  }
                });
              default:
                return null;
            }
          },
        );
      },
    );
  }
}
