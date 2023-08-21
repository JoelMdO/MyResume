part of 'expansion_panel_cubit.dart';

class ExpansionPanelState {
  late bool expandedInput;

  ExpansionPanelState({this.expandedInput = false});
  ExpansionPanelState copyWith({bool? expandedInput}) {
    return ExpansionPanelState(
      expandedInput: expandedInput ?? this.expandedInput,
    );
  }
}
