import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/cubit/routes_cubit.dart';
import 'package:resume/presentation/pages/page_1_home/desktop/main_home_p1d.dart';
import 'package:resume/presentation/pages/page_1_home/mobile/main_home_p1.dart';
import 'package:resume/presentation/pages/page_1_home/tablet/main_home_p1t.dart';
import 'package:resume/presentation/pages/page_2_techstack/techstack_page.dart';
import 'package:resume/presentation/pages/page_4_projects/projects_index_page.dart';
import 'package:resume/utils/constants/screen_size.dart';

class ResponsiveHomePage extends StatelessWidget {
  final String nameRoute;
  const ResponsiveHomePage({super.key, required this.nameRoute});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NavigationCubit()..navigateTo(nameRoute),
        child: ResponsiveHomePageView(route: nameRoute));
  }
}

class ResponsiveHomePageView extends StatefulWidget {
  final String route;
  const ResponsiveHomePageView({super.key, required this.route});

  @override
  ResponsiveHomePageViewState createState() => ResponsiveHomePageViewState();
}

/// My Resume has 3 breakpoints one for desktop with a size width of 920,
/// Tablet for size width of 500 and rest will be mobile.
/// Each of it has 4 pages (Home, TechStack, Career and Projects)

class ResponsiveHomePageViewState extends State<ResponsiveHomePageView> {
  @override
  Widget build(BuildContext context) {
    ScreenType myScreenType = ScreenType(context);

    return BlocBuilder<NavigationCubit, NavigationRouteState>(
        // return LayoutBuilder(
        builder: (context, state) {
      return LayoutBuilder(builder: (context, constraints) {
        return Navigator(
            key: GlobalKey<NavigatorState>(),
            onGenerateRoute: (RouteSettings settings) {
              switch (state.currentRoute) {
                case '/':
                  return myScreenType.isDesktop
                      ? MaterialPageRoute(builder: (context) {
                          return const HomePageDesktop();
                        })
                      : myScreenType.isTablet
                          ? MaterialPageRoute(builder: (context) {
                              return const HomePageTablet();
                            })
                          : MaterialPageRoute(builder: (context) {
                              return const HomePageMobile();
                            });
                case '/techstack':
                  return MaterialPageRoute(builder: (context) {
                    return const TechStackPage();
                  });
                case '/projects':
                  return MaterialPageRoute(builder: (context) {
                    return const ProjectsIndexPage();
                  });
              }
              return null;
            });
      });
    });
  }
}
