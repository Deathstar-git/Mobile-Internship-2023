import 'package:freezed_annotation/freezed_annotation.dart';
part 'marginality_employees.freezed.dart';

part 'marginality_employees.g.dart';

@freezed
class MarginalityEmployees with _$MarginalityEmployees {
  factory MarginalityEmployees({
    required final String id,
    required int marginality,
    required int margin,
    required int volume,
    required int rate,
    required int total,
    required double salary
  }) = _MarginalityEmployees;
  factory MarginalityEmployees.fromJson(Map<String, dynamic> json)
  => _$MarginalityEmployeesFromJson(json);
}