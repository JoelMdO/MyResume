import 'package:flutter_bloc/flutter_bloc.dart';

part 'expansion_panel_state.dart';

class ExpansionPanelCubit extends Cubit<ExpansionPanelState> {
  ExpansionPanelCubit() : super(ExpansionPanelState());
  void onExpansionChanged(bool expandedInput) {
    emit(state.copyWith(expandedInput: expandedInput));
  }
}
