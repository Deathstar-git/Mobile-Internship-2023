part of 'marginality_bloc.dart';

@freezed
class MarginalityState with _$MarginalityState {
  const factory MarginalityState.initial() = _Initial;
  const factory MarginalityState.loading() = _Loading;
  const factory MarginalityState.loaded(List<MarginalityEmployees> data,String selectedMarginality) = _Loaded;
  const factory MarginalityState.itemSelected(String selectedMarginality) = _ItemSelected;
}