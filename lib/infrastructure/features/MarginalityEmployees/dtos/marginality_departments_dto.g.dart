// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marginality_departments_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarginalityDepartmentsDto _$$_MarginalityDepartmentsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_MarginalityDepartmentsDto(
      id: json['_id'] as String,
      name: json['name'] as String,
      marginality: json['marginality'] as int,
      margin: json['margin'] as int,
      total: json['total'] as int,
      salary: (json['salary'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MarginalityDepartmentsDtoToJson(
        _$_MarginalityDepartmentsDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'marginality': instance.marginality,
      'margin': instance.margin,
      'total': instance.total,
      'salary': instance.salary,
    };
