import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../MarginalityEmployees/dtos/marginality_employees_dto.dart';
import '../MarginalityEmployees/dtos/marginality_companies_dto.dart';
import '../MarginalityEmployees/dtos/marginality_departments_dto.dart';
import '../MarginalityEmployees/dtos/marginality_projects_dto.dart';

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

  @GET('/departments')
  Future<List<MarginalityDepartmentsDto>> getMarginalityDepartments(
      @Query('dateFrom') String from,
      @Query('dateTo') String to, @Query('currency') String currency);

  @GET('/companies')
  Future<List<MarginalityCompaniesDto>> getMarginalityCompanies(
      @Query('dateFrom') String from,
      @Query('dateTo') String to, @Query('currency') String currency);

  @GET('/projects')
  Future<List<MarginalityProjectsDto>> getMarginalityProjects(
      @Query('dateFrom') String from,
      @Query('dateTo') String to, @Query('currency') String currency);

}