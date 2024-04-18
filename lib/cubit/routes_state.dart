part of 'routes_cubit.dart';

class NavigationRouteState {
  late String currentRoute;
  late String lastRoute;

  NavigationRouteState({
    this.currentRoute = '',
    this.lastRoute = '',
  });
  NavigationRouteState copyWith({required String currentRoute, lastRoute}) {
    return NavigationRouteState(
      currentRoute: currentRoute,
      lastRoute: this.lastRoute,
    );
  }
}
