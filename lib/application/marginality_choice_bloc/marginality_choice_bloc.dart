import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../infrastructure/features/prefs/shared_prefs.dart';
part 'marginality_choice_event.dart';
part 'marginality_choice_state.dart';
part 'marginality_choice_bloc.freezed.dart';


//BLoC для  выбора типа маржинальности(Маржинальность проекта, Маржинальность сотрудника и т.д.)
@injectable
class MarginalityChoiceBloc extends Bloc<MarginalityChoiceEvent, MarginalityChoiceState> {
  SharedPref sharedPref;
  String selectedValue = '';
  final List<String> choices = [
    'Маржинальность сотрудников',
    'Маржинальность проекта',
    'Маржинальность отдела',
    'Маржинальность компании'
  ];

  Future<void> onStarted(
    Started event,
    Emitter<MarginalityChoiceState> emit,
    ) async {
  emit(const _Loading());
  Future.delayed(const Duration(milliseconds:100));
  selectedValue = await sharedPref.getMarginalityChoice();
  emit(_Loaded(choices, selectedValue));
}
Future<void> onValueChanged(
    ValueChanged event,
    Emitter<MarginalityChoiceState> emit,
    ) async {
    selectedValue = await sharedPref.getMarginalityChoice();
  emit(_ItemSelected(choices, selectedValue));
}

  MarginalityChoiceBloc(this.sharedPref) : super(const _Initial()) {
    on<MarginalityChoiceEvent>((event, emit) {
      event.map(started: (started) {
        onStarted(started, emit);
      }, valueChanged: (valueChanged) {
        onValueChanged(valueChanged, emit);
      });
    },
      transformer: sequential());
  }

  // @override
  // Stream<MarginalityChoiceState> mapEventToState(MarginalityChoiceEvent event) async* {
  //   yield* event.map(
  //     started: (event) async* {
  //       yield state.copyWith(
  //         choices: choices,
  //         selectedValue: selectedValue,
  //       );
  //     },
  //     valueChanged: (event) async* {
  //       yield state.copyWith(
  //         choices: choices,
  //         selectedValue: event.selectedValue,
  //       );
  //     },
  //   );
  }

  //

  // }

