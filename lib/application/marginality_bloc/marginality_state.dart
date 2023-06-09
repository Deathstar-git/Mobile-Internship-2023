part of 'marginality_bloc.dart';

@freezed
class MarginalityState with _$MarginalityState {
  const factory MarginalityState.initial() = _Initial;
  const factory MarginalityState.loading() = _Loading;
  const factory MarginalityState.projectsloaded(
      String selectedCurrency,
      String selectedMarginality,
      List<MarginalityProjects> data) = _ProjectsLoaded;
  const factory MarginalityState.employeesloaded(
      String selectedCurrency,
      String selectedMarginality,
      List<MarginalityEmployees> data) = _EmployeesLoaded;
  const factory MarginalityState.departmentsloaded(
      String selectedCurrency,
      String selectedMarginality,
      List<MarginalityDepartments> data) = _DepartmentsLoaded;
  const factory MarginalityState.companiesloaded(
      String selectedCurrency,
      String selectedMarginality,
      List<MarginalityCompanies> data) = _CompaniesLoaded;
}