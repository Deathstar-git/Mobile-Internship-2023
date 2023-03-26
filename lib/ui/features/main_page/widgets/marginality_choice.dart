import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';
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
                return ColoredBox(
                    color: AppColors.black_5,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: SizedBox(
                            width: 390,
                            height: 40,
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                canvasColor: AppColors.black_4,
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  customButton: Row(
                                    children: [
                                      Text(
                                        selectedValue,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            color: AppColors.gray_1
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:5),
                                        child: SvgPicture.asset(
                                          'assets/svg/arrow_downward.svg',
                                          height: 20,
                                          width: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                  items: choices
                                      .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: AppColors.gray_1,
                                      ),
                                    ),
                                  ))
                                      .toList(),
                                  value: selectedValue,
                                  onChanged: (value) {
                                    context.read<MarginalityChoiceBloc>().sharedPref.setMarginalityChoice(value as String);
                                    context.read<MarginalityChoiceBloc>().add(const MarginalityChoiceEvent.valueChanged());
                                  },
                                  buttonStyleData: const ButtonStyleData(
                                    height: 40,
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    height: 40,
                                  ),
                                ),
                              ),
                            )
                        )
                    ));
              },
              itemSelected: (choices, selectedValue) {
                return ColoredBox(
                color: AppColors.black_5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: SizedBox(
                    width: 390,
                    height: 40,
                    child: Theme(
                        data: Theme.of(context).copyWith(
                        canvasColor: AppColors.black_4,
                    ),
                    child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      customButton: Row(
                        children: [
                          Text(
                            selectedValue,
                            style: const TextStyle(
                              fontSize: 20,
                              color: AppColors.gray_1
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:5),
                            child: SvgPicture.asset(
                                'assets/svg/arrow_downward.svg',
                              height: 20,
                              width: 20,
                            ),
                          )
                        ],
                      ),
                      items: choices
                          .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.gray_1,
                          ),
                        ),
                      ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        context.read<MarginalityChoiceBloc>().sharedPref.setMarginalityChoice(value as String);
                        context.read<MarginalityChoiceBloc>().add(const MarginalityChoiceEvent.valueChanged());
                      },
                      buttonStyleData: const ButtonStyleData(
                        height: 40,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                )
              )
          ));
          }
          );
        }
    );
  }

}