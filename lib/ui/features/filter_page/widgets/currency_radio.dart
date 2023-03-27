import 'package:flutter/material.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';

enum Currency {ruble, dollar}
// Radio button для валют
class CurrencyRadio extends StatelessWidget {
  final Currency selectedCurrency;

  const CurrencyRadio({super.key,
    required this.selectedCurrency});

  @override
  Widget build(BuildContext context) {
    return  ColoredBox(
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
                            groupValue: selectedCurrency,
                            onChanged: (Currency? value) {

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
                            groupValue: selectedCurrency,
                            onChanged: (Currency? value) {

                            },
                          ),
                        ),
                      ],
                    ))
            )
        )
    );
  }
}