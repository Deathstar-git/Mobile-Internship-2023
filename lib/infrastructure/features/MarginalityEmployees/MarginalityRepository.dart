import 'package:injectable/injectable.dart';
import 'package:mobile_internship_1/domain/features/marginality/i_marginality_repository.dart';
import 'package:mobile_internship_1/domain/features/marginality/models/marginality_companies.dart';
import 'package:mobile_internship_1/domain/features/marginality/models/marginality_departments.dart';
import 'package:mobile_internship_1/domain/features/marginality/models/marginality_employees.dart';
import '../../../domain/features/marginality/models/marginality_projects.dart';
import '../services/marginality_api_client.dart';

@Injectable(as: IMarginalityRepository)
class MarginalityRepository extends IMarginalityRepository {
  final MarginalityApiClient _marginalityApiClient;
  MarginalityRepository(this._marginalityApiClient);
  @override
  Future<List<MarginalityEmployees>> getMarginalityEmployees({required String to,
    required String from, required String currency}) async {
    final res = await _marginalityApiClient.getMarginalityEmployees(from, to, currency);
    return res.map((e) => e.toDomain()).toList();
  }
  @override
  Future<List<MarginalityProjects>> getMarginalityProjects({required String to,
    required String from, required String currency}) async {
    final res = await _marginalityApiClient.getMarginalityProjects(from, to, currency);
    return res.map((e) => e.toDomain()).toList();
  }
  @override
  Future<List<MarginalityDepartments>> getMarginalityDepartments({required String to,
    required String from, required String currency}) async {
    final res = await _marginalityApiClient.getMarginalityDepartments(from, to, currency);
    return res.map((e) => e.toDomain()).toList();
  }
  @override
  Future<List<MarginalityCompanies>> getMarginalityCompanies({required String to,
    required String from, required String currency}) async {
    final res = await _marginalityApiClient.getMarginalityCompanies(from, to, currency);
    return res.map((e) => e.toDomain()).toList();
  }

}