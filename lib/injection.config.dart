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
import 'package:mobile_internship_1/application/marginality_bloc/marginality_bloc.dart'
    as _i14;
import 'package:mobile_internship_1/application/marginality_choice_bloc/marginality_choice_bloc.dart'
    as _i15;
import 'package:mobile_internship_1/application/marginality_filter_bloc/marginality_filter_bloc.dart'
    as _i16;
import 'package:mobile_internship_1/domain/features/auth/i_auth_repository.dart'
    as _i7;
import 'package:mobile_internship_1/domain/features/marginality/i_marginality_repository.dart'
    as _i11;
import 'package:mobile_internship_1/infrastructure/common/injection_module.dart'
    as _i17;
import 'package:mobile_internship_1/infrastructure/features/auth/auth_repository.dart'
    as _i8;
import 'package:mobile_internship_1/infrastructure/features/MarginalityEmployees/MarginalityEmployeesRepository.dart'
    as _i12;
import 'package:mobile_internship_1/infrastructure/features/prefs/shared_prefs.dart'
    as _i13;
import 'package:mobile_internship_1/infrastructure/features/services/marginality_api_client.dart'
    as _i9;
import 'package:mobile_internship_1/ui/navigation/routes.gr.dart' as _i3;
import 'package:shared_preferences/shared_preferences.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i5.Dio>(() => serviceModule.dio);
    gh.lazySingleton<_i6.FlutterSecureStorage>(() => serviceModule.storage);
    gh.factory<_i7.IAuthRepository>(() => _i8.AuthRepository());
    gh.lazySingleton<_i9.MarginalityApiClient>(() => serviceModule.api_client);
    await gh.lazySingletonAsync<_i10.SharedPreferences>(
      () => serviceModule.prefs,
      preResolve: true,
    );
    gh.factory<_i11.IMarginalityRepository>(() =>
        _i12.MarginalityEmployeesRepository(gh<_i9.MarginalityApiClient>()));
    gh.factory<_i13.SharedPref>(
        () => _i13.SharedPref(gh<_i10.SharedPreferences>()));
    gh.factory<_i14.MarginalityBloc>(() => _i14.MarginalityBloc(
          gh<_i11.IMarginalityRepository>(),
          gh<_i13.SharedPref>(),
        ));
    gh.factory<_i15.MarginalityChoiceBloc>(
        () => _i15.MarginalityChoiceBloc(gh<_i13.SharedPref>()));
    gh.factory<_i16.MarginalityFilterBloc>(
        () => _i16.MarginalityFilterBloc(gh<_i13.SharedPref>()));
    return this;
  }
}

class _$ServiceModule extends _i17.ServiceModule {}
