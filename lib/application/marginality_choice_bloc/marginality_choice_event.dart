part of 'marginality_choice_bloc.dart';

@freezed
class MarginalityChoiceEvent with _$MarginalityChoiceEvent {
  const factory MarginalityChoiceEvent.started() = Started;
  const factory MarginalityChoiceEvent.valueChanged() = ValueChanged;
}