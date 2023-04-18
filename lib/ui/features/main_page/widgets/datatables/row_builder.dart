import 'package:flutter/material.dart';

//Должен возвращать лист из DataRow,но еще не успел додумать как
Iterable<DataRow> rowBuilder(dynamic marginalityData, String selectedCurrency) {
  var rows = marginalityData.map((marginality) {
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
      if(selectedCurrency == 'rub') {
        row.cells.add(DataCell(
            Text('${'${marginality.margin}'.substring(0, maxCellLength)}...₽')
        )
        );
      }
      if(selectedCurrency == 'usd') {
        row.cells.add(DataCell(
            Text('\$${'${marginality.margin}'.substring(0, maxCellLength)}...')
        )
        );
      }
    } else {
      if (selectedCurrency == 'rub') {
        row.cells.add(DataCell(Text('${'${marginality.margin}'}₽')));
      }
      if (selectedCurrency == 'usd') {
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
  });
  return rows;
}
