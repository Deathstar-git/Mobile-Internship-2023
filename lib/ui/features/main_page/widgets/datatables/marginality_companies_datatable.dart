import 'package:flutter/material.dart';
import 'package:mobile_internship_1/domain/features/marginality/models/marginality_companies.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';


class MarginalityCompaniesDatatable extends StatefulWidget {
  final List<MarginalityCompanies> data;
  final String selectedMarginality;
  final String selectedCurrency;
  const MarginalityCompaniesDatatable({
    super.key,
    required this.data,
    required this.selectedMarginality,
    required this.selectedCurrency});


  @override
  State<MarginalityCompaniesDatatable> createState() => _MarginalityCompaniesDatatableState();
}
class _MarginalityCompaniesDatatableState extends State<MarginalityCompaniesDatatable> {
  bool _sortNameAsc = true;
  bool _sortMarginAsc = true;
  bool _sortMarginalityAsc = true;
  bool _sortAsc = true;
  int _sortColumnIndex = 0;
  Color _nameSelectColor = AppColors.white;
  Color _currencySelectColor = AppColors.white;
  Color _percSelectColor = AppColors.white;
  String _selectedCurrency = '';
  List<MarginalityCompanies> _data = [];
  List<MarginalityCompanies> _unfilteredData = [];
  @override
  initState() {
    super.initState();
    _selectedCurrency = widget.selectedCurrency;
    _data = List<MarginalityCompanies>.from(widget.data.take(8));
    _unfilteredData = _data;
  }

  @override
  Widget build(BuildContext context) {
    List<DataColumn> cols = [
      DataColumn(
        label:  Text('Название', style:TextStyle(
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
      int maxCellLength = 10;
      DataRow row = DataRow(cells: []);
      if (marginality.name.length > maxCellLength) {

        row.cells.add(DataCell(
            Text('${marginality.name.substring(0, maxCellLength)}...')
        )
        );
      } else {
        row.cells.add(DataCell( Text(marginality.name)));
      }
      if (marginality.margin.toString().length > maxCellLength) {
        if(_selectedCurrency == 'rub') {
          row.cells.add(DataCell(
              Text('${'${marginality.margin}'.substring(0, maxCellLength)}...₽')
          )
          );
        }
        if(_selectedCurrency == 'usd') {
          row.cells.add(DataCell(
              Text('\$${'${marginality.margin}'.substring(0, maxCellLength)}...')
          )
          );
        }
      } else {
        if (_selectedCurrency == 'rub') {
          row.cells.add(DataCell(Text('${'${marginality.margin}'}₽')));
        }
        if (_selectedCurrency == 'usd') {
          row.cells.add(DataCell(Text('\$${'${marginality.margin}'}')));
        }
      }
      if (marginality.marginality.toString().length > maxCellLength - 6) {
        row.cells.add(DataCell(
            Text('${'${marginality.marginality}'.substring(0, maxCellLength - 6)}...%')
        )
        );
      } else {
        row.cells.add(DataCell(
            Text('${'${marginality.marginality}'}%')
        )
        );
      }
      return row;
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
                                if(value.isEmpty) {
                                  _data = _unfilteredData;
                                }
                                _data = _data.where((x) => x.name.toLowerCase().
                                contains(value.toLowerCase())).toList();
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
                              hintText: 'Search by company name...',
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
                        columnSpacing: 40,
                        horizontalMargin: 15,
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