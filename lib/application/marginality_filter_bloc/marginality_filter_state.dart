part of 'marginality_filter_bloc.dart';


@freezed
class MarginalityFilterState with _$MarginalityFilterState {
  const factory MarginalityFilterState.initial() = _Initial;
  const factory MarginalityFilterState.loading() = _Loading;
  const factory MarginalityFilterState.loaded(
      List<String> periods,
      String selectedPeriod,
      String selectedYear,
      String selectedMonth) = _Loaded;
  const factory MarginalityFilterState.itemSelected(List<String> periods,
      String selectedPeriod,
      String selectedYear,
      String selectedMonth) = _ItemSelected;

}