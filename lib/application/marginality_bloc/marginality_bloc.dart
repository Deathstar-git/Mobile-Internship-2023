import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'marginality_event.dart';
part 'marginality_state.dart';
part 'marginality_bloc.freezed.dart';

//BLoC для списка  маржинальности
@injectable
class MarginalityBloc extends Bloc<MarginalityEvent, MarginalityState> {
  MarginalityBloc() : super(const MarginalityState.initial()) {
    on<MarginalityEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}