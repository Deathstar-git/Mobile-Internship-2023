import 'package:mobile_internship_1/domain/features/marginality/models/marginality_employees.dart';

class GeoStormDTO {
  final String id;
  final int marginality;
  final int margin;
  final int volume;
  final int rate;
  final int total;
  final double salary;

  GeoStormDTO.fromApi(Map<String, dynamic> map)
      : id = map['id'],
        marginality = int.parse(map['marginality']),
        margin = int.parse(map['margin']),
        volume = int.parse(map['volume']),
        rate = int.parse(map['rate']),
        total = int.parse(map['rate']),
        salary = double.parse(map['salary']);
}

extension GeoStormMapper on GeoStormDTO {
  MarginalityEmployees toModel() {
    return MarginalityEmployees(
        id: id,
        marginality: marginality,
        margin: margin,
        volume: volume,
        rate: rate,
        total: total,
        salary: salary);
  }
}