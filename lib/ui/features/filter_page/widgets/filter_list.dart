import 'package:flutter/material.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';
import 'package:mobile_internship_1/ui/features/filter_page/widgets/periods_dropdown.dart';
import 'package:mobile_internship_1/ui/features/filter_page/widgets/table_calendar.dart';



class FilterList extends StatelessWidget {
  final List<String> periods;
  final String selectedPeriod;
  final String selectedYear;
  const FilterList({super.key,
    required this.periods,
    required this.selectedPeriod,
    required this.selectedYear});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: AppColors.black_5,
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Column(
                children: const [
                  Text('Валюта',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.gray_1,
                      )
                  ),
                  //TODO: Добавить виджет выбора валюты
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ColoredBox(
                    color: AppColors.black_1,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: SizedBox(
                            width: double.infinity,
                            height: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                    'Период',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: AppColors.gray_1,
                                    )
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(top: 20, bottom: 10, right: 0),
                                    child: Row(
                                      children: [
                                        PeriodsDropdown(periods: periods, selectedPeriod: selectedPeriod),
                                        SizedBox(
                                            width: 220,
                                            height: 50,
                                            child: MarginalityTableCalendar(
                                                selectedPeriod: selectedPeriod,
                                                selectedYear: selectedYear)
                                        ),
                                      ],
                                    ))
                              ],
                            )
                        )
                    )
                )

            )
          ],
        )
    );
  }
}