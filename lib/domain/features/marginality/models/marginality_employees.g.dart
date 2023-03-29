// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marginality_employees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarginalityEmployees _$$_MarginalityEmployeesFromJson(
        Map<String, dynamic> json) =>
    _$_MarginalityEmployees(
      id: json['id'] as String,
      marginality: json['marginality'] as int,
      margin: json['margin'] as int,
      volume: json['volume'] as int,
      rate: json['rate'] as int,
      total: json['total'] as int,
      salary: (json['salary'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MarginalityEmployeesToJson(
        _$_MarginalityEmployees instance) =>
    <String, dynamic>{
      'id': instance.id,
      'marginality': instance.marginality,
      'margin': instance.margin,
      'volume': instance.volume,
      'rate': instance.rate,
      'total': instance.total,
      'salary': instance.salary,
    };
