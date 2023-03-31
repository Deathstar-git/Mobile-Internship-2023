import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';

import '../../../../application/marginality_bloc/marginality_bloc.dart';
import '../../../../application/marginality_filter_bloc/marginality_filter_bloc.dart';

// Индикатор загрузки для infinity list'ов
class PeriodsDropdown extends StatelessWidget {
  final List<String> periods;
  final String selectedPeriod;
  const PeriodsDropdown({
    super.key,
    required this.periods,
    required this.selectedPeriod});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 120,
        height: 40,
        child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: AppColors.black_4,
            ),
            child:DropdownButtonHideUnderline(
                child: DropdownButton2(
                    customButton: Row(
                      children: [
                        Text(
                          selectedPeriod,
                          style: const TextStyle(
                              fontSize: 15,
                              color: AppColors.gray_1
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5),
                          child: SvgPicture.asset(
                            'assets/svg/arrow_downward.svg',
                            height: 16,
                            width: 16,
                          ),
                        )
                      ],
                    ),
                    items: periods
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
                    value: selectedPeriod,
                    onChanged: (value) {
                      context.read<MarginalityFilterBloc>().sharedPref.setMarginalityPeriodItem(value as String);
                      context.read<MarginalityFilterBloc>().add(const MarginalityFilterEvent.valueChanged());
                      context.read<MarginalityBloc>().add(const MarginalityEvent.fetchData());
                    },
                    buttonStyleData: ButtonStyleData(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: AppColors.black_3,
                          ),
                        )
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    )
                )
            ))
    );
  }
}