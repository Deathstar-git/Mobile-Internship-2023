import 'package:freezed_annotation/freezed_annotation.dart';
part 'marginality_companies.freezed.dart';

@freezed
class MarginalityCompanies with _$MarginalityCompanies{
  factory MarginalityCompanies({
    required final String id,
    required String name,
    required int marginality,
    required int margin,
    required int total,
    required double salary
  }) = _MarginalityCompanies;
}