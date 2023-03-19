// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mobile_internship_1/application/auth_bloc/auth_bloc.dart'
    as _i3;
import 'package:mobile_internship_1/domain/features/auth/i_auth_repository.dart'
    as _i6;
import 'package:mobile_internship_1/infrastructure/common/injection_module.dart'
    as _i9;
import 'package:mobile_internship_1/infrastructure/features/auth/auth_repository.dart'
    as _i7;
import 'package:shared_preferences/shared_preferences.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.singleton<_i3.AuthBloc>(serviceModule.authService);
    gh.singleton<_i4.Dio>(serviceModule.dio);
    gh.singleton<_i5.FlutterSecureStorage>(serviceModule.storage);
    gh.factory<_i6.IAuthRepository>(() => _i7.AuthRepository());
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => serviceModule.prefs,
      preResolve: true,
    );
    return this;
  }
}

class _$ServiceModule extends _i9.ServiceModule {}
