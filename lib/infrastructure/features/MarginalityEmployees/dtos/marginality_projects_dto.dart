import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_internship_1/domain/features/marginality/models/marginality_projects.dart';

part 'marginality_projects_dto.freezed.dart';

part 'marginality_projects_dto.g.dart';

@freezed
class MarginalityProjectsDto with _$MarginalityProjectsDto{
  const factory MarginalityProjectsDto({
    @JsonKey(name: '_id') required  String id,
    required String name,
    required int marginality,
    required int margin,
    required int total,
    required double salary
  }) = _MarginalityProjectsDto;

  const MarginalityProjectsDto._();

  factory MarginalityProjectsDto.fromJson(Map<String, dynamic> json)
  => _$MarginalityProjectsDtoFromJson(json);

  MarginalityProjects toDomain() {
    return MarginalityProjects(
        id: id,
        name: name,
        marginality: marginality,
        margin: margin,
        total: total,
        salary: salary);
  }
}