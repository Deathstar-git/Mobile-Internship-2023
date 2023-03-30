// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marginality_employees_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarginalityEmployeesDto _$$_MarginalityEmployeesDtoFromJson(
        Map<String, dynamic> json) =>
    _$_MarginalityEmployeesDto(
      id: json['_id'] as String,
      name: json['name'] as String,
      marginality: json['marginality'] as int,
      margin: json['margin'] as int,
      volume: (json['volume'] as num).toDouble(),
      rate: json['rate'] as int,
      total: json['total'] as int,
      salary: (json['salary'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MarginalityEmployeesDtoToJson(
        _$_MarginalityEmployeesDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'marginality': instance.marginality,
      'margin': instance.margin,
      'volume': instance.volume,
      'rate': instance.rate,
      'total': instance.total,
      'salary': instance.salary,
    };
