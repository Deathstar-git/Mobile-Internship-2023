import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_internship_1/infrastructure/features/services/marginality_api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../ui/navigation/routes.gr.dart';

@module
abstract class ServiceModule {

  @lazySingleton
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();


  final dio = Dio(BaseOptions(baseUrl: 'https://internship-2023-1.qa.aspirity.com/api'));
  @lazySingleton
  MarginalityApiClient get api_client => MarginalityApiClient(dio);

  @lazySingleton
  FlutterSecureStorage get storage => const FlutterSecureStorage();

  @lazySingleton
  AppRouter get router => AppRouter();

}