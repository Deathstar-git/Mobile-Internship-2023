import 'package:flutter/material.dart';
import 'package:mobile_internship_1/domain/features/marginality/models/marginality_employees.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';


class MarginalityEmployeesDatatable extends StatefulWidget {
  final List<MarginalityEmployees> data;
  final String selectedMarginality;
  const MarginalityEmployeesDatatable({
    super.key,
    required this.data,
    required this.selectedMarginality});


  @override
  State<MarginalityEmployeesDatatable> createState() => _MarginalityEmployeesDatatableState();
}
class _MarginalityEmployeesDatatableState extends State<MarginalityEmployeesDatatable> {
  bool _sortNameAsc = true;
  bool _sortMarginAsc = true;
  bool _sortMarginalityAsc = true;
  bool _sortAsc = true;
  int _sortColumnIndex = 0;
  Color _nameSelectColor = AppColors.white;
  Color _currencySelectColor = AppColors.white;
  Color _percSelectColor = AppColors.white;
  List<MarginalityEmployees> _data = [];
  @override
  initState() {
    super.initState();
    _data = List<MarginalityEmployees>.from(widget.data);
  }
  @override
  Widget build(BuildContext context) {
    List<DataColumn> cols = [
      DataColumn(
        label:  Text('Имя', style:TextStyle(
            color:_nameSelectColor
          )
        ),
        onSort: (columnIndex, sortAscending) {
          setState(() {
            if (columnIndex == _sortColumnIndex) {
              _nameSelectColor = AppColors.green_3;
              _sortAsc = _sortNameAsc = sortAscending;
            } else {
              _nameSelectColor = AppColors.green_3;
              _sortColumnIndex = columnIndex;
              _sortAsc = _sortNameAsc;
            }
            _data.sort((a, b) => a.name.compareTo(b.name));
            if (!_sortAsc) {
              _nameSelectColor = AppColors.white;
              _data = _data.reversed.toList();
            }
          });
        },
      ),
      DataColumn(
        label:  Text('В валюте',
            style: TextStyle(color: _currencySelectColor,
          )
        ),
        onSort: (columnIndex, sortAscending) {
          setState(() {

            if (columnIndex == _sortColumnIndex) {
              _currencySelectColor = AppColors.green_3;
              _sortAsc = _sortMarginAsc = sortAscending;
            } else {
              _currencySelectColor = AppColors.green_3;
              _sortColumnIndex = columnIndex;
              _sortAsc = _sortMarginAsc;
            }
            _data.sort((a, b) => a.margin.compareTo(b.margin));
            if (!sortAscending) {
              _currencySelectColor = AppColors.white;
              _data = _data.reversed.toList();
            }
          });
        },
      ),
      DataColumn(
        label:  Text('В проц.',
            style: TextStyle(color: _percSelectColor
          )
        ),
        onSort: (columnIndex, sortAscending) {
          setState(() {
            if (columnIndex == _sortColumnIndex) {
              _percSelectColor = AppColors.green_3;
              _sortAsc = _sortMarginalityAsc = sortAscending;
            } else {
              _percSelectColor = AppColors.green_3;
              _sortColumnIndex = columnIndex;
              _sortAsc = _sortMarginalityAsc;
            }
            _data.sort((a, b) => a.marginality.compareTo(b.marginality));
            if (!sortAscending) {
              _percSelectColor = AppColors.white;
              _data = _data.reversed.toList();
            }
          });
        },
      ),
    ];
    var rows = _data.map((marginality) {
      return DataRow(cells: [
        DataCell( Text(marginality.name)),
        DataCell( Text('${marginality.margin}')),
        DataCell( Text('${marginality.marginality}%')),
      ]);
    });
    return Center(
        child: Column(
            children:[
              ColoredBox(
                color: AppColors.black_5,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child:SizedBox(
                        height: 50,
                        width: double.infinity,
                        child:TextField(
                          onChanged: (value) {
                            setState(() {
                              _data.where((x) => x.name.contains(value));
                            });
                          },
                            style: const TextStyle(
                                color: AppColors.gray_1,
                                fontSize: 18
                            ),
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.white, width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.white, width: 2.0),
                              ),
                              hintText: 'Search by employee name...',
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
                        columnSpacing: 15.0,
                        horizontalMargin: 0,
                        columns: cols,
                        rows: rows.toList(),
                        sortColumnIndex: _sortColumnIndex,
                        sortAscending: _sortAsc,
                      )
                  ),
                ),
              )
            ])
    );

  }


}