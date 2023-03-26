import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_internship_1/application/marginality_bloc/marginality_bloc.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';

//Виджет для отображения маржинальности(Маржинальность проекта, Маржинальность сотрудника и т.д.)
class MarginalityList extends StatefulWidget {
  const MarginalityList({super.key});

  @override
  State<MarginalityList> createState() => _MarginalityListState();
}

class _MarginalityListState extends State<MarginalityList> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarginalityBloc, MarginalityState>(
      builder: (context, state) {
            // когда будут данные сделать state.when,вынести таблицу и поиск в отдельный виджет
            // return const BottomLoader();
            return Center(
              child: Column(
                children:[
                    const ColoredBox(
                      color: AppColors.black_5,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                            child:SizedBox(
                                height: 50,
                                width: double.infinity,
                                child:TextField(
                                    style: TextStyle(
                                        color: AppColors.gray_1,
                                        fontSize: 18
                                    ),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.white, width: 1.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.white, width: 2.0),
                                      ),
                                      hintText: 'Search by project name...',
                                      hintStyle: TextStyle(
                                          color: AppColors.gray_1,
                                          fontSize: 15
                                      ),
                                    )
                                )
                            )
                        ),
                    ),

                  ColoredBox(
                      color: AppColors.black_1,
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          textTheme: const TextTheme(
                            bodyMedium: TextStyle(
                              color:AppColors.gray_1,
                              fontSize: 13,
                            ),
                            titleSmall: TextStyle(
                              color:AppColors.gray_1,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        child:SizedBox(
                            height: 450,
                            width: double.infinity,
                            child: DataTable(
                              columns: const [
                                DataColumn(label: Text(
                                    'Название',
                                )
                                ),
                                DataColumn(label: Text(
                                    'В валюте',
                                )
                                ),
                                DataColumn(label: Text(
                                    'В проц.',
                                )
                                ),
                              ],
                              rows: const [
                                DataRow(cells: [
                                  DataCell(Text('Проект #1')),
                                  DataCell(Text('100 000 P')),
                                  DataCell(Text('100%')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Проект #2')),
                                  DataCell(Text('200 000 P')),
                                  DataCell(Text('100%')),
                                ]),
                              ],
                              sortColumnIndex: 0,
                              sortAscending: true,
                            )
                        ),
                  ),
                  )
                  ])
                );
        }
    );
  }

}