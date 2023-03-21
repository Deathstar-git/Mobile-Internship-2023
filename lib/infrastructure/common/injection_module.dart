import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../ui/navigation/routes.gr.dart';

@module
abstract class ServiceModule {

  @lazySingleton
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  FlutterSecureStorage get storage => const FlutterSecureStorage();

  @lazySingleton
  AppRouter get router => AppRouter();

}