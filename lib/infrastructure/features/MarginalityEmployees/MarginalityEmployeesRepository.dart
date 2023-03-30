import 'package:injectable/injectable.dart';
import 'package:mobile_internship_1/domain/features/marginality/i_marginality_repository.dart';
import 'package:mobile_internship_1/domain/features/marginality/models/marginality_employees.dart';
import '../services/marginality_api_client.dart';

@Injectable(as: IMarginalityRepository)
class MarginalityEmployeesRepository extends IMarginalityRepository {
  final MarginalityApiClient _marginalityApiClient;
  MarginalityEmployeesRepository(this._marginalityApiClient);
  @override
  Future<List<MarginalityEmployees>> getMarginalityEmployees({required String to,
    required String from, required String currency}) async {
    final res = await _marginalityApiClient.getMarginalityEmployees(from, to, currency);
    return res.map((e) => e.toDomain()).toList();
  }

}