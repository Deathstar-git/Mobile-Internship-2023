import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_internship_1/application/auth_bloc/auth_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ServiceModule {

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  Dio get dio => Dio();

  @singleton
  FlutterSecureStorage get storage => const FlutterSecureStorage();

  @singleton
  AuthBloc get authService => AuthBloc();
}