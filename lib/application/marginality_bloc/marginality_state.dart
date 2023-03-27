part of 'marginality_bloc.dart';

@freezed
class MarginalityState with _$MarginalityState {
  const factory MarginalityState.initial() = _Initial;
  const factory MarginalityState.loading() = _Loading;
  const factory MarginalityState.loaded(List<String> periods, String selectedPeriod) = _Loaded;
  const factory MarginalityState.itemSelected(List<String> periods, String selectedPeriod) = _ItemSelected;
}