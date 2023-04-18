part of 'marginality_filter_bloc.dart';

@freezed
class MarginalityFilterEvent with _$MarginalityFilterEvent {
  const factory MarginalityFilterEvent.started() = Started;
  const factory MarginalityFilterEvent.valueChanged() = ValueChanged;
}