import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/marginality_bloc/marginality_bloc.dart';
import '../../../injection.dart';
import '../../common/colors.dart';

enum Currency { ruble, dollar}

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  Currency? _currency = Currency.ruble;
  final List<String> _periods = [
  'Месяц',
  'Квартал',
  'Год'
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              'Маржинальность проекта',
              style: TextStyle(
                color: AppColors.gray_1,
                fontSize:20
              )
          ),
          backgroundColor: AppColors.black_1,
          shadowColor: Theme.of(context).colorScheme.shadow
      ),
      body:BlocProvider<MarginalityBloc>(
        create: (_) => getIt<MarginalityBloc>(),
        child: ColoredBox(
          color: AppColors.black_5,
          child:
          Column(
            children:[
              Padding(
                  padding: const EdgeInsets.only(top:20, bottom: 10),
                child:ColoredBox(
                    color: AppColors.black_1,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: Theme(
                            data: ThemeData(
                              //here change to your color
                              unselectedWidgetColor: AppColors.green_3,
                            ),
                            child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                'Валюта',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.gray_1,
                                )
                            ),
                            ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                              title: const Text(
                                  'Рубли',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.gray_1,
                                  )
                              ),
                              leading: Radio<Currency>(
                                activeColor: AppColors.green_3,
                                hoverColor: AppColors.green_3,
                                focusColor: AppColors.green_3,
                                value: Currency.ruble,
                                groupValue: _currency,
                                onChanged: (Currency? value) {
                                  setState(() {
                                    _currency = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                              title: const Text(
                                  'Доллары',
                                  style: TextStyle(
                                fontSize: 15,
                                color: AppColors.gray_1,
                              )
                              ),
                              leading: Radio<Currency>(
                                activeColor: AppColors.green_3,
                                hoverColor: AppColors.green_3,
                                focusColor: AppColors.green_3,
                                value: Currency.dollar,
                                groupValue: _currency,
                                onChanged: (Currency? value) {
                                  setState(() {
                                    _currency = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ))
                    )
                  )
                )
              ),
              Padding(
                  padding: const EdgeInsets.only( bottom: 20),
                  child: ColoredBox(
                    color: AppColors.black_1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      child:SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            const Text(
                                'Период',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.gray_1,
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:20, bottom:10, right: 40),
                            child: Row(
                              children: [
                                SizedBox(
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
                                          const Text(
                                            'Квартал',
                                            style: TextStyle(
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
                                      items: _periods
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
                                      value: _periods[0],
                                      onChanged: (value) {
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
                                ),
                                const SizedBox(
                                    width: 120,
                                    height: 40,
                                    child:Text(
                                      'Календарь',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors.gray_1
                                      )
                                  )
                                )
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
        )
    )
    );
}
}
