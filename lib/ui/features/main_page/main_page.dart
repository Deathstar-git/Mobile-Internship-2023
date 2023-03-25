import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_internship_1/application/marginality_bloc/marginality_bloc.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';
import 'package:mobile_internship_1/ui/features/main_page/widgets/marginality_choice.dart';
import 'package:mobile_internship_1/ui/features/main_page/widgets/marginality_list.dart';
import '../../../application/marginality_choice_bloc/marginality_choice_bloc.dart';
import '../../../injection.dart';
import 'package:flutter_svg/flutter_svg.dart';
//Главная страница
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.black_1,
          title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  SvgPicture.asset(
                      'assets/svg/logo.svg',
                      semanticsLabel: 'Marginality Logo'
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child:  Text('Marginality',
                        style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.gray_1)
                    )
                  )
                 
                ]
              ),
          ),

      body: MultiBlocProvider(
        providers: [
          BlocProvider<MarginalityBloc>(
              create: (_) => getIt<MarginalityBloc>(),
          ),
          BlocProvider<MarginalityChoiceBloc>(
              create: (_) => getIt<MarginalityChoiceBloc>()..add(const MarginalityChoiceEvent.started()),
          ),
        ],
        child: Column(children: const [
          SizedBox(
            height: 100,
            child: MarginalityChoice()
          ),
          SizedBox(
            height: 100,
            child:MarginalityList()
          )
        ],),
      ),
      // create: (_) => getIt<MarginalityBloc>(),
    );
  }
}