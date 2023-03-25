part of 'marginality_choice_bloc.dart';


@freezed
class MarginalityChoiceState with _$MarginalityChoiceState {
  const factory MarginalityChoiceState.initial() = _Initial;
  const factory MarginalityChoiceState.loading() = _Loading;
  const factory MarginalityChoiceState.loaded(List<String> choices, String selectedValue) = _Loaded;
  const factory MarginalityChoiceState.itemSelected(List<String> choices, String selectedValue) = _ItemSelected;

}