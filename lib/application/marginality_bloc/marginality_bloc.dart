import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:mobile_internship_1/domain/features/marginality/models/marginality_companies.dart';
import 'package:mobile_internship_1/domain/features/marginality/models/marginality_departments.dart';
import '../../domain/features/marginality/i_marginality_repository.dart';
import '../../domain/features/marginality/models/marginality_employees.dart';
import '../../domain/features/marginality/models/marginality_projects.dart';
import '../../infrastructure/features/prefs/shared_prefs.dart';

part 'marginality_event.dart';
part 'marginality_state.dart';
part 'marginality_bloc.freezed.dart';

//BLoC для списка  маржинальности
@injectable
class MarginalityBloc extends Bloc<MarginalityEvent, MarginalityState> {

  SharedPref sharedPref;
  IMarginalityRepository repository;
  Future<void> _onStarted(
      Started event,
      Emitter<MarginalityState> emit,
      ) async {
    emit(const _Loading());
    String selectedMarginality = sharedPref.getMarginalityChoice();
    switch(selectedMarginality) {
      case 'Маржинальность сотрудников':
        List<MarginalityEmployees> data =  await getFilteredData() as List<MarginalityEmployees>;
        emit(_EmployeesLoaded(selectedMarginality, data));
        break;
      case 'Маржинальность проекта':
        List<MarginalityProjects> data =  await getFilteredData() as List<MarginalityProjects>;
        emit(_ProjectsLoaded(selectedMarginality, data));
        break;
      case 'Маржинальность отдела':
        List<MarginalityDepartments> data =  await getFilteredData() as List<MarginalityDepartments>;
        emit(_DepartmentsLoaded(selectedMarginality, data));
        break;
      case 'Маржинальность компании':
        List<MarginalityCompanies> data =  await getFilteredData() as List<MarginalityCompanies>;
        emit(_CompaniesLoaded(selectedMarginality, data));
        break;
    }
    // Future.delayed(const Duration(milliseconds:100));
  }
  Future<void> _onNewFilterSelected(
      NewFilterSelected event,
      Emitter<MarginalityState> emit,
      ) async {
    emit(const _Loading());
    String selectedMarginality = sharedPref.getMarginalityChoice();
    switch(selectedMarginality) {
      case 'Маржинальность сотрудников':
        List<MarginalityEmployees> data =  await getFilteredData() as List<MarginalityEmployees>;
        emit(_EmployeesLoaded(selectedMarginality, data));
        break;
      case 'Маржинальность проекта':
        List<MarginalityProjects> data =  await getFilteredData() as List<MarginalityProjects>;
        emit(_ProjectsLoaded(selectedMarginality, data));
        break;
      case 'Маржинальность отдела':
        List<MarginalityDepartments> data =  await getFilteredData() as List<MarginalityDepartments>;
        emit(_DepartmentsLoaded(selectedMarginality, data));
        break;
      case 'Маржинальность компании':
        List<MarginalityCompanies> data =  await getFilteredData() as List<MarginalityCompanies>;
        emit(_CompaniesLoaded(selectedMarginality, data));
        break;
    }
  }
  MarginalityBloc(this.repository, this.sharedPref) : super(const MarginalityState.initial()) {
    on<MarginalityEvent>((event, emit) async{
      await event.map(started: (started) => _onStarted(started, emit),
          newFilterSelected: (newFilterSelected) =>
        _onNewFilterSelected(newFilterSelected, emit));
      },
        transformer: sequential());
  }
  Future<List<Object>> getFilteredData() async{
    String selectedMarginality = sharedPref.getMarginalityChoice();
    String selectedPeriod = sharedPref.getMarginalityPeriodItem();
    String selectedDate = '';
    List<MarginalityProjects> defaultData;
    switch (selectedPeriod) {
      case 'Год':
        selectedDate = sharedPref.getMarginalityPeriodYear();
        break;
      case 'Месяц':
        selectedDate = sharedPref.getMarginalityPeriodMonth();
        break;
    }

    switch(selectedMarginality) {
      case 'Маржинальность сотрудников':
        List<String> selectedDateRange = formattingDateString(selectedDate);
        List<MarginalityEmployees> data =  await repository.getMarginalityEmployees(
            to: selectedDateRange[0],
            from: selectedDateRange[1],
            currency: 'rub');
        return data;
      case 'Маржинальность проекта':
        List<String> selectedDateRange = formattingDateString(selectedDate);
        List<MarginalityProjects> data =  await repository.getMarginalityProjects(
            to: selectedDateRange[0],
            from: selectedDateRange[1],
            currency: 'rub');
        return data;
      case 'Маржинальность отдела':
        List<String> selectedDateRange = formattingDateString(selectedDate);
        List<MarginalityDepartments> data =  await repository.getMarginalityDepartments(
            to: selectedDateRange[0],
            from: selectedDateRange[1],
            currency: 'rub');
        return data;
      case 'Маржинальность компании':
        List<String> selectedDateRange = formattingDateString(selectedDate);
        List<MarginalityCompanies> data =  await repository.getMarginalityCompanies(
            to: selectedDateRange[0],
            from: selectedDateRange[1],
            currency: 'rub');
        return data;
      default:
        List<String> selectedDateRange = formattingDateString(selectedDate);
        defaultData = await repository.getMarginalityProjects(
            to: selectedDateRange[0],
            from: selectedDateRange[1],
            currency: 'rub');
        return defaultData;
    }


  }
  List<String> formattingDateString(String str) {// 01/03/2024 - 31/03/2024
    List<String> dateRange = str.split(' - ');
    String from = DateFormat('yyyy-MM-dd').format(DateTime.utc(
      int.parse('2${dateRange[0].substring(7,10)}'),
      int.parse(dateRange[0].substring(4,5)),
      int.parse(dateRange[0].substring(1,2)),
    ));
    String to = DateFormat('yyyy-MM-dd').format(DateTime.utc(
      int.parse('2${dateRange[1].substring(7,10)}'),
      int.parse(dateRange[1].substring(4,5)),
      int.parse(dateRange[1].substring(1,2)),
    ));
    return [to, from];

  }
}