import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_internship_1/domain/features/marginality/models/marginality_employees.dart';

part 'marginality_employees_dto.freezed.dart';

part 'marginality_employees_dto.g.dart';

@freezed
class MarginalityEmployeesDto with _$MarginalityEmployeesDto{
  const factory MarginalityEmployeesDto({
    @JsonKey(name: '_id') required  String id,
    required String name,
    required int marginality,
    required int margin,
    required double volume,
    required int rate,
    required int total,
    required double salary
  }) = _MarginalityEmployeesDto;

  const MarginalityEmployeesDto._();

  factory MarginalityEmployeesDto.fromJson(Map<String, dynamic> json)
  => _$MarginalityEmployeesDtoFromJson(json);

  MarginalityEmployees toDomain() {
    return MarginalityEmployees(
        id: id,
        name: name,
        marginality: marginality,
        margin: margin,
        volume: volume,
        rate: rate,
        total: total,
        salary: salary);
  }
}


