import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/features/marginality/models/marginality_departments.dart';

part 'marginality_departments_dto.freezed.dart';

part 'marginality_departments_dto.g.dart';

@freezed
class MarginalityDepartmentsDto with _$MarginalityDepartmentsDto{
  const factory MarginalityDepartmentsDto({
    @JsonKey(name: '_id') required  String id,
    required String name,
    required int marginality,
    required int margin,
    required int total,
    required double salary
  }) = _MarginalityDepartmentsDto;

  const MarginalityDepartmentsDto._();

  factory MarginalityDepartmentsDto.fromJson(Map<String, dynamic> json)
  => _$MarginalityDepartmentsDtoFromJson(json);

  MarginalityDepartments toDomain() {
    return MarginalityDepartments(
        id: id,
        name: name,
        marginality: marginality,
        margin: margin,
        total: total,
        salary: salary);
  }
}