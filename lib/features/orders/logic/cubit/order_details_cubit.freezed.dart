// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderDetailsResponseModel ordersResponseModel)
        success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderDetailsResponseModel ordersResponseModel)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderDetailsResponseModel ordersResponseModel)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(fetchOrderDetailsSuccess value) success,
    required TResult Function(fetchOrderDetailsLoading value) loading,
    required TResult Function(fetchOrderDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(fetchOrderDetailsSuccess value)? success,
    TResult? Function(fetchOrderDetailsLoading value)? loading,
    TResult? Function(fetchOrderDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(fetchOrderDetailsSuccess value)? success,
    TResult Function(fetchOrderDetailsLoading value)? loading,
    TResult Function(fetchOrderDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsStateCopyWith<$Res> {
  factory $OrderDetailsStateCopyWith(
          OrderDetailsState value, $Res Function(OrderDetailsState) then) =
      _$OrderDetailsStateCopyWithImpl<$Res, OrderDetailsState>;
}

/// @nodoc
class _$OrderDetailsStateCopyWithImpl<$Res, $Val extends OrderDetailsState>
    implements $OrderDetailsStateCopyWith<$Res> {
  _$OrderDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrderDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OrderDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderDetailsResponseModel ordersResponseModel)
        success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderDetailsResponseModel ordersResponseModel)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderDetailsResponseModel ordersResponseModel)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
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
    required TResult Function(fetchOrderDetailsSuccess value) success,
    required TResult Function(fetchOrderDetailsLoading value) loading,
    required TResult Function(fetchOrderDetailsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(fetchOrderDetailsSuccess value)? success,
    TResult? Function(fetchOrderDetailsLoading value)? loading,
    TResult? Function(fetchOrderDetailsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(fetchOrderDetailsSuccess value)? success,
    TResult Function(fetchOrderDetailsLoading value)? loading,
    TResult Function(fetchOrderDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$fetchOrderDetailsSuccessImplCopyWith<$Res> {
  factory _$$fetchOrderDetailsSuccessImplCopyWith(
          _$fetchOrderDetailsSuccessImpl value,
          $Res Function(_$fetchOrderDetailsSuccessImpl) then) =
      __$$fetchOrderDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderDetailsResponseModel ordersResponseModel});
}

/// @nodoc
class __$$fetchOrderDetailsSuccessImplCopyWithImpl<$Res>
    extends _$OrderDetailsStateCopyWithImpl<$Res,
        _$fetchOrderDetailsSuccessImpl>
    implements _$$fetchOrderDetailsSuccessImplCopyWith<$Res> {
  __$$fetchOrderDetailsSuccessImplCopyWithImpl(
      _$fetchOrderDetailsSuccessImpl _value,
      $Res Function(_$fetchOrderDetailsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponseModel = null,
  }) {
    return _then(_$fetchOrderDetailsSuccessImpl(
      null == ordersResponseModel
          ? _value.ordersResponseModel
          : ordersResponseModel // ignore: cast_nullable_to_non_nullable
              as OrderDetailsResponseModel,
    ));
  }
}

/// @nodoc

class _$fetchOrderDetailsSuccessImpl implements fetchOrderDetailsSuccess {
  const _$fetchOrderDetailsSuccessImpl(this.ordersResponseModel);

  @override
  final OrderDetailsResponseModel ordersResponseModel;

  @override
  String toString() {
    return 'OrderDetailsState.success(ordersResponseModel: $ordersResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$fetchOrderDetailsSuccessImpl &&
            (identical(other.ordersResponseModel, ordersResponseModel) ||
                other.ordersResponseModel == ordersResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponseModel);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$fetchOrderDetailsSuccessImplCopyWith<_$fetchOrderDetailsSuccessImpl>
      get copyWith => __$$fetchOrderDetailsSuccessImplCopyWithImpl<
          _$fetchOrderDetailsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderDetailsResponseModel ordersResponseModel)
        success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return success(ordersResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderDetailsResponseModel ordersResponseModel)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return success?.call(ordersResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderDetailsResponseModel ordersResponseModel)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(ordersResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(fetchOrderDetailsSuccess value) success,
    required TResult Function(fetchOrderDetailsLoading value) loading,
    required TResult Function(fetchOrderDetailsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(fetchOrderDetailsSuccess value)? success,
    TResult? Function(fetchOrderDetailsLoading value)? loading,
    TResult? Function(fetchOrderDetailsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(fetchOrderDetailsSuccess value)? success,
    TResult Function(fetchOrderDetailsLoading value)? loading,
    TResult Function(fetchOrderDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class fetchOrderDetailsSuccess implements OrderDetailsState {
  const factory fetchOrderDetailsSuccess(
          final OrderDetailsResponseModel ordersResponseModel) =
      _$fetchOrderDetailsSuccessImpl;

  OrderDetailsResponseModel get ordersResponseModel;

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$fetchOrderDetailsSuccessImplCopyWith<_$fetchOrderDetailsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$fetchOrderDetailsLoadingImplCopyWith<$Res> {
  factory _$$fetchOrderDetailsLoadingImplCopyWith(
          _$fetchOrderDetailsLoadingImpl value,
          $Res Function(_$fetchOrderDetailsLoadingImpl) then) =
      __$$fetchOrderDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$fetchOrderDetailsLoadingImplCopyWithImpl<$Res>
    extends _$OrderDetailsStateCopyWithImpl<$Res,
        _$fetchOrderDetailsLoadingImpl>
    implements _$$fetchOrderDetailsLoadingImplCopyWith<$Res> {
  __$$fetchOrderDetailsLoadingImplCopyWithImpl(
      _$fetchOrderDetailsLoadingImpl _value,
      $Res Function(_$fetchOrderDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$fetchOrderDetailsLoadingImpl implements fetchOrderDetailsLoading {
  const _$fetchOrderDetailsLoadingImpl();

  @override
  String toString() {
    return 'OrderDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$fetchOrderDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderDetailsResponseModel ordersResponseModel)
        success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderDetailsResponseModel ordersResponseModel)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderDetailsResponseModel ordersResponseModel)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
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
    required TResult Function(fetchOrderDetailsSuccess value) success,
    required TResult Function(fetchOrderDetailsLoading value) loading,
    required TResult Function(fetchOrderDetailsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(fetchOrderDetailsSuccess value)? success,
    TResult? Function(fetchOrderDetailsLoading value)? loading,
    TResult? Function(fetchOrderDetailsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(fetchOrderDetailsSuccess value)? success,
    TResult Function(fetchOrderDetailsLoading value)? loading,
    TResult Function(fetchOrderDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class fetchOrderDetailsLoading implements OrderDetailsState {
  const factory fetchOrderDetailsLoading() = _$fetchOrderDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$fetchOrderDetailsErrorImplCopyWith<$Res> {
  factory _$$fetchOrderDetailsErrorImplCopyWith(
          _$fetchOrderDetailsErrorImpl value,
          $Res Function(_$fetchOrderDetailsErrorImpl) then) =
      __$$fetchOrderDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$fetchOrderDetailsErrorImplCopyWithImpl<$Res>
    extends _$OrderDetailsStateCopyWithImpl<$Res, _$fetchOrderDetailsErrorImpl>
    implements _$$fetchOrderDetailsErrorImplCopyWith<$Res> {
  __$$fetchOrderDetailsErrorImplCopyWithImpl(
      _$fetchOrderDetailsErrorImpl _value,
      $Res Function(_$fetchOrderDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$fetchOrderDetailsErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$fetchOrderDetailsErrorImpl implements fetchOrderDetailsError {
  const _$fetchOrderDetailsErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'OrderDetailsState.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$fetchOrderDetailsErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$fetchOrderDetailsErrorImplCopyWith<_$fetchOrderDetailsErrorImpl>
      get copyWith => __$$fetchOrderDetailsErrorImplCopyWithImpl<
          _$fetchOrderDetailsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderDetailsResponseModel ordersResponseModel)
        success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderDetailsResponseModel ordersResponseModel)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderDetailsResponseModel ordersResponseModel)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(fetchOrderDetailsSuccess value) success,
    required TResult Function(fetchOrderDetailsLoading value) loading,
    required TResult Function(fetchOrderDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(fetchOrderDetailsSuccess value)? success,
    TResult? Function(fetchOrderDetailsLoading value)? loading,
    TResult? Function(fetchOrderDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(fetchOrderDetailsSuccess value)? success,
    TResult Function(fetchOrderDetailsLoading value)? loading,
    TResult Function(fetchOrderDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class fetchOrderDetailsError implements OrderDetailsState {
  const factory fetchOrderDetailsError(final ApiErrorModel apiErrorModel) =
      _$fetchOrderDetailsErrorImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$fetchOrderDetailsErrorImplCopyWith<_$fetchOrderDetailsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
