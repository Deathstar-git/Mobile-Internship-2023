// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mobile_internship_1/application/auth_bloc/auth_bloc.dart'
    as _i4;
import 'package:mobile_internship_1/domain/features/auth/i_auth_repository.dart'
    as _i7;
import 'package:mobile_internship_1/infrastructure/common/injection_module.dart'
    as _i10;
import 'package:mobile_internship_1/infrastructure/features/auth/auth_repository.dart'
    as _i8;
import 'package:mobile_internship_1/ui/navigation/routes.gr.dart' as _i3;
import 'package:shared_preferences/shared_preferences.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

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
    gh.lazySingleton<_i3.AppRouter>(() => serviceModule.router);
    gh.factory<_i4.AuthBloc>(() => _i4.AuthBloc());
    gh.lazySingleton<_i5.Dio>(() => serviceModule.dio);
    gh.lazySingleton<_i6.FlutterSecureStorage>(() => serviceModule.storage);
    gh.factory<_i7.IAuthRepository>(() => _i8.AuthRepository());
    await gh.lazySingletonAsync<_i9.SharedPreferences>(
      () => serviceModule.prefs,
      preResolve: true,
    );
    return this;
  }
}

class _$ServiceModule extends _i10.ServiceModule {}
