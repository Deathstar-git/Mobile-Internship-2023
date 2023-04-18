// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marginality_companies_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarginalityCompaniesDto _$$_MarginalityCompaniesDtoFromJson(
        Map<String, dynamic> json) =>
    _$_MarginalityCompaniesDto(
      id: json['_id'] as String,
      name: json['name'] as String,
      marginality: json['marginality'] as int,
      margin: json['margin'] as int,
      total: json['total'] as int,
      salary: (json['salary'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MarginalityCompaniesDtoToJson(
        _$_MarginalityCompaniesDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'marginality': instance.marginality,
      'margin': instance.margin,
      'total': instance.total,
      'salary': instance.salary,
    };
