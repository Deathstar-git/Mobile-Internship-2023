// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marginality_projects_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarginalityProjectsDto _$$_MarginalityProjectsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_MarginalityProjectsDto(
      id: json['_id'] as String,
      name: json['name'] as String,
      marginality: json['marginality'] as int,
      margin: json['margin'] as int,
      total: json['total'] as int,
      salary: (json['salary'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MarginalityProjectsDtoToJson(
        _$_MarginalityProjectsDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'marginality': instance.marginality,
      'margin': instance.margin,
      'total': instance.total,
      'salary': instance.salary,
    };
