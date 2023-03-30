import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_internship_1/application/marginality_bloc/marginality_bloc.dart';
import 'package:mobile_internship_1/ui/features/main_page/widgets/datatables/marginality_employees_datatable.dart';

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
            companiesloaded: (selectedMarginality, data) {
              return const Text('Компании');
            }, projectsloaded: (selectedMarginality, data) {
              return const Text('Проекты');
            }, employeesloaded: (selectedMarginality, data) {
              return MarginalityEmployeesDatatable(data: data, selectedMarginality: selectedMarginality);
            }, departmentsloaded: (selectedMarginality, data) {
              return const Text('Отделы');
            }
            );
        }
    );
  }

}