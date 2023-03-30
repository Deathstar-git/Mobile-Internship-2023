import 'package:mobile_internship_1/domain/features/marginality/models/marginality_departments.dart';
import 'package:mobile_internship_1/domain/features/marginality/models/marginality_employees.dart';
import 'models/marginality_companies.dart';
import 'models/marginality_projects.dart';

abstract class IMarginalityRepository {
  Future<List<MarginalityEmployees>> getMarginalityEmployees({
    required String from,
    required String to,
    required String currency
    });
  Future<List<MarginalityCompanies>> getMarginalityCompanies({
    required String from,
    required String to,
    required String currency
  });
  Future<List<MarginalityProjects>> getMarginalityProjects({
    required String from,
    required String to,
    required String currency
  });
  Future<List<MarginalityDepartments>> getMarginalityDepartments({
    required String from,
    required String to,
    required String currency
  });
}