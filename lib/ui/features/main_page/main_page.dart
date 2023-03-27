import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';
import 'package:mobile_internship_1/ui/features/main_page/widgets/marginality_choice.dart';
import 'package:mobile_internship_1/ui/features/main_page/widgets/marginality_list.dart';
import 'package:mobile_internship_1/ui/navigation/routes.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';
//Главная страница
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //избегание overflow при появлении клавиатуры
      appBar: AppBar(
          backgroundColor: AppColors.black_1,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.density_medium_rounded, color: AppColors.gray_2),
            tooltip: 'Меню',
            onPressed: () {
            },
          ),
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
          actions: [
            IconButton(
              icon: const Icon(Icons.filter_alt, color: AppColors.gray_2),
              tooltip: 'Фильтры',
              onPressed: () {
                context.router.push(const FilterRoute());
              },
            ),
          ],
          ),

      body:Column(children: const [
          SizedBox(
            height: 60,
            child: MarginalityChoice()
          ),
          SizedBox(
            height: 550,
            child:MarginalityList()
          )
        ],
      ),
      // create: (_) => getIt<MarginalityBloc>(),
    );
  }
}