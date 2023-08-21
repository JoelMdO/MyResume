import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/cubit/routes_cubit.dart';
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

// ignore: must_be_immutable
class ResponsiveHomePage extends StatelessWidget {
  final String nameRoute;
  const ResponsiveHomePage({Key? key, required this.nameRoute})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NavigationCubit()..navigateTo(nameRoute),
        child: ResponsiveHomePageView(route: nameRoute));
  }
}

// ignore: must_be_immutable
class ResponsiveHomePageView extends StatefulWidget {
  final String route;
  const ResponsiveHomePageView({super.key, required this.route});

  @override
  ResponsiveHomePageViewState createState() => ResponsiveHomePageViewState();
}

/// My Resume has 3 breakpoints one for desktop with a size width of 920,
/// Tablet for size width of 767 and rest will be mobile.
/// Each of it has 4 pages (Home, TechStack, Career and Projects)

class ResponsiveHomePageViewState extends State<ResponsiveHomePageView> {
  late bool isDesktop;
  late bool isTablet;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 920;
    final isTablet = MediaQuery.of(context).size.width <= 919 &&
        MediaQuery.of(context).size.width >= 767;

    return BlocBuilder<NavigationCubit, NavigationRouteState>(
        // return LayoutBuilder(
        builder: (context, state) {
      return LayoutBuilder(builder: (context, constraints) {
        return Navigator(
            key: GlobalKey<NavigatorState>(),
            onGenerateRoute: (RouteSettings settings) {
              switch (state.route) {
                case '/':
                  return isDesktop
                      ? MaterialPageRoute(builder: (context) {
                          return const HomePageDesktop();
                        })
                      : isTablet
                          ? MaterialPageRoute(builder: (context) {
                              return const HomePageTablet();
                            })
                          : MaterialPageRoute(builder: (context) {
                              return const HomePageMobile();
                            });
                case '/techstack':
                  return isDesktop
                      ? MaterialPageRoute(builder: (context) {
                          return const TechStackPageDesktop();
                        })
                      : isTablet
                          ? MaterialPageRoute(builder: (context) {
                              return const TechStackPageTablet();
                            })
                          : MaterialPageRoute(builder: (context) {
                              return const TechStackPageMobile();
                            });
                case '/career':
                  return isDesktop
                      ? MaterialPageRoute(builder: (context) {
                          return CareerPageDesktop(
                            isExpanded: false,
                          );
                        })
                      : isTablet
                          ? MaterialPageRoute(builder: (context) {
                              return CareerPageTablet(
                                isExpanded: false,
                              );
                            })
                          : MaterialPageRoute(builder: (context) {
                              return CareerPageMobile(
                                isExpanded: false,
                              );
                            });
                case '/projects':
                  return isDesktop
                      ? MaterialPageRoute(builder: (context) {
                          return ProjectsPageDesktop(
                            isExpanded: false,
                          );
                        })
                      : isTablet
                          ? MaterialPageRoute(builder: (context) {
                              return const ProjectsPageTablet(
                                isExpanded: false,
                              );
                            })
                          : MaterialPageRoute(builder: (context) {
                              return ProjectsPageMobile(
                                isExpanded: false,
                              );
                            });
              }
              return null;
            });
      });
    });
  }
}
