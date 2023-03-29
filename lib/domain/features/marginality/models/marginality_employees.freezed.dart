// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marginality_employees.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarginalityEmployees _$MarginalityEmployeesFromJson(Map<String, dynamic> json) {
  return _MarginalityEmployees.fromJson(json);
}

/// @nodoc
mixin _$MarginalityEmployees {
  String get id => throw _privateConstructorUsedError;
  int get marginality => throw _privateConstructorUsedError;
  int get margin => throw _privateConstructorUsedError;
  int get volume => throw _privateConstructorUsedError;
  int get rate => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  double get salary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarginalityEmployeesCopyWith<MarginalityEmployees> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarginalityEmployeesCopyWith<$Res> {
  factory $MarginalityEmployeesCopyWith(MarginalityEmployees value,
          $Res Function(MarginalityEmployees) then) =
      _$MarginalityEmployeesCopyWithImpl<$Res, MarginalityEmployees>;
  @useResult
  $Res call(
      {String id,
      int marginality,
      int margin,
      int volume,
      int rate,
      int total,
      double salary});
}

/// @nodoc
class _$MarginalityEmployeesCopyWithImpl<$Res,
        $Val extends MarginalityEmployees>
    implements $MarginalityEmployeesCopyWith<$Res> {
  _$MarginalityEmployeesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? marginality = null,
    Object? margin = null,
    Object? volume = null,
    Object? rate = null,
    Object? total = null,
    Object? salary = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      marginality: null == marginality
          ? _value.marginality
          : marginality // ignore: cast_nullable_to_non_nullable
              as int,
      margin: null == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_MarginalityEmployeesCopyWith<$Res>
    implements $MarginalityEmployeesCopyWith<$Res> {
  factory _$$_MarginalityEmployeesCopyWith(_$_MarginalityEmployees value,
          $Res Function(_$_MarginalityEmployees) then) =
      __$$_MarginalityEmployeesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int marginality,
      int margin,
      int volume,
      int rate,
      int total,
      double salary});
}

/// @nodoc
class __$$_MarginalityEmployeesCopyWithImpl<$Res>
    extends _$MarginalityEmployeesCopyWithImpl<$Res, _$_MarginalityEmployees>
    implements _$$_MarginalityEmployeesCopyWith<$Res> {
  __$$_MarginalityEmployeesCopyWithImpl(_$_MarginalityEmployees _value,
      $Res Function(_$_MarginalityEmployees) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? marginality = null,
    Object? margin = null,
    Object? volume = null,
    Object? rate = null,
    Object? total = null,
    Object? salary = null,
  }) {
    return _then(_$_MarginalityEmployees(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      marginality: null == marginality
          ? _value.marginality
          : marginality // ignore: cast_nullable_to_non_nullable
              as int,
      margin: null == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
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
class _$_MarginalityEmployees implements _MarginalityEmployees {
  _$_MarginalityEmployees(
      {required this.id,
      required this.marginality,
      required this.margin,
      required this.volume,
      required this.rate,
      required this.total,
      required this.salary});

  factory _$_MarginalityEmployees.fromJson(Map<String, dynamic> json) =>
      _$$_MarginalityEmployeesFromJson(json);

  @override
  final String id;
  @override
  final int marginality;
  @override
  final int margin;
  @override
  final int volume;
  @override
  final int rate;
  @override
  final int total;
  @override
  final double salary;

  @override
  String toString() {
    return 'MarginalityEmployees(id: $id, marginality: $marginality, margin: $margin, volume: $volume, rate: $rate, total: $total, salary: $salary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarginalityEmployees &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.marginality, marginality) ||
                other.marginality == marginality) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.salary, salary) || other.salary == salary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, marginality, margin, volume, rate, total, salary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarginalityEmployeesCopyWith<_$_MarginalityEmployees> get copyWith =>
      __$$_MarginalityEmployeesCopyWithImpl<_$_MarginalityEmployees>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarginalityEmployeesToJson(
      this,
    );
  }
}

abstract class _MarginalityEmployees implements MarginalityEmployees {
  factory _MarginalityEmployees(
      {required final String id,
      required final int marginality,
      required final int margin,
      required final int volume,
      required final int rate,
      required final int total,
      required final double salary}) = _$_MarginalityEmployees;

  factory _MarginalityEmployees.fromJson(Map<String, dynamic> json) =
      _$_MarginalityEmployees.fromJson;

  @override
  String get id;
  @override
  int get marginality;
  @override
  int get margin;
  @override
  int get volume;
  @override
  int get rate;
  @override
  int get total;
  @override
  double get salary;
  @override
  @JsonKey(ignore: true)
  _$$_MarginalityEmployeesCopyWith<_$_MarginalityEmployees> get copyWith =>
      throw _privateConstructorUsedError;
}
