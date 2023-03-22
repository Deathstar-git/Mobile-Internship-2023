import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'marginality_choice_event.dart';
part 'marginality_choice_state.dart';
part 'marginality_choice_bloc.freezed.dart';

//BLoC для  выбора типа маржинальности(Маржинальность проекта, Маржинальность сотрудника и т.д.)
@injectable
class MarginalityChoiceBloc extends Bloc<MarginalityChoiceEvent, MarginalityChoiceState> {
  MarginalityChoiceBloc() : super(const MarginalityChoiceState.initial()) {
    on<MarginalityChoiceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}