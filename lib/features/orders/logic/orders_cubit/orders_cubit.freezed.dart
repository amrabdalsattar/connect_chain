// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrdersResponseModel orderResponseModel) success,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(int? statusIndex) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrdersResponseModel orderResponseModel)? success,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(int? statusIndex)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrdersResponseModel orderResponseModel)? success,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(int? statusIndex)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FetchOrdersLoading value) loading,
    required TResult Function(FetchOrdersSuccess value) success,
    required TResult Function(FetchOrdersError value) error,
    required TResult Function(FetchOrdersByStatus value) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FetchOrdersLoading value)? loading,
    TResult? Function(FetchOrdersSuccess value)? success,
    TResult? Function(FetchOrdersError value)? error,
    TResult? Function(FetchOrdersByStatus value)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FetchOrdersLoading value)? loading,
    TResult Function(FetchOrdersSuccess value)? success,
    TResult Function(FetchOrdersError value)? error,
    TResult Function(FetchOrdersByStatus value)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersState
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
    extends _$OrdersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OrdersState.initial()';
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
    required TResult Function() loading,
    required TResult Function(OrdersResponseModel orderResponseModel) success,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(int? statusIndex) statusChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrdersResponseModel orderResponseModel)? success,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(int? statusIndex)? statusChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrdersResponseModel orderResponseModel)? success,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(int? statusIndex)? statusChanged,
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
    required TResult Function(FetchOrdersLoading value) loading,
    required TResult Function(FetchOrdersSuccess value) success,
    required TResult Function(FetchOrdersError value) error,
    required TResult Function(FetchOrdersByStatus value) statusChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FetchOrdersLoading value)? loading,
    TResult? Function(FetchOrdersSuccess value)? success,
    TResult? Function(FetchOrdersError value)? error,
    TResult? Function(FetchOrdersByStatus value)? statusChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FetchOrdersLoading value)? loading,
    TResult Function(FetchOrdersSuccess value)? success,
    TResult Function(FetchOrdersError value)? error,
    TResult Function(FetchOrdersByStatus value)? statusChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrdersState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchOrdersLoadingImplCopyWith<$Res> {
  factory _$$FetchOrdersLoadingImplCopyWith(_$FetchOrdersLoadingImpl value,
          $Res Function(_$FetchOrdersLoadingImpl) then) =
      __$$FetchOrdersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchOrdersLoadingImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$FetchOrdersLoadingImpl>
    implements _$$FetchOrdersLoadingImplCopyWith<$Res> {
  __$$FetchOrdersLoadingImplCopyWithImpl(_$FetchOrdersLoadingImpl _value,
      $Res Function(_$FetchOrdersLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchOrdersLoadingImpl implements FetchOrdersLoading {
  const _$FetchOrdersLoadingImpl();

  @override
  String toString() {
    return 'OrdersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchOrdersLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrdersResponseModel orderResponseModel) success,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(int? statusIndex) statusChanged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrdersResponseModel orderResponseModel)? success,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(int? statusIndex)? statusChanged,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrdersResponseModel orderResponseModel)? success,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(int? statusIndex)? statusChanged,
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
    required TResult Function(FetchOrdersLoading value) loading,
    required TResult Function(FetchOrdersSuccess value) success,
    required TResult Function(FetchOrdersError value) error,
    required TResult Function(FetchOrdersByStatus value) statusChanged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FetchOrdersLoading value)? loading,
    TResult? Function(FetchOrdersSuccess value)? success,
    TResult? Function(FetchOrdersError value)? error,
    TResult? Function(FetchOrdersByStatus value)? statusChanged,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FetchOrdersLoading value)? loading,
    TResult Function(FetchOrdersSuccess value)? success,
    TResult Function(FetchOrdersError value)? error,
    TResult Function(FetchOrdersByStatus value)? statusChanged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchOrdersLoading implements OrdersState {
  const factory FetchOrdersLoading() = _$FetchOrdersLoadingImpl;
}

/// @nodoc
abstract class _$$FetchOrdersSuccessImplCopyWith<$Res> {
  factory _$$FetchOrdersSuccessImplCopyWith(_$FetchOrdersSuccessImpl value,
          $Res Function(_$FetchOrdersSuccessImpl) then) =
      __$$FetchOrdersSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrdersResponseModel orderResponseModel});
}

/// @nodoc
class __$$FetchOrdersSuccessImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$FetchOrdersSuccessImpl>
    implements _$$FetchOrdersSuccessImplCopyWith<$Res> {
  __$$FetchOrdersSuccessImplCopyWithImpl(_$FetchOrdersSuccessImpl _value,
      $Res Function(_$FetchOrdersSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderResponseModel = null,
  }) {
    return _then(_$FetchOrdersSuccessImpl(
      null == orderResponseModel
          ? _value.orderResponseModel
          : orderResponseModel // ignore: cast_nullable_to_non_nullable
              as OrdersResponseModel,
    ));
  }
}

/// @nodoc

class _$FetchOrdersSuccessImpl implements FetchOrdersSuccess {
  const _$FetchOrdersSuccessImpl(this.orderResponseModel);

  @override
  final OrdersResponseModel orderResponseModel;

  @override
  String toString() {
    return 'OrdersState.success(orderResponseModel: $orderResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOrdersSuccessImpl &&
            (identical(other.orderResponseModel, orderResponseModel) ||
                other.orderResponseModel == orderResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderResponseModel);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchOrdersSuccessImplCopyWith<_$FetchOrdersSuccessImpl> get copyWith =>
      __$$FetchOrdersSuccessImplCopyWithImpl<_$FetchOrdersSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrdersResponseModel orderResponseModel) success,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(int? statusIndex) statusChanged,
  }) {
    return success(orderResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrdersResponseModel orderResponseModel)? success,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(int? statusIndex)? statusChanged,
  }) {
    return success?.call(orderResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrdersResponseModel orderResponseModel)? success,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(int? statusIndex)? statusChanged,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(orderResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FetchOrdersLoading value) loading,
    required TResult Function(FetchOrdersSuccess value) success,
    required TResult Function(FetchOrdersError value) error,
    required TResult Function(FetchOrdersByStatus value) statusChanged,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FetchOrdersLoading value)? loading,
    TResult? Function(FetchOrdersSuccess value)? success,
    TResult? Function(FetchOrdersError value)? error,
    TResult? Function(FetchOrdersByStatus value)? statusChanged,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FetchOrdersLoading value)? loading,
    TResult Function(FetchOrdersSuccess value)? success,
    TResult Function(FetchOrdersError value)? error,
    TResult Function(FetchOrdersByStatus value)? statusChanged,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FetchOrdersSuccess implements OrdersState {
  const factory FetchOrdersSuccess(
      final OrdersResponseModel orderResponseModel) = _$FetchOrdersSuccessImpl;

  OrdersResponseModel get orderResponseModel;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchOrdersSuccessImplCopyWith<_$FetchOrdersSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchOrdersErrorImplCopyWith<$Res> {
  factory _$$FetchOrdersErrorImplCopyWith(_$FetchOrdersErrorImpl value,
          $Res Function(_$FetchOrdersErrorImpl) then) =
      __$$FetchOrdersErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel error});
}

/// @nodoc
class __$$FetchOrdersErrorImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$FetchOrdersErrorImpl>
    implements _$$FetchOrdersErrorImplCopyWith<$Res> {
  __$$FetchOrdersErrorImplCopyWithImpl(_$FetchOrdersErrorImpl _value,
      $Res Function(_$FetchOrdersErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FetchOrdersErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$FetchOrdersErrorImpl implements FetchOrdersError {
  const _$FetchOrdersErrorImpl(this.error);

  @override
  final ApiErrorModel error;

  @override
  String toString() {
    return 'OrdersState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOrdersErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchOrdersErrorImplCopyWith<_$FetchOrdersErrorImpl> get copyWith =>
      __$$FetchOrdersErrorImplCopyWithImpl<_$FetchOrdersErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrdersResponseModel orderResponseModel) success,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(int? statusIndex) statusChanged,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrdersResponseModel orderResponseModel)? success,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(int? statusIndex)? statusChanged,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrdersResponseModel orderResponseModel)? success,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(int? statusIndex)? statusChanged,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FetchOrdersLoading value) loading,
    required TResult Function(FetchOrdersSuccess value) success,
    required TResult Function(FetchOrdersError value) error,
    required TResult Function(FetchOrdersByStatus value) statusChanged,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FetchOrdersLoading value)? loading,
    TResult? Function(FetchOrdersSuccess value)? success,
    TResult? Function(FetchOrdersError value)? error,
    TResult? Function(FetchOrdersByStatus value)? statusChanged,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FetchOrdersLoading value)? loading,
    TResult Function(FetchOrdersSuccess value)? success,
    TResult Function(FetchOrdersError value)? error,
    TResult Function(FetchOrdersByStatus value)? statusChanged,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FetchOrdersError implements OrdersState {
  const factory FetchOrdersError(final ApiErrorModel error) =
      _$FetchOrdersErrorImpl;

  ApiErrorModel get error;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchOrdersErrorImplCopyWith<_$FetchOrdersErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchOrdersByStatusImplCopyWith<$Res> {
  factory _$$FetchOrdersByStatusImplCopyWith(_$FetchOrdersByStatusImpl value,
          $Res Function(_$FetchOrdersByStatusImpl) then) =
      __$$FetchOrdersByStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? statusIndex});
}

/// @nodoc
class __$$FetchOrdersByStatusImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$FetchOrdersByStatusImpl>
    implements _$$FetchOrdersByStatusImplCopyWith<$Res> {
  __$$FetchOrdersByStatusImplCopyWithImpl(_$FetchOrdersByStatusImpl _value,
      $Res Function(_$FetchOrdersByStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusIndex = freezed,
  }) {
    return _then(_$FetchOrdersByStatusImpl(
      freezed == statusIndex
          ? _value.statusIndex
          : statusIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FetchOrdersByStatusImpl implements FetchOrdersByStatus {
  const _$FetchOrdersByStatusImpl(this.statusIndex);

  @override
  final int? statusIndex;

  @override
  String toString() {
    return 'OrdersState.statusChanged(statusIndex: $statusIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOrdersByStatusImpl &&
            (identical(other.statusIndex, statusIndex) ||
                other.statusIndex == statusIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusIndex);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchOrdersByStatusImplCopyWith<_$FetchOrdersByStatusImpl> get copyWith =>
      __$$FetchOrdersByStatusImplCopyWithImpl<_$FetchOrdersByStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrdersResponseModel orderResponseModel) success,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(int? statusIndex) statusChanged,
  }) {
    return statusChanged(statusIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrdersResponseModel orderResponseModel)? success,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(int? statusIndex)? statusChanged,
  }) {
    return statusChanged?.call(statusIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrdersResponseModel orderResponseModel)? success,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(int? statusIndex)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(statusIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FetchOrdersLoading value) loading,
    required TResult Function(FetchOrdersSuccess value) success,
    required TResult Function(FetchOrdersError value) error,
    required TResult Function(FetchOrdersByStatus value) statusChanged,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FetchOrdersLoading value)? loading,
    TResult? Function(FetchOrdersSuccess value)? success,
    TResult? Function(FetchOrdersError value)? error,
    TResult? Function(FetchOrdersByStatus value)? statusChanged,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FetchOrdersLoading value)? loading,
    TResult Function(FetchOrdersSuccess value)? success,
    TResult Function(FetchOrdersError value)? error,
    TResult Function(FetchOrdersByStatus value)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class FetchOrdersByStatus implements OrdersState {
  const factory FetchOrdersByStatus(final int? statusIndex) =
      _$FetchOrdersByStatusImpl;

  int? get statusIndex;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchOrdersByStatusImplCopyWith<_$FetchOrdersByStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
