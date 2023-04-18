// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marginality_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarginalityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarginalityEventCopyWith<$Res> {
  factory $MarginalityEventCopyWith(
          MarginalityEvent value, $Res Function(MarginalityEvent) then) =
      _$MarginalityEventCopyWithImpl<$Res, MarginalityEvent>;
}

/// @nodoc
class _$MarginalityEventCopyWithImpl<$Res, $Val extends MarginalityEvent>
    implements $MarginalityEventCopyWith<$Res> {
  _$MarginalityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchDataCopyWith<$Res> {
  factory _$$FetchDataCopyWith(
          _$FetchData value, $Res Function(_$FetchData) then) =
      __$$FetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDataCopyWithImpl<$Res>
    extends _$MarginalityEventCopyWithImpl<$Res, _$FetchData>
    implements _$$FetchDataCopyWith<$Res> {
  __$$FetchDataCopyWithImpl(
      _$FetchData _value, $Res Function(_$FetchData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchData implements FetchData {
  const _$FetchData();

  @override
  String toString() {
    return 'MarginalityEvent.fetchData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchData,
  }) {
    return fetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetchData,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetchData,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class FetchData implements MarginalityEvent {
  const factory FetchData() = _$FetchData;
}

/// @nodoc
mixin _$MarginalityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityProjects> data)
        projectsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityEmployees> data)
        employeesloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityDepartments> data)
        departmentsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityCompanies> data)
        companiesloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProjectsLoaded value) projectsloaded,
    required TResult Function(_EmployeesLoaded value) employeesloaded,
    required TResult Function(_DepartmentsLoaded value) departmentsloaded,
    required TResult Function(_CompaniesLoaded value) companiesloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ProjectsLoaded value)? projectsloaded,
    TResult? Function(_EmployeesLoaded value)? employeesloaded,
    TResult? Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult? Function(_CompaniesLoaded value)? companiesloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProjectsLoaded value)? projectsloaded,
    TResult Function(_EmployeesLoaded value)? employeesloaded,
    TResult Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult Function(_CompaniesLoaded value)? companiesloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarginalityStateCopyWith<$Res> {
  factory $MarginalityStateCopyWith(
          MarginalityState value, $Res Function(MarginalityState) then) =
      _$MarginalityStateCopyWithImpl<$Res, MarginalityState>;
}

/// @nodoc
class _$MarginalityStateCopyWithImpl<$Res, $Val extends MarginalityState>
    implements $MarginalityStateCopyWith<$Res> {
  _$MarginalityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MarginalityStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MarginalityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityProjects> data)
        projectsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityEmployees> data)
        employeesloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityDepartments> data)
        departmentsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityCompanies> data)
        companiesloaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProjectsLoaded value) projectsloaded,
    required TResult Function(_EmployeesLoaded value) employeesloaded,
    required TResult Function(_DepartmentsLoaded value) departmentsloaded,
    required TResult Function(_CompaniesLoaded value) companiesloaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ProjectsLoaded value)? projectsloaded,
    TResult? Function(_EmployeesLoaded value)? employeesloaded,
    TResult? Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult? Function(_CompaniesLoaded value)? companiesloaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProjectsLoaded value)? projectsloaded,
    TResult Function(_EmployeesLoaded value)? employeesloaded,
    TResult Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult Function(_CompaniesLoaded value)? companiesloaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MarginalityState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MarginalityStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MarginalityState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityProjects> data)
        projectsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityEmployees> data)
        employeesloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityDepartments> data)
        departmentsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityCompanies> data)
        companiesloaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProjectsLoaded value) projectsloaded,
    required TResult Function(_EmployeesLoaded value) employeesloaded,
    required TResult Function(_DepartmentsLoaded value) departmentsloaded,
    required TResult Function(_CompaniesLoaded value) companiesloaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ProjectsLoaded value)? projectsloaded,
    TResult? Function(_EmployeesLoaded value)? employeesloaded,
    TResult? Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult? Function(_CompaniesLoaded value)? companiesloaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProjectsLoaded value)? projectsloaded,
    TResult Function(_EmployeesLoaded value)? employeesloaded,
    TResult Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult Function(_CompaniesLoaded value)? companiesloaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MarginalityState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ProjectsLoadedCopyWith<$Res> {
  factory _$$_ProjectsLoadedCopyWith(
          _$_ProjectsLoaded value, $Res Function(_$_ProjectsLoaded) then) =
      __$$_ProjectsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String selectedCurrency,
      String selectedMarginality,
      List<MarginalityProjects> data});
}

/// @nodoc
class __$$_ProjectsLoadedCopyWithImpl<$Res>
    extends _$MarginalityStateCopyWithImpl<$Res, _$_ProjectsLoaded>
    implements _$$_ProjectsLoadedCopyWith<$Res> {
  __$$_ProjectsLoadedCopyWithImpl(
      _$_ProjectsLoaded _value, $Res Function(_$_ProjectsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCurrency = null,
    Object? selectedMarginality = null,
    Object? data = null,
  }) {
    return _then(_$_ProjectsLoaded(
      null == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedMarginality
          ? _value.selectedMarginality
          : selectedMarginality // ignore: cast_nullable_to_non_nullable
              as String,
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MarginalityProjects>,
    ));
  }
}

/// @nodoc

class _$_ProjectsLoaded implements _ProjectsLoaded {
  const _$_ProjectsLoaded(this.selectedCurrency, this.selectedMarginality,
      final List<MarginalityProjects> data)
      : _data = data;

  @override
  final String selectedCurrency;
  @override
  final String selectedMarginality;
  final List<MarginalityProjects> _data;
  @override
  List<MarginalityProjects> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MarginalityState.projectsloaded(selectedCurrency: $selectedCurrency, selectedMarginality: $selectedMarginality, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectsLoaded &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                other.selectedCurrency == selectedCurrency) &&
            (identical(other.selectedMarginality, selectedMarginality) ||
                other.selectedMarginality == selectedMarginality) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCurrency,
      selectedMarginality, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectsLoadedCopyWith<_$_ProjectsLoaded> get copyWith =>
      __$$_ProjectsLoadedCopyWithImpl<_$_ProjectsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityProjects> data)
        projectsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityEmployees> data)
        employeesloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityDepartments> data)
        departmentsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityCompanies> data)
        companiesloaded,
  }) {
    return projectsloaded(selectedCurrency, selectedMarginality, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
  }) {
    return projectsloaded?.call(selectedCurrency, selectedMarginality, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
    required TResult orElse(),
  }) {
    if (projectsloaded != null) {
      return projectsloaded(selectedCurrency, selectedMarginality, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProjectsLoaded value) projectsloaded,
    required TResult Function(_EmployeesLoaded value) employeesloaded,
    required TResult Function(_DepartmentsLoaded value) departmentsloaded,
    required TResult Function(_CompaniesLoaded value) companiesloaded,
  }) {
    return projectsloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ProjectsLoaded value)? projectsloaded,
    TResult? Function(_EmployeesLoaded value)? employeesloaded,
    TResult? Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult? Function(_CompaniesLoaded value)? companiesloaded,
  }) {
    return projectsloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProjectsLoaded value)? projectsloaded,
    TResult Function(_EmployeesLoaded value)? employeesloaded,
    TResult Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult Function(_CompaniesLoaded value)? companiesloaded,
    required TResult orElse(),
  }) {
    if (projectsloaded != null) {
      return projectsloaded(this);
    }
    return orElse();
  }
}

abstract class _ProjectsLoaded implements MarginalityState {
  const factory _ProjectsLoaded(
      final String selectedCurrency,
      final String selectedMarginality,
      final List<MarginalityProjects> data) = _$_ProjectsLoaded;

  String get selectedCurrency;
  String get selectedMarginality;
  List<MarginalityProjects> get data;
  @JsonKey(ignore: true)
  _$$_ProjectsLoadedCopyWith<_$_ProjectsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmployeesLoadedCopyWith<$Res> {
  factory _$$_EmployeesLoadedCopyWith(
          _$_EmployeesLoaded value, $Res Function(_$_EmployeesLoaded) then) =
      __$$_EmployeesLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String selectedCurrency,
      String selectedMarginality,
      List<MarginalityEmployees> data});
}

/// @nodoc
class __$$_EmployeesLoadedCopyWithImpl<$Res>
    extends _$MarginalityStateCopyWithImpl<$Res, _$_EmployeesLoaded>
    implements _$$_EmployeesLoadedCopyWith<$Res> {
  __$$_EmployeesLoadedCopyWithImpl(
      _$_EmployeesLoaded _value, $Res Function(_$_EmployeesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCurrency = null,
    Object? selectedMarginality = null,
    Object? data = null,
  }) {
    return _then(_$_EmployeesLoaded(
      null == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedMarginality
          ? _value.selectedMarginality
          : selectedMarginality // ignore: cast_nullable_to_non_nullable
              as String,
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MarginalityEmployees>,
    ));
  }
}

/// @nodoc

class _$_EmployeesLoaded implements _EmployeesLoaded {
  const _$_EmployeesLoaded(this.selectedCurrency, this.selectedMarginality,
      final List<MarginalityEmployees> data)
      : _data = data;

  @override
  final String selectedCurrency;
  @override
  final String selectedMarginality;
  final List<MarginalityEmployees> _data;
  @override
  List<MarginalityEmployees> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MarginalityState.employeesloaded(selectedCurrency: $selectedCurrency, selectedMarginality: $selectedMarginality, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeesLoaded &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                other.selectedCurrency == selectedCurrency) &&
            (identical(other.selectedMarginality, selectedMarginality) ||
                other.selectedMarginality == selectedMarginality) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCurrency,
      selectedMarginality, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeesLoadedCopyWith<_$_EmployeesLoaded> get copyWith =>
      __$$_EmployeesLoadedCopyWithImpl<_$_EmployeesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityProjects> data)
        projectsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityEmployees> data)
        employeesloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityDepartments> data)
        departmentsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityCompanies> data)
        companiesloaded,
  }) {
    return employeesloaded(selectedCurrency, selectedMarginality, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
  }) {
    return employeesloaded?.call(selectedCurrency, selectedMarginality, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
    required TResult orElse(),
  }) {
    if (employeesloaded != null) {
      return employeesloaded(selectedCurrency, selectedMarginality, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProjectsLoaded value) projectsloaded,
    required TResult Function(_EmployeesLoaded value) employeesloaded,
    required TResult Function(_DepartmentsLoaded value) departmentsloaded,
    required TResult Function(_CompaniesLoaded value) companiesloaded,
  }) {
    return employeesloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ProjectsLoaded value)? projectsloaded,
    TResult? Function(_EmployeesLoaded value)? employeesloaded,
    TResult? Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult? Function(_CompaniesLoaded value)? companiesloaded,
  }) {
    return employeesloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProjectsLoaded value)? projectsloaded,
    TResult Function(_EmployeesLoaded value)? employeesloaded,
    TResult Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult Function(_CompaniesLoaded value)? companiesloaded,
    required TResult orElse(),
  }) {
    if (employeesloaded != null) {
      return employeesloaded(this);
    }
    return orElse();
  }
}

abstract class _EmployeesLoaded implements MarginalityState {
  const factory _EmployeesLoaded(
      final String selectedCurrency,
      final String selectedMarginality,
      final List<MarginalityEmployees> data) = _$_EmployeesLoaded;

  String get selectedCurrency;
  String get selectedMarginality;
  List<MarginalityEmployees> get data;
  @JsonKey(ignore: true)
  _$$_EmployeesLoadedCopyWith<_$_EmployeesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DepartmentsLoadedCopyWith<$Res> {
  factory _$$_DepartmentsLoadedCopyWith(_$_DepartmentsLoaded value,
          $Res Function(_$_DepartmentsLoaded) then) =
      __$$_DepartmentsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String selectedCurrency,
      String selectedMarginality,
      List<MarginalityDepartments> data});
}

/// @nodoc
class __$$_DepartmentsLoadedCopyWithImpl<$Res>
    extends _$MarginalityStateCopyWithImpl<$Res, _$_DepartmentsLoaded>
    implements _$$_DepartmentsLoadedCopyWith<$Res> {
  __$$_DepartmentsLoadedCopyWithImpl(
      _$_DepartmentsLoaded _value, $Res Function(_$_DepartmentsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCurrency = null,
    Object? selectedMarginality = null,
    Object? data = null,
  }) {
    return _then(_$_DepartmentsLoaded(
      null == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedMarginality
          ? _value.selectedMarginality
          : selectedMarginality // ignore: cast_nullable_to_non_nullable
              as String,
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MarginalityDepartments>,
    ));
  }
}

/// @nodoc

class _$_DepartmentsLoaded implements _DepartmentsLoaded {
  const _$_DepartmentsLoaded(this.selectedCurrency, this.selectedMarginality,
      final List<MarginalityDepartments> data)
      : _data = data;

  @override
  final String selectedCurrency;
  @override
  final String selectedMarginality;
  final List<MarginalityDepartments> _data;
  @override
  List<MarginalityDepartments> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MarginalityState.departmentsloaded(selectedCurrency: $selectedCurrency, selectedMarginality: $selectedMarginality, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentsLoaded &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                other.selectedCurrency == selectedCurrency) &&
            (identical(other.selectedMarginality, selectedMarginality) ||
                other.selectedMarginality == selectedMarginality) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCurrency,
      selectedMarginality, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentsLoadedCopyWith<_$_DepartmentsLoaded> get copyWith =>
      __$$_DepartmentsLoadedCopyWithImpl<_$_DepartmentsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityProjects> data)
        projectsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityEmployees> data)
        employeesloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityDepartments> data)
        departmentsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityCompanies> data)
        companiesloaded,
  }) {
    return departmentsloaded(selectedCurrency, selectedMarginality, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
  }) {
    return departmentsloaded?.call(selectedCurrency, selectedMarginality, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
    required TResult orElse(),
  }) {
    if (departmentsloaded != null) {
      return departmentsloaded(selectedCurrency, selectedMarginality, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProjectsLoaded value) projectsloaded,
    required TResult Function(_EmployeesLoaded value) employeesloaded,
    required TResult Function(_DepartmentsLoaded value) departmentsloaded,
    required TResult Function(_CompaniesLoaded value) companiesloaded,
  }) {
    return departmentsloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ProjectsLoaded value)? projectsloaded,
    TResult? Function(_EmployeesLoaded value)? employeesloaded,
    TResult? Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult? Function(_CompaniesLoaded value)? companiesloaded,
  }) {
    return departmentsloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProjectsLoaded value)? projectsloaded,
    TResult Function(_EmployeesLoaded value)? employeesloaded,
    TResult Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult Function(_CompaniesLoaded value)? companiesloaded,
    required TResult orElse(),
  }) {
    if (departmentsloaded != null) {
      return departmentsloaded(this);
    }
    return orElse();
  }
}

abstract class _DepartmentsLoaded implements MarginalityState {
  const factory _DepartmentsLoaded(
      final String selectedCurrency,
      final String selectedMarginality,
      final List<MarginalityDepartments> data) = _$_DepartmentsLoaded;

  String get selectedCurrency;
  String get selectedMarginality;
  List<MarginalityDepartments> get data;
  @JsonKey(ignore: true)
  _$$_DepartmentsLoadedCopyWith<_$_DepartmentsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompaniesLoadedCopyWith<$Res> {
  factory _$$_CompaniesLoadedCopyWith(
          _$_CompaniesLoaded value, $Res Function(_$_CompaniesLoaded) then) =
      __$$_CompaniesLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String selectedCurrency,
      String selectedMarginality,
      List<MarginalityCompanies> data});
}

/// @nodoc
class __$$_CompaniesLoadedCopyWithImpl<$Res>
    extends _$MarginalityStateCopyWithImpl<$Res, _$_CompaniesLoaded>
    implements _$$_CompaniesLoadedCopyWith<$Res> {
  __$$_CompaniesLoadedCopyWithImpl(
      _$_CompaniesLoaded _value, $Res Function(_$_CompaniesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCurrency = null,
    Object? selectedMarginality = null,
    Object? data = null,
  }) {
    return _then(_$_CompaniesLoaded(
      null == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedMarginality
          ? _value.selectedMarginality
          : selectedMarginality // ignore: cast_nullable_to_non_nullable
              as String,
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MarginalityCompanies>,
    ));
  }
}

/// @nodoc

class _$_CompaniesLoaded implements _CompaniesLoaded {
  const _$_CompaniesLoaded(this.selectedCurrency, this.selectedMarginality,
      final List<MarginalityCompanies> data)
      : _data = data;

  @override
  final String selectedCurrency;
  @override
  final String selectedMarginality;
  final List<MarginalityCompanies> _data;
  @override
  List<MarginalityCompanies> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MarginalityState.companiesloaded(selectedCurrency: $selectedCurrency, selectedMarginality: $selectedMarginality, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompaniesLoaded &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                other.selectedCurrency == selectedCurrency) &&
            (identical(other.selectedMarginality, selectedMarginality) ||
                other.selectedMarginality == selectedMarginality) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCurrency,
      selectedMarginality, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompaniesLoadedCopyWith<_$_CompaniesLoaded> get copyWith =>
      __$$_CompaniesLoadedCopyWithImpl<_$_CompaniesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityProjects> data)
        projectsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityEmployees> data)
        employeesloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityDepartments> data)
        departmentsloaded,
    required TResult Function(String selectedCurrency,
            String selectedMarginality, List<MarginalityCompanies> data)
        companiesloaded,
  }) {
    return companiesloaded(selectedCurrency, selectedMarginality, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult? Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
  }) {
    return companiesloaded?.call(selectedCurrency, selectedMarginality, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityProjects> data)?
        projectsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityEmployees> data)?
        employeesloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityDepartments> data)?
        departmentsloaded,
    TResult Function(String selectedCurrency, String selectedMarginality,
            List<MarginalityCompanies> data)?
        companiesloaded,
    required TResult orElse(),
  }) {
    if (companiesloaded != null) {
      return companiesloaded(selectedCurrency, selectedMarginality, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProjectsLoaded value) projectsloaded,
    required TResult Function(_EmployeesLoaded value) employeesloaded,
    required TResult Function(_DepartmentsLoaded value) departmentsloaded,
    required TResult Function(_CompaniesLoaded value) companiesloaded,
  }) {
    return companiesloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ProjectsLoaded value)? projectsloaded,
    TResult? Function(_EmployeesLoaded value)? employeesloaded,
    TResult? Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult? Function(_CompaniesLoaded value)? companiesloaded,
  }) {
    return companiesloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProjectsLoaded value)? projectsloaded,
    TResult Function(_EmployeesLoaded value)? employeesloaded,
    TResult Function(_DepartmentsLoaded value)? departmentsloaded,
    TResult Function(_CompaniesLoaded value)? companiesloaded,
    required TResult orElse(),
  }) {
    if (companiesloaded != null) {
      return companiesloaded(this);
    }
    return orElse();
  }
}

abstract class _CompaniesLoaded implements MarginalityState {
  const factory _CompaniesLoaded(
      final String selectedCurrency,
      final String selectedMarginality,
      final List<MarginalityCompanies> data) = _$_CompaniesLoaded;

  String get selectedCurrency;
  String get selectedMarginality;
  List<MarginalityCompanies> get data;
  @JsonKey(ignore: true)
  _$$_CompaniesLoadedCopyWith<_$_CompaniesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
