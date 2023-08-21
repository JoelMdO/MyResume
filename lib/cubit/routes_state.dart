part of 'routes_cubit.dart';

class NavigationRouteState {
  late String route;

  NavigationRouteState({
    this.route = '',
  });
  NavigationRouteState copyWith({required String route}) {
    return NavigationRouteState(
      route: route,
    );
  }
}
