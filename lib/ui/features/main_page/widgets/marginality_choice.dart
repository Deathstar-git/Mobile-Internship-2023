import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_internship_1/ui/features/main_page/widgets/marginality_choice_dropdown.dart';
import 'package:mobile_internship_1/ui/widgets/widgets.dart';
import '../../../../application/marginality_choice_bloc/marginality_choice_bloc.dart';

//Виджет для выбора маржинальности(Маржинальность проекта, Маржинальность сотрудника и т.д.)
class MarginalityChoice extends StatefulWidget {
  const MarginalityChoice({super.key});

  @override
  State<MarginalityChoice> createState() => _MarginalityChoiceState();
}

class _MarginalityChoiceState extends State<MarginalityChoice> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarginalityChoiceBloc, MarginalityChoiceState>(
        builder: (context, state) {
          return state.when(
              initial: () {
                return const Text('initialization');
              },
              loading: () {
                return const BottomLoader();
              },
              loaded: (choices, selectedValue) {
                return  MarginalityChoiceDropdown(choices: choices, selectedValue: selectedValue);
              },
              itemSelected: (choices, selectedValue) {
                return MarginalityChoiceDropdown(choices: choices, selectedValue: selectedValue);
          }
          );
        }
    );
  }

}