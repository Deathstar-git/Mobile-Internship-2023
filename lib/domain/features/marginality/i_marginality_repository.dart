import 'package:mobile_internship_1/domain/features/marginality/models/marginality_employees.dart';

abstract class IMarginalityRepository {
  Future<List<MarginalityEmployees>> getMarginalityEmployees({
    required String from,
    required String to,
    required String currency
    });
}