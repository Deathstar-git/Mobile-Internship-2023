import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/features/marginality/models/marginality_companies.dart';

part 'marginality_companies_dto.freezed.dart';

part 'marginality_companies_dto.g.dart';

@freezed
class MarginalityCompaniesDto with _$MarginalityCompaniesDto{
  const factory MarginalityCompaniesDto({
    @JsonKey(name: '_id') required  String id,
    required String name,
    required int marginality,
    required int margin,
    required int total,
    required double salary
  }) = _MarginalityCompaniesDto;

  const MarginalityCompaniesDto._();

  factory MarginalityCompaniesDto.fromJson(Map<String, dynamic> json)
  => _$MarginalityCompaniesDtoFromJson(json);

  MarginalityCompanies toDomain() {
    return MarginalityCompanies(
        id: id,
        name: name,
        marginality: marginality,
        margin: margin,
        total: total,
        salary: salary);
  }
}