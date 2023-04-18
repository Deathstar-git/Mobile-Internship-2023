import 'package:freezed_annotation/freezed_annotation.dart';
part 'marginality_departments.freezed.dart';

@freezed
class MarginalityDepartments with _$MarginalityDepartments {
  factory MarginalityDepartments({
    required final String id,
    required String name,
    required int marginality,
    required int margin,
    required int total,
    required double salary
  }) = _MarginalityDepartments;
}