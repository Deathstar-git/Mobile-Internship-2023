import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../../../application/marginality_bloc/marginality_bloc.dart';
import '../../../../../application/marginality_filter_bloc/marginality_filter_bloc.dart';


class ShowMonthCalendar extends StatelessWidget {
  final String selectedMonth;
  const ShowMonthCalendar({super.key, required this.selectedMonth});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        insetPadding: const EdgeInsets.all(50),
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        child:SizedBox(
            width: 300,
            height: 300,
            child:SfDateRangePicker(
              headerStyle: const DateRangePickerHeaderStyle(
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(
                      color: AppColors.white,
                      fontSize: 20),
                  backgroundColor: AppColors.green_3
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
              selectionColor: AppColors.opaqueGreen_75,
              backgroundColor: AppColors.black_5,
              view: DateRangePickerView.year,
              allowViewNavigation: false,
              onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                context.read<MarginalityFilterBloc>().
                sharedPref.setMarginalityPeriodMonth('${DateFormat('dd/MM/yyyy').
                format(args.value)} - ${DateFormat('dd/MM/yyyy')
                    .format(DateTime.utc(args.value.year, args.value.month + 1, 0))}');
                context.read<MarginalityFilterBloc>().
                add(const MarginalityFilterEvent.valueChanged());
                context.read<MarginalityBloc>().
                add(const MarginalityEvent.newFilterSelected());
              },
              selectionMode: DateRangePickerSelectionMode.single,
            )
        )
    );
  }
}