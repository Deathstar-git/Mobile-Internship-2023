import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/features/marginality/i_marginality_repository.dart';
import '../../domain/features/marginality/models/marginality_employees.dart';
import '../../infrastructure/features/prefs/shared_prefs.dart';

part 'marginality_event.dart';
part 'marginality_state.dart';
part 'marginality_bloc.freezed.dart';

//BLoC для списка  маржинальности
@injectable
class MarginalityBloc extends Bloc<MarginalityEvent, MarginalityState> {
  // Регистрирование:
  // @Named("impl1")
  // @Injectable(as: AbstractClass)
  // class ConcreteClassImpl1 implements AbstractClass {}
  //
  // @Named("impl2")
  // @Injectable(as: AbstractClass)
  // class ConcreteClassImpl2 implements AbstractClass {}
  // Использование:
  // final AbstractClass abstractClass;
  // Consumer(@Named('impl1') this. abstractClass)
  SharedPref sharedPref;
  IMarginalityRepository repository;
  String selectedMarginality = '';
  Future<void> _onStarted(
      Started event,
      Emitter<MarginalityState> emit,
      ) async {
    emit(const _Loading());
    // Future.delayed(const Duration(milliseconds:100));
    selectedMarginality = sharedPref.getMarginalityChoice();
    List<MarginalityEmployees> data =  await repository.getMarginalityEmployees(
        to: '2023-04-01',
        from: '2022-12-31',
        currency: 'rub');
    // emit(_Loaded(data, selectedMarginality));
  }
  Future<void> _onValueChanged(
      ValueChanged event,
      Emitter<MarginalityState> emit,
      ) async {
    selectedMarginality = sharedPref.getMarginalityChoice();
    emit(_ItemSelected(selectedMarginality));
  }
  MarginalityBloc(this.repository, this.sharedPref) : super(const MarginalityState.initial()) {
    on<MarginalityEvent>((event, emit) {
      event.map(started: (started) {
        _onStarted(started, emit);
      }, valueChanged: (valueChanged) {
        _onValueChanged(valueChanged, emit);
      });
    },
        transformer: sequential());
  }
}