// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marginality_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarginalityFilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() valueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? valueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? valueChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ValueChanged value) valueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ValueChanged value)? valueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ValueChanged value)? valueChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarginalityFilterEventCopyWith<$Res> {
  factory $MarginalityFilterEventCopyWith(MarginalityFilterEvent value,
          $Res Function(MarginalityFilterEvent) then) =
      _$MarginalityFilterEventCopyWithImpl<$Res, MarginalityFilterEvent>;
}

/// @nodoc
class _$MarginalityFilterEventCopyWithImpl<$Res,
        $Val extends MarginalityFilterEvent>
    implements $MarginalityFilterEventCopyWith<$Res> {
  _$MarginalityFilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$MarginalityFilterEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'MarginalityFilterEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() valueChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? valueChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? valueChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ValueChanged value) valueChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ValueChanged value)? valueChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ValueChanged value)? valueChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements MarginalityFilterEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$ValueChangedCopyWith<$Res> {
  factory _$$ValueChangedCopyWith(
          _$ValueChanged value, $Res Function(_$ValueChanged) then) =
      __$$ValueChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValueChangedCopyWithImpl<$Res>
    extends _$MarginalityFilterEventCopyWithImpl<$Res, _$ValueChanged>
    implements _$$ValueChangedCopyWith<$Res> {
  __$$ValueChangedCopyWithImpl(
      _$ValueChanged _value, $Res Function(_$ValueChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValueChanged implements ValueChanged {
  const _$ValueChanged();

  @override
  String toString() {
    return 'MarginalityFilterEvent.valueChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValueChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() valueChanged,
  }) {
    return valueChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? valueChanged,
  }) {
    return valueChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? valueChanged,
    required TResult orElse(),
  }) {
    if (valueChanged != null) {
      return valueChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ValueChanged value) valueChanged,
  }) {
    return valueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ValueChanged value)? valueChanged,
  }) {
    return valueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ValueChanged value)? valueChanged,
    required TResult orElse(),
  }) {
    if (valueChanged != null) {
      return valueChanged(this);
    }
    return orElse();
  }
}

abstract class ValueChanged implements MarginalityFilterEvent {
  const factory ValueChanged() = _$ValueChanged;
}

/// @nodoc
mixin _$MarginalityFilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> choices, String selectedValue)
        loaded,
    required TResult Function(List<String> choices, String selectedValue)
        itemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> choices, String selectedValue)? loaded,
    TResult? Function(List<String> choices, String selectedValue)? itemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> choices, String selectedValue)? loaded,
    TResult Function(List<String> choices, String selectedValue)? itemSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ItemSelected value) itemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ItemSelected value)? itemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ItemSelected value)? itemSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarginalityFilterStateCopyWith<$Res> {
  factory $MarginalityFilterStateCopyWith(MarginalityFilterState value,
          $Res Function(MarginalityFilterState) then) =
      _$MarginalityFilterStateCopyWithImpl<$Res, MarginalityFilterState>;
}

/// @nodoc
class _$MarginalityFilterStateCopyWithImpl<$Res,
        $Val extends MarginalityFilterState>
    implements $MarginalityFilterStateCopyWith<$Res> {
  _$MarginalityFilterStateCopyWithImpl(this._value, this._then);

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
    extends _$MarginalityFilterStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MarginalityFilterState.initial()';
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
    required TResult Function(List<String> choices, String selectedValue)
        loaded,
    required TResult Function(List<String> choices, String selectedValue)
        itemSelected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> choices, String selectedValue)? loaded,
    TResult? Function(List<String> choices, String selectedValue)? itemSelected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> choices, String selectedValue)? loaded,
    TResult Function(List<String> choices, String selectedValue)? itemSelected,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ItemSelected value) itemSelected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ItemSelected value)? itemSelected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ItemSelected value)? itemSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MarginalityFilterState {
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
    extends _$MarginalityFilterStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MarginalityFilterState.loading()';
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
    required TResult Function(List<String> choices, String selectedValue)
        loaded,
    required TResult Function(List<String> choices, String selectedValue)
        itemSelected,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> choices, String selectedValue)? loaded,
    TResult? Function(List<String> choices, String selectedValue)? itemSelected,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> choices, String selectedValue)? loaded,
    TResult Function(List<String> choices, String selectedValue)? itemSelected,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ItemSelected value) itemSelected,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ItemSelected value)? itemSelected,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ItemSelected value)? itemSelected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MarginalityFilterState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> choices, String selectedValue});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$MarginalityFilterStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = null,
    Object? selectedValue = null,
  }) {
    return _then(_$_Loaded(
      null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<String> choices, this.selectedValue)
      : _choices = choices;

  final List<String> _choices;
  @override
  List<String> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final String selectedValue;

  @override
  String toString() {
    return 'MarginalityFilterState.loaded(choices: $choices, selectedValue: $selectedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_choices), selectedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> choices, String selectedValue)
        loaded,
    required TResult Function(List<String> choices, String selectedValue)
        itemSelected,
  }) {
    return loaded(choices, selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> choices, String selectedValue)? loaded,
    TResult? Function(List<String> choices, String selectedValue)? itemSelected,
  }) {
    return loaded?.call(choices, selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> choices, String selectedValue)? loaded,
    TResult Function(List<String> choices, String selectedValue)? itemSelected,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(choices, selectedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ItemSelected value) itemSelected,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ItemSelected value)? itemSelected,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ItemSelected value)? itemSelected,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MarginalityFilterState {
  const factory _Loaded(
      final List<String> choices, final String selectedValue) = _$_Loaded;

  List<String> get choices;
  String get selectedValue;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ItemSelectedCopyWith<$Res> {
  factory _$$_ItemSelectedCopyWith(
          _$_ItemSelected value, $Res Function(_$_ItemSelected) then) =
      __$$_ItemSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> choices, String selectedValue});
}

/// @nodoc
class __$$_ItemSelectedCopyWithImpl<$Res>
    extends _$MarginalityFilterStateCopyWithImpl<$Res, _$_ItemSelected>
    implements _$$_ItemSelectedCopyWith<$Res> {
  __$$_ItemSelectedCopyWithImpl(
      _$_ItemSelected _value, $Res Function(_$_ItemSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = null,
    Object? selectedValue = null,
  }) {
    return _then(_$_ItemSelected(
      null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ItemSelected implements _ItemSelected {
  const _$_ItemSelected(final List<String> choices, this.selectedValue)
      : _choices = choices;

  final List<String> _choices;
  @override
  List<String> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final String selectedValue;

  @override
  String toString() {
    return 'MarginalityFilterState.itemSelected(choices: $choices, selectedValue: $selectedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemSelected &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_choices), selectedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemSelectedCopyWith<_$_ItemSelected> get copyWith =>
      __$$_ItemSelectedCopyWithImpl<_$_ItemSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> choices, String selectedValue)
        loaded,
    required TResult Function(List<String> choices, String selectedValue)
        itemSelected,
  }) {
    return itemSelected(choices, selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> choices, String selectedValue)? loaded,
    TResult? Function(List<String> choices, String selectedValue)? itemSelected,
  }) {
    return itemSelected?.call(choices, selectedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> choices, String selectedValue)? loaded,
    TResult Function(List<String> choices, String selectedValue)? itemSelected,
    required TResult orElse(),
  }) {
    if (itemSelected != null) {
      return itemSelected(choices, selectedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ItemSelected value) itemSelected,
  }) {
    return itemSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ItemSelected value)? itemSelected,
  }) {
    return itemSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ItemSelected value)? itemSelected,
    required TResult orElse(),
  }) {
    if (itemSelected != null) {
      return itemSelected(this);
    }
    return orElse();
  }
}

abstract class _ItemSelected implements MarginalityFilterState {
  const factory _ItemSelected(
      final List<String> choices, final String selectedValue) = _$_ItemSelected;

  List<String> get choices;
  String get selectedValue;
  @JsonKey(ignore: true)
  _$$_ItemSelectedCopyWith<_$_ItemSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
