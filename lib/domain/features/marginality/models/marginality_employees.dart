import 'package:freezed_annotation/freezed_annotation.dart';
part 'marginality_employees.freezed.dart';

@freezed
class MarginalityEmployees with _$MarginalityEmployees {
  factory MarginalityEmployees({
    required final String id,
    required String name,
    required int marginality,
    required int margin,
    required double volume,
    required int rate,
    required int total,
    required double salary
  }) = _MarginalityEmployees;
}