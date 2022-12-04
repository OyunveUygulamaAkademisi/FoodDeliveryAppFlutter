// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DefaultError {
  dynamic get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic error, StackTrace stackTrace, String mesage)
        apiError,
    required TResult Function(dynamic error, StackTrace stackTrace)
        businessError,
    required TResult Function(dynamic error, StackTrace stackTrace)
        unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic error, StackTrace stackTrace, String mesage)?
        apiError,
    TResult? Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult? Function(dynamic error, StackTrace stackTrace)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error, StackTrace stackTrace, String mesage)?
        apiError,
    TResult Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult Function(dynamic error, StackTrace stackTrace)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_UnknownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiError value)? apiError,
    TResult? Function(_BusinessError value)? businessError,
    TResult? Function(_UnknownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DefaultErrorCopyWith<DefaultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultErrorCopyWith<$Res> {
  factory $DefaultErrorCopyWith(
          DefaultError value, $Res Function(DefaultError) then) =
      _$DefaultErrorCopyWithImpl<$Res, DefaultError>;
  @useResult
  $Res call({dynamic error, StackTrace stackTrace});
}

/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res, $Val extends DefaultError>
    implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiErrorCopyWith<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  factory _$$_ApiErrorCopyWith(
          _$_ApiError value, $Res Function(_$_ApiError) then) =
      __$$_ApiErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic error, StackTrace stackTrace, String mesage});
}

/// @nodoc
class __$$_ApiErrorCopyWithImpl<$Res>
    extends _$DefaultErrorCopyWithImpl<$Res, _$_ApiError>
    implements _$$_ApiErrorCopyWith<$Res> {
  __$$_ApiErrorCopyWithImpl(
      _$_ApiError _value, $Res Function(_$_ApiError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
    Object? mesage = null,
  }) {
    return _then(_$_ApiError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      null == mesage
          ? _value.mesage
          : mesage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApiError implements _ApiError {
  const _$_ApiError(this.error, this.stackTrace, this.mesage);

  @override
  final dynamic error;
  @override
  final StackTrace stackTrace;
  @override
  final String mesage;

  @override
  String toString() {
    return 'DefaultError.apiError(error: $error, stackTrace: $stackTrace, mesage: $mesage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.mesage, mesage) || other.mesage == mesage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(error), stackTrace, mesage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiErrorCopyWith<_$_ApiError> get copyWith =>
      __$$_ApiErrorCopyWithImpl<_$_ApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic error, StackTrace stackTrace, String mesage)
        apiError,
    required TResult Function(dynamic error, StackTrace stackTrace)
        businessError,
    required TResult Function(dynamic error, StackTrace stackTrace)
        unknownError,
  }) {
    return apiError(error, stackTrace, mesage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic error, StackTrace stackTrace, String mesage)?
        apiError,
    TResult? Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult? Function(dynamic error, StackTrace stackTrace)? unknownError,
  }) {
    return apiError?.call(error, stackTrace, mesage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error, StackTrace stackTrace, String mesage)?
        apiError,
    TResult Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult Function(dynamic error, StackTrace stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(error, stackTrace, mesage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiError value)? apiError,
    TResult? Function(_BusinessError value)? businessError,
    TResult? Function(_UnknownError value)? unknownError,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class _ApiError implements DefaultError {
  const factory _ApiError(final dynamic error, final StackTrace stackTrace,
      final String mesage) = _$_ApiError;

  @override
  dynamic get error;
  @override
  StackTrace get stackTrace;
  String get mesage;
  @override
  @JsonKey(ignore: true)
  _$$_ApiErrorCopyWith<_$_ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BusinessErrorCopyWith<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  factory _$$_BusinessErrorCopyWith(
          _$_BusinessError value, $Res Function(_$_BusinessError) then) =
      __$$_BusinessErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic error, StackTrace stackTrace});
}

/// @nodoc
class __$$_BusinessErrorCopyWithImpl<$Res>
    extends _$DefaultErrorCopyWithImpl<$Res, _$_BusinessError>
    implements _$$_BusinessErrorCopyWith<$Res> {
  __$$_BusinessErrorCopyWithImpl(
      _$_BusinessError _value, $Res Function(_$_BusinessError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_$_BusinessError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$_BusinessError implements _BusinessError {
  const _$_BusinessError(this.error, this.stackTrace);

  @override
  final dynamic error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'DefaultError.businessError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessErrorCopyWith<_$_BusinessError> get copyWith =>
      __$$_BusinessErrorCopyWithImpl<_$_BusinessError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic error, StackTrace stackTrace, String mesage)
        apiError,
    required TResult Function(dynamic error, StackTrace stackTrace)
        businessError,
    required TResult Function(dynamic error, StackTrace stackTrace)
        unknownError,
  }) {
    return businessError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic error, StackTrace stackTrace, String mesage)?
        apiError,
    TResult? Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult? Function(dynamic error, StackTrace stackTrace)? unknownError,
  }) {
    return businessError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error, StackTrace stackTrace, String mesage)?
        apiError,
    TResult Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult Function(dynamic error, StackTrace stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (businessError != null) {
      return businessError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return businessError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiError value)? apiError,
    TResult? Function(_BusinessError value)? businessError,
    TResult? Function(_UnknownError value)? unknownError,
  }) {
    return businessError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (businessError != null) {
      return businessError(this);
    }
    return orElse();
  }
}

abstract class _BusinessError implements DefaultError {
  const factory _BusinessError(
      final dynamic error, final StackTrace stackTrace) = _$_BusinessError;

  @override
  dynamic get error;
  @override
  StackTrace get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessErrorCopyWith<_$_BusinessError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownErrorCopyWith<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  factory _$$_UnknownErrorCopyWith(
          _$_UnknownError value, $Res Function(_$_UnknownError) then) =
      __$$_UnknownErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic error, StackTrace stackTrace});
}

/// @nodoc
class __$$_UnknownErrorCopyWithImpl<$Res>
    extends _$DefaultErrorCopyWithImpl<$Res, _$_UnknownError>
    implements _$$_UnknownErrorCopyWith<$Res> {
  __$$_UnknownErrorCopyWithImpl(
      _$_UnknownError _value, $Res Function(_$_UnknownError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_$_UnknownError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$_UnknownError implements _UnknownError {
  const _$_UnknownError(this.error, this.stackTrace);

  @override
  final dynamic error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'DefaultError.unknownError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnknownError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnknownErrorCopyWith<_$_UnknownError> get copyWith =>
      __$$_UnknownErrorCopyWithImpl<_$_UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic error, StackTrace stackTrace, String mesage)
        apiError,
    required TResult Function(dynamic error, StackTrace stackTrace)
        businessError,
    required TResult Function(dynamic error, StackTrace stackTrace)
        unknownError,
  }) {
    return unknownError(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic error, StackTrace stackTrace, String mesage)?
        apiError,
    TResult? Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult? Function(dynamic error, StackTrace stackTrace)? unknownError,
  }) {
    return unknownError?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error, StackTrace stackTrace, String mesage)?
        apiError,
    TResult Function(dynamic error, StackTrace stackTrace)? businessError,
    TResult Function(dynamic error, StackTrace stackTrace)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_BusinessError value) businessError,
    required TResult Function(_UnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiError value)? apiError,
    TResult? Function(_BusinessError value)? businessError,
    TResult? Function(_UnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_BusinessError value)? businessError,
    TResult Function(_UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownError implements DefaultError {
  const factory _UnknownError(
      final dynamic error, final StackTrace stackTrace) = _$_UnknownError;

  @override
  dynamic get error;
  @override
  StackTrace get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownErrorCopyWith<_$_UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}
