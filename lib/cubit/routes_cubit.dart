import 'package:flutter_bloc/flutter_bloc.dart';

part 'routes_state.dart';

class NavigationCubit extends Cubit<NavigationRouteState> {
  NavigationCubit() : super(NavigationRouteState());

  void navigateTo(String route) {
    emit(state.copyWith(route: route));
  }
}
