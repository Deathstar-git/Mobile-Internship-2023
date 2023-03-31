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
  String selectedMarginality = '';
  String selectedPeriod = '';
  String selectedCurrency = '';
  List<MarginalityEmployees> employeesData = [];
  List<MarginalityProjects> projectsData = [];
  List<MarginalityDepartments> departmentsData = [];
  List<MarginalityCompanies> companiesData = [];


  List<String> formattingDateString(String str) {// 01/03/2024 - 31/03/2023
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

  void _fetchCurrentFiltredData() async{
    selectedMarginality = sharedPref.getMarginalityChoice();
    selectedPeriod = sharedPref.getMarginalityPeriodItem();
    selectedCurrency = sharedPref.getMarginalityCurrency();
    String selectedDate = '';
    switch (selectedPeriod) {
      case 'Год':
        selectedDate = sharedPref.getMarginalityPeriodYear();
        break;
      case 'Месяц':
        selectedDate = sharedPref.getMarginalityPeriodMonth();
        break;
    }
    List<String> selectedDateRange = formattingDateString(selectedDate);
    switch(selectedMarginality) {
      case 'Маржинальность сотрудников':
        employeesData =  await repository.getMarginalityEmployees(
            to: selectedDateRange[0],
            from: selectedDateRange[1],
            currency: selectedCurrency);
        break;
      case 'Маржинальность проекта':
        projectsData =  await repository.getMarginalityProjects(
            to: selectedDateRange[0],
            from: selectedDateRange[1],
            currency: selectedCurrency);
        break;
      case 'Маржинальность отдела':
        departmentsData =  await repository.getMarginalityDepartments(
            to: selectedDateRange[0],
            from: selectedDateRange[1],
            currency: selectedCurrency);
        break;
      case 'Маржинальность компании':
        companiesData =  await repository.getMarginalityCompanies(
            to: selectedDateRange[0],
            from: selectedDateRange[1],
            currency: selectedCurrency);
        break;
    }

  }
  Future<void> _onFetchData(
      FetchData event,
      Emitter<MarginalityState> emit,
      ) async {
    emit(const _Loading());
    _fetchCurrentFiltredData();
    switch(selectedMarginality) {
      case 'Маржинальность сотрудников':
          emit(_EmployeesLoaded(selectedCurrency, selectedMarginality, employeesData));
        break;
      case 'Маржинальность проекта':
          emit(_ProjectsLoaded(selectedCurrency, selectedMarginality, projectsData));
        break;
      case 'Маржинальность отдела':
          emit(_DepartmentsLoaded(selectedCurrency, selectedMarginality, departmentsData));
        break;
      case 'Маржинальность компании':
          emit(_CompaniesLoaded(selectedCurrency,selectedMarginality, companiesData));
        break;
    }
  }
  MarginalityBloc(this.repository, this.sharedPref) : super(const MarginalityState.initial()) {
    on<MarginalityEvent>((event, emit) async{
      await event.map(fetchData: (fetchData) => _onFetchData(fetchData, emit));
      },
        transformer: sequential());
  }

}