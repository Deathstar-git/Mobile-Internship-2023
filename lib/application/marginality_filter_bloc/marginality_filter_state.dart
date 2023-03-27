part of 'marginality_filter_bloc.dart';


@freezed
class MarginalityFilterState with _$MarginalityFilterState {
  const factory MarginalityFilterState.initial() = _Initial;
  const factory MarginalityFilterState.loading() = _Loading;
  const factory MarginalityFilterState.loaded(List<String> choices, String selectedValue) = _Loaded;
  const factory MarginalityFilterState.itemSelected(List<String> choices, String selectedValue) = _ItemSelected;

}