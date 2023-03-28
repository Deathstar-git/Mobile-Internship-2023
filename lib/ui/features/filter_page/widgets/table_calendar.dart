import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../application/marginality_filter_bloc/marginality_filter_bloc.dart';

class MarginalityTableCalendar extends StatelessWidget {
  final String selectedPeriod;
  final String selectedYear;

  const MarginalityTableCalendar({
    super.key,
    required this.selectedPeriod, required this.selectedYear});
  //TODO: Реализовать выбор месяца и квартала аналогично,вынести в отдельный виджет
  void _pickYear(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => Dialog(
          insetPadding: const EdgeInsets.all(50),
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          child:SizedBox(
              width: 300,
              height: 300,
              child:SfDateRangePicker(
                headerStyle: const DateRangePickerHeaderStyle(
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(color: AppColors.white),
                ),
                yearCellStyle: const DateRangePickerYearCellStyle(
                  textStyle: TextStyle(color: AppColors.white),
                  leadingDatesTextStyle: TextStyle(color: AppColors.white),
                  todayTextStyle: TextStyle(color: AppColors.white),
                ),
                toggleDaySelection: false,
                todayHighlightColor: AppColors.green_3,
                selectionTextStyle: const TextStyle(color: AppColors.white),
                rangeTextStyle: const TextStyle(color: AppColors.white),
                startRangeSelectionColor: AppColors.green_3,
                endRangeSelectionColor: AppColors.green_3,
                backgroundColor: AppColors.black_5,
                view: DateRangePickerView.decade,
                allowViewNavigation: false,
                onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                  if (args.value.endDate == null) {
                    context.read<MarginalityFilterBloc>().
                    sharedPref.setMarginalityPeriodYear(
                        '${DateFormat('dd/MM/yyyy').
                        format(args.value.startDate)} - ${DateFormat('dd/MM/yyyy')
                            .format(DateTime(args.value.startDate.year, 12, 31))}');
                  }else{
                    context.read<MarginalityFilterBloc>().
                    sharedPref.setMarginalityPeriodYear(
                        '${DateFormat('dd/MM/yyyy').
                        format(args.value.startDate)} - ${DateFormat('dd/MM/yyyy')
                            .format(args.value.endDate ?? args.value.startDate)}');
                  }
                  context.read<MarginalityFilterBloc>().
                  add(const MarginalityFilterEvent.valueChanged());
                },
                selectionMode: DateRangePickerSelectionMode.range,
                // showActionButtons: true,
                // onCancel: () {
                //   Navigator.pop(context);
                // },
                // onSubmit: (Object? value) {
                //   Navigator.pop(context);
                // },
              )
          )
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    //может поменять на switch case, а то как-то несолидно
    if (selectedPeriod == 'Год'){

      return OutlinedButton(
        onPressed: () {
          _pickYear(context);
        },
        child: Text(selectedYear),
      );
    } else {
      return const Text('Затычка');
  }


  }
}