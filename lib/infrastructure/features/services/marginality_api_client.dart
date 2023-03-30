import 'package:dio/dio.dart';
import 'package:mobile_internship_1/infrastructure/features/MarginalityEmployees/dtos/marginality_employees_dto.dart';
import 'package:retrofit/http.dart';

part 'marginality_api_client.g.dart';

@RestApi()
abstract class MarginalityApiClient {
  factory MarginalityApiClient(
      Dio dio,
      {String baseUrl}) = _MarginalityApiClient;

  @GET('/employees')
  Future<List<MarginalityEmployeesDto>> getMarginalityEmployees(
      @Query('dateFrom') String from,
      @Query('dateTo') String to, @Query('currency') String currency);

}