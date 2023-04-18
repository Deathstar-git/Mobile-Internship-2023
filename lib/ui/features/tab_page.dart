import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import '../common/colors.dart';
import '../navigation/routes.gr.dart';
class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        MainRoute(),
        EmptyRoute(),
      ],
      // animationDuration: const Duration(milliseconds: 2000),
      // animationCurve: Curves.slowMiddle,
      resizeToAvoidBottomInset: false,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          // type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.gray_2,
          unselectedItemColor: AppColors.gray_2,
          backgroundColor: AppColors.black_1,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.currency_ruble_rounded,
                  color:AppColors.gray_2),
              label: 'Маржинальность',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesome5.chart_line,
                  color:AppColors.gray_2),
              label: 'ЗП/Выручка',
            ),
          ],
        );
      },
    );
  }
}