part of 'marginality_bloc.dart';

@freezed
class MarginalityEvent with _$MarginalityEvent {
  const factory MarginalityEvent.started() = Started;
  const factory MarginalityEvent.valueChanged() = ValueChanged;
}