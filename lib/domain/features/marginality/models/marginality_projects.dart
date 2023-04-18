import 'package:freezed_annotation/freezed_annotation.dart';
part 'marginality_projects.freezed.dart';

@freezed
class MarginalityProjects with _$MarginalityProjects {
  factory MarginalityProjects({
    required final String id,
    required String name,
    required int marginality,
    required int margin,
    required int total,
    required double salary
  }) = _MarginalityProjects;
}