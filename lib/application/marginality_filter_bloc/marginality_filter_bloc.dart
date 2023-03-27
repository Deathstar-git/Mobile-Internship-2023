import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../infrastructure/features/prefs/shared_prefs.dart';
part 'marginality_filter_event.dart';
part 'marginality_filter_state.dart';
part 'marginality_filter_bloc.freezed.dart';

enum Currency {ruble, dollar}
//BLoC для  выбора типа маржинальности(Маржинальность проекта, Маржинальность сотрудника и т.д.)
@injectable
class MarginalityFilterBloc extends Bloc<MarginalityFilterEvent, MarginalityFilterState> {
  SharedPref sharedPref;
  String selectedPeriod = '';
  final List<String> periods = [
    'Месяц',
    'Квартал',
    'Год',
  ];

  Future<void> _onStarted(
      Started event,
      Emitter<MarginalityFilterState> emit,
      ) async {
    emit(const _Loading());
    Future.delayed(const Duration(milliseconds:100));
    selectedPeriod = sharedPref.getMarginalityPeriodItem();
    emit(_Loaded(periods, selectedPeriod));
  }
  Future<void> _onValueChanged(
      ValueChanged event,
      Emitter<MarginalityFilterState> emit,
      ) async {
    selectedPeriod = sharedPref.getMarginalityPeriodItem();
    emit(_ItemSelected(periods, selectedPeriod));
  }

  MarginalityFilterBloc(this.sharedPref) : super(const _Initial()) {
    on<MarginalityFilterEvent>((event, emit) {
      event.map(started: (started) {
        _onStarted(started, emit);
      }, valueChanged: (valueChanged) {
        _onValueChanged(valueChanged, emit);
      });
    },
        transformer: sequential());
  }

  String getCurrentSelectedItem(){
    return sharedPref.getMarginalityChoice();
  }

}


