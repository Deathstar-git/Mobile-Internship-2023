import 'package:flutter/material.dart';
import 'package:mobile_internship_1/ui/features/filter_page/widgets/calendars/show_year_calendar.dart';
import 'package:intl/intl.dart'; // for date format
import 'package:intl/date_symbol_data_local.dart';
import '../../../common/colors.dart';
import 'calendars/show_month_calendar.dart';

class MarginalityTableCalendar extends StatelessWidget {
  final String selectedPeriod;
  final String selectedYear;
  final String selectedMonth;
  // final String selectedMonth;

  const MarginalityTableCalendar({
    super.key,
    required this.selectedPeriod,
    required this.selectedYear,
    required this.selectedMonth});
  //TODO: Реализовать выбор месяца и квартала аналогично,вынести в отдельный виджет
  String _convertDateMonthtoString(String str) { // 01/06/2023 - 30/06/2023
    initializeDateFormatting('ru');
    return DateFormat.yMMMM('ru').format(DateTime.utc(
         int.parse('2${str.substring(7, 10)}'),
        int.parse(str.substring(4, 5)),
        int.parse(str.substring(1, 2))
      )
    );
  }
  String _convertDateYeartoString(String str) {
    initializeDateFormatting('ru');
    return DateFormat.y('ru').format(DateTime.utc(
        int.parse('2${str.substring(7, 10)}'),
        int.parse(str.substring(4, 5)),
        int.parse(str.substring(1, 2))
    )
    );
  }
  void _pickYear(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => ShowYearCalendar(selectedYear: selectedYear)
    );
  }
  void _pickMonth(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => ShowMonthCalendar(selectedMonth: selectedMonth)
    );
  }
  @override
  Widget build(BuildContext context) {
    //может поменять на switch case, а то как-то несолидно
    switch (selectedPeriod) {
      case 'Год':
        return OutlinedButton(
          onPressed: () {
            _pickYear(context);
          },
          child: Text(
              _convertDateYeartoString(selectedYear),
              style: const TextStyle(
                  color:AppColors.gray_1)
          )
        );
      case 'Месяц':
        return OutlinedButton(
          onPressed: () {
            _pickMonth(context);
          },
          child: Text(
              _convertDateMonthtoString(selectedMonth),
              style: const TextStyle(
                  color:AppColors.gray_1)
          )
        );
      default:
        return const Text('Штош');

    }
  }
}