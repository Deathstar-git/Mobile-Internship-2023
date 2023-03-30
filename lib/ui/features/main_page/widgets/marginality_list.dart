import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_internship_1/application/marginality_bloc/marginality_bloc.dart';
import 'package:mobile_internship_1/ui/features/main_page/widgets/datatables/marginality_companies_datatable.dart';
import 'package:mobile_internship_1/ui/features/main_page/widgets/datatables/marginality_departments_datatable.dart';
import 'package:mobile_internship_1/ui/features/main_page/widgets/datatables/marginality_employees_datatable.dart';
import 'package:mobile_internship_1/ui/features/main_page/widgets/datatables/marginality_projects_datatable.dart';

import '../../../widgets/bottom_loader.dart';

//Виджет для отображения маржинальности(Маржинальность проекта, Маржинальность сотрудника и т.д.)
class MarginalityList extends StatefulWidget {
  const MarginalityList({super.key});

  @override
  State<MarginalityList> createState() => _MarginalityListState();
}

class _MarginalityListState extends State<MarginalityList> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarginalityBloc, MarginalityState>(
      builder: (context, state) {
        return state.when(
            initial: () {
              return const BottomLoader();
            },
            loading: () {
              return const BottomLoader();
            },
            companiesloaded: (selectedCurrency, selectedMarginality, data) {
              return MarginalityCompaniesDatatable(data: data,
                  selectedMarginality: selectedMarginality,
                  selectedCurrency: selectedCurrency);
            }, projectsloaded: (selectedCurrency, selectedMarginality, data) {
              return MarginalityProjectsDatatable(data: data,
                  selectedMarginality: selectedMarginality,
                  selectedCurrency: selectedCurrency);
            }, employeesloaded: (selectedCurrency, selectedMarginality, data) {
              return MarginalityEmployeesDatatable(data: data,
                  selectedMarginality: selectedMarginality,
                  selectedCurrency: selectedCurrency);
            }, departmentsloaded: (selectedCurrency, selectedMarginality, data) {
              return MarginalityDepartmentsDatatable(data: data,
                  selectedMarginality: selectedMarginality,
                  selectedCurrency: selectedCurrency);
            }
            );
        }
    );
  }

}