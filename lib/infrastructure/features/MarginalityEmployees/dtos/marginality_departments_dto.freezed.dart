// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marginality_departments_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarginalityDepartmentsDto _$MarginalityDepartmentsDtoFromJson(
    Map<String, dynamic> json) {
  return _MarginalityDepartmentsDto.fromJson(json);
}

/// @nodoc
mixin _$MarginalityDepartmentsDto {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get marginality => throw _privateConstructorUsedError;
  int get margin => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  double get salary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarginalityDepartmentsDtoCopyWith<MarginalityDepartmentsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarginalityDepartmentsDtoCopyWith<$Res> {
  factory $MarginalityDepartmentsDtoCopyWith(MarginalityDepartmentsDto value,
          $Res Function(MarginalityDepartmentsDto) then) =
      _$MarginalityDepartmentsDtoCopyWithImpl<$Res, MarginalityDepartmentsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      int marginality,
      int margin,
      int total,
      double salary});
}

/// @nodoc
class _$MarginalityDepartmentsDtoCopyWithImpl<$Res,
        $Val extends MarginalityDepartmentsDto>
    implements $MarginalityDepartmentsDtoCopyWith<$Res> {
  _$MarginalityDepartmentsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? marginality = null,
    Object? margin = null,
    Object? total = null,
    Object? salary = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      marginality: null == marginality
          ? _value.marginality
          : marginality // ignore: cast_nullable_to_non_nullable
              as int,
      margin: null == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarginalityDepartmentsDtoCopyWith<$Res>
    implements $MarginalityDepartmentsDtoCopyWith<$Res> {
  factory _$$_MarginalityDepartmentsDtoCopyWith(
          _$_MarginalityDepartmentsDto value,
          $Res Function(_$_MarginalityDepartmentsDto) then) =
      __$$_MarginalityDepartmentsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      int marginality,
      int margin,
      int total,
      double salary});
}

/// @nodoc
class __$$_MarginalityDepartmentsDtoCopyWithImpl<$Res>
    extends _$MarginalityDepartmentsDtoCopyWithImpl<$Res,
        _$_MarginalityDepartmentsDto>
    implements _$$_MarginalityDepartmentsDtoCopyWith<$Res> {
  __$$_MarginalityDepartmentsDtoCopyWithImpl(
      _$_MarginalityDepartmentsDto _value,
      $Res Function(_$_MarginalityDepartmentsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? marginality = null,
    Object? margin = null,
    Object? total = null,
    Object? salary = null,
  }) {
    return _then(_$_MarginalityDepartmentsDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      marginality: null == marginality
          ? _value.marginality
          : marginality // ignore: cast_nullable_to_non_nullable
              as int,
      margin: null == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarginalityDepartmentsDto extends _MarginalityDepartmentsDto {
  const _$_MarginalityDepartmentsDto(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.marginality,
      required this.margin,
      required this.total,
      required this.salary})
      : super._();

  factory _$_MarginalityDepartmentsDto.fromJson(Map<String, dynamic> json) =>
      _$$_MarginalityDepartmentsDtoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final int marginality;
  @override
  final int margin;
  @override
  final int total;
  @override
  final double salary;

  @override
  String toString() {
    return 'MarginalityDepartmentsDto(id: $id, name: $name, marginality: $marginality, margin: $margin, total: $total, salary: $salary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarginalityDepartmentsDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.marginality, marginality) ||
                other.marginality == marginality) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.salary, salary) || other.salary == salary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, marginality, margin, total, salary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarginalityDepartmentsDtoCopyWith<_$_MarginalityDepartmentsDto>
      get copyWith => __$$_MarginalityDepartmentsDtoCopyWithImpl<
          _$_MarginalityDepartmentsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarginalityDepartmentsDtoToJson(
      this,
    );
  }
}

abstract class _MarginalityDepartmentsDto extends MarginalityDepartmentsDto {
  const factory _MarginalityDepartmentsDto(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      required final int marginality,
      required final int margin,
      required final int total,
      required final double salary}) = _$_MarginalityDepartmentsDto;
  const _MarginalityDepartmentsDto._() : super._();

  factory _MarginalityDepartmentsDto.fromJson(Map<String, dynamic> json) =
      _$_MarginalityDepartmentsDto.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  int get marginality;
  @override
  int get margin;
  @override
  int get total;
  @override
  double get salary;
  @override
  @JsonKey(ignore: true)
  _$$_MarginalityDepartmentsDtoCopyWith<_$_MarginalityDepartmentsDto>
      get copyWith => throw _privateConstructorUsedError;
}
