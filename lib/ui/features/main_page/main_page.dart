import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_internship_1/application/marginality_bloc/marginality_bloc.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';
import 'package:mobile_internship_1/ui/features/main_page/widgets/marginality_list.dart';
import '../../../injection.dart';
//Главная страница
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text('Marginality',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gray_1)
              )
          ),
          backgroundColor: AppColors.black_1,
      ),
      body: Column(
        children: [
            BlocProvider(
            create: (_) => getIt<MarginalityBloc>(),
            child: const MarginalityList(),
          ),
        ])
    );
  }
}