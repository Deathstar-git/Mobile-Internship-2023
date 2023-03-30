import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';

import '../../../../application/marginality_bloc/marginality_bloc.dart';
import '../../../../application/marginality_filter_bloc/marginality_filter_bloc.dart';

enum Currency {ruble, dollar}
// Radio button для валют
class CurrencyRadio extends StatefulWidget {
  final Currency selectedCurrency;
  const CurrencyRadio(
      {super.key,
        required this.selectedCurrency});

  @override
  State<CurrencyRadio> createState() => _CurrencyRadioState();
}

class _CurrencyRadioState extends State<CurrencyRadio> {
  Currency? _currency = Currency.ruble;

  @override
  initState() {
    super.initState();
    _currency = widget.selectedCurrency;
  }
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
                            groupValue: _currency,
                            onChanged: (Currency? value) {
                              setState(() {
                                _currency = value;
                              });
                              context.read<MarginalityFilterBloc>().
                              sharedPref.setMarginalityCurrency('rub');
                              context.read<MarginalityFilterBloc>().
                              add(const MarginalityFilterEvent.valueChanged());
                              context.read<MarginalityBloc>().
                              add(const MarginalityEvent.newFilterSelected());
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
                              context.read<MarginalityFilterBloc>().
                              sharedPref.setMarginalityCurrency('usd');
                              context.read<MarginalityFilterBloc>().
                              add(const MarginalityFilterEvent.valueChanged());
                              context.read<MarginalityBloc>().
                              add(const MarginalityEvent.newFilterSelected());
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