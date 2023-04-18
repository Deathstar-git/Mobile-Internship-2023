import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_internship_1/ui/features/filter_page/widgets/filter_list.dart';
import '../../../application/marginality_filter_bloc/marginality_filter_bloc.dart';
import '../../common/colors.dart';
import '../../widgets/bottom_loader.dart';


class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarginalityFilterBloc, MarginalityFilterState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                  title: Text(
                      context.read<MarginalityFilterBloc>().getCurrentSelectedItem(),
                      style: const TextStyle(
                          color: AppColors.gray_1,
                          fontSize:16
                      )
                  ),
                  backgroundColor: AppColors.black_1,
                  shadowColor: Theme.of(context).colorScheme.shadow
              ),
              body: state.when(
                  initial: () {
                    return const Text('initialization');
                  },
                  loading: () {
                    return const BottomLoader();
                  },
                  loaded: (periods, selectedPeriod, selectedYear, selectedMonth, selectedCurrency) {
                    return FilterList(periods: periods,
                        selectedPeriod:  selectedPeriod,
                        selectedYear: selectedYear,
                        selectedMonth: selectedMonth,
                        selectedCurrency: selectedCurrency);
                  },
                  itemSelected: (periods, selectedPeriod, selectedYear, selectedMonth, selectedCurrency) {
                    return FilterList(periods: periods,
                        selectedPeriod:  selectedPeriod,
                        selectedYear: selectedYear,
                        selectedMonth: selectedMonth,
                        selectedCurrency: selectedCurrency);
                  }
              )
          );
        }
    );
  }
}

