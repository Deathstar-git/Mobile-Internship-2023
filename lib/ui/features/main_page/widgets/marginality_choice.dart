import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                return Center(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      hint: Text(
                        selectedValue,
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: choices
                          .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        context.read<MarginalityChoiceBloc>().add(MarginalityChoiceEvent.valueChanged(value as String));
                      },
                      buttonStyleData: const ButtonStyleData(
                        height: 40,
                        width: 300,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                );
              },
              itemSelected: (choices, selectedValue) {
                return Center(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      hint: Text(
                        selectedValue,
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: choices
                          .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        context.read<MarginalityChoiceBloc>().add(MarginalityChoiceEvent.valueChanged(value as String));
                      },
                      buttonStyleData: const ButtonStyleData(
                        height: 40,
                        width: 300,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                );
          }
          );
        }
    );
  }

}