// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductDetailsResponseModel product) success,
    required TResult Function(ApiErrorModel error) failed,
    required TResult Function() loading,
    required TResult Function(int imgIndex) imageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProductDetailsResponseModel product)? success,
    TResult? Function(ApiErrorModel error)? failed,
    TResult? Function()? loading,
    TResult? Function(int imgIndex)? imageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailsResponseModel product)? success,
    TResult Function(ApiErrorModel error)? failed,
    TResult Function()? loading,
    TResult Function(int imgIndex)? imageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductDetailsSuccessState value) success,
    required TResult Function(ProductDetailsFailedState value) failed,
    required TResult Function(ProductDetailsLoadingState value) loading,
    required TResult Function(ProductDetailsImageChangedState value)
        imageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductDetailsSuccessState value)? success,
    TResult? Function(ProductDetailsFailedState value)? failed,
    TResult? Function(ProductDetailsLoadingState value)? loading,
    TResult? Function(ProductDetailsImageChangedState value)? imageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductDetailsSuccessState value)? success,
    TResult Function(ProductDetailsFailedState value)? failed,
    TResult Function(ProductDetailsLoadingState value)? loading,
    TResult Function(ProductDetailsImageChangedState value)? imageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsStateCopyWith<$Res> {
  factory $ProductDetailsStateCopyWith(
          ProductDetailsState value, $Res Function(ProductDetailsState) then) =
      _$ProductDetailsStateCopyWithImpl<$Res, ProductDetailsState>;
}

/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res, $Val extends ProductDetailsState>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailsState
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
    extends _$ProductDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductDetailsState.initial()';
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
    required TResult Function(ProductDetailsResponseModel product) success,
    required TResult Function(ApiErrorModel error) failed,
    required TResult Function() loading,
    required TResult Function(int imgIndex) imageChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProductDetailsResponseModel product)? success,
    TResult? Function(ApiErrorModel error)? failed,
    TResult? Function()? loading,
    TResult? Function(int imgIndex)? imageChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailsResponseModel product)? success,
    TResult Function(ApiErrorModel error)? failed,
    TResult Function()? loading,
    TResult Function(int imgIndex)? imageChanged,
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
    required TResult Function(ProductDetailsSuccessState value) success,
    required TResult Function(ProductDetailsFailedState value) failed,
    required TResult Function(ProductDetailsLoadingState value) loading,
    required TResult Function(ProductDetailsImageChangedState value)
        imageChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductDetailsSuccessState value)? success,
    TResult? Function(ProductDetailsFailedState value)? failed,
    TResult? Function(ProductDetailsLoadingState value)? loading,
    TResult? Function(ProductDetailsImageChangedState value)? imageChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductDetailsSuccessState value)? success,
    TResult Function(ProductDetailsFailedState value)? failed,
    TResult Function(ProductDetailsLoadingState value)? loading,
    TResult Function(ProductDetailsImageChangedState value)? imageChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProductDetailsSuccessStateImplCopyWith<$Res> {
  factory _$$ProductDetailsSuccessStateImplCopyWith(
          _$ProductDetailsSuccessStateImpl value,
          $Res Function(_$ProductDetailsSuccessStateImpl) then) =
      __$$ProductDetailsSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductDetailsResponseModel product});
}

/// @nodoc
class __$$ProductDetailsSuccessStateImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res,
        _$ProductDetailsSuccessStateImpl>
    implements _$$ProductDetailsSuccessStateImplCopyWith<$Res> {
  __$$ProductDetailsSuccessStateImplCopyWithImpl(
      _$ProductDetailsSuccessStateImpl _value,
      $Res Function(_$ProductDetailsSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductDetailsSuccessStateImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailsResponseModel,
    ));
  }
}

/// @nodoc

class _$ProductDetailsSuccessStateImpl implements ProductDetailsSuccessState {
  const _$ProductDetailsSuccessStateImpl(this.product);

  @override
  final ProductDetailsResponseModel product;

  @override
  String toString() {
    return 'ProductDetailsState.success(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsSuccessStateImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsSuccessStateImplCopyWith<_$ProductDetailsSuccessStateImpl>
      get copyWith => __$$ProductDetailsSuccessStateImplCopyWithImpl<
          _$ProductDetailsSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductDetailsResponseModel product) success,
    required TResult Function(ApiErrorModel error) failed,
    required TResult Function() loading,
    required TResult Function(int imgIndex) imageChanged,
  }) {
    return success(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProductDetailsResponseModel product)? success,
    TResult? Function(ApiErrorModel error)? failed,
    TResult? Function()? loading,
    TResult? Function(int imgIndex)? imageChanged,
  }) {
    return success?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailsResponseModel product)? success,
    TResult Function(ApiErrorModel error)? failed,
    TResult Function()? loading,
    TResult Function(int imgIndex)? imageChanged,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductDetailsSuccessState value) success,
    required TResult Function(ProductDetailsFailedState value) failed,
    required TResult Function(ProductDetailsLoadingState value) loading,
    required TResult Function(ProductDetailsImageChangedState value)
        imageChanged,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductDetailsSuccessState value)? success,
    TResult? Function(ProductDetailsFailedState value)? failed,
    TResult? Function(ProductDetailsLoadingState value)? loading,
    TResult? Function(ProductDetailsImageChangedState value)? imageChanged,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductDetailsSuccessState value)? success,
    TResult Function(ProductDetailsFailedState value)? failed,
    TResult Function(ProductDetailsLoadingState value)? loading,
    TResult Function(ProductDetailsImageChangedState value)? imageChanged,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsSuccessState implements ProductDetailsState {
  const factory ProductDetailsSuccessState(
          final ProductDetailsResponseModel product) =
      _$ProductDetailsSuccessStateImpl;

  ProductDetailsResponseModel get product;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsSuccessStateImplCopyWith<_$ProductDetailsSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailsFailedStateImplCopyWith<$Res> {
  factory _$$ProductDetailsFailedStateImplCopyWith(
          _$ProductDetailsFailedStateImpl value,
          $Res Function(_$ProductDetailsFailedStateImpl) then) =
      __$$ProductDetailsFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel error});
}

/// @nodoc
class __$$ProductDetailsFailedStateImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res,
        _$ProductDetailsFailedStateImpl>
    implements _$$ProductDetailsFailedStateImplCopyWith<$Res> {
  __$$ProductDetailsFailedStateImplCopyWithImpl(
      _$ProductDetailsFailedStateImpl _value,
      $Res Function(_$ProductDetailsFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProductDetailsFailedStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ProductDetailsFailedStateImpl implements ProductDetailsFailedState {
  const _$ProductDetailsFailedStateImpl(this.error);

  @override
  final ApiErrorModel error;

  @override
  String toString() {
    return 'ProductDetailsState.failed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsFailedStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsFailedStateImplCopyWith<_$ProductDetailsFailedStateImpl>
      get copyWith => __$$ProductDetailsFailedStateImplCopyWithImpl<
          _$ProductDetailsFailedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductDetailsResponseModel product) success,
    required TResult Function(ApiErrorModel error) failed,
    required TResult Function() loading,
    required TResult Function(int imgIndex) imageChanged,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProductDetailsResponseModel product)? success,
    TResult? Function(ApiErrorModel error)? failed,
    TResult? Function()? loading,
    TResult? Function(int imgIndex)? imageChanged,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailsResponseModel product)? success,
    TResult Function(ApiErrorModel error)? failed,
    TResult Function()? loading,
    TResult Function(int imgIndex)? imageChanged,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductDetailsSuccessState value) success,
    required TResult Function(ProductDetailsFailedState value) failed,
    required TResult Function(ProductDetailsLoadingState value) loading,
    required TResult Function(ProductDetailsImageChangedState value)
        imageChanged,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductDetailsSuccessState value)? success,
    TResult? Function(ProductDetailsFailedState value)? failed,
    TResult? Function(ProductDetailsLoadingState value)? loading,
    TResult? Function(ProductDetailsImageChangedState value)? imageChanged,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductDetailsSuccessState value)? success,
    TResult Function(ProductDetailsFailedState value)? failed,
    TResult Function(ProductDetailsLoadingState value)? loading,
    TResult Function(ProductDetailsImageChangedState value)? imageChanged,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsFailedState implements ProductDetailsState {
  const factory ProductDetailsFailedState(final ApiErrorModel error) =
      _$ProductDetailsFailedStateImpl;

  ApiErrorModel get error;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsFailedStateImplCopyWith<_$ProductDetailsFailedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailsLoadingStateImplCopyWith<$Res> {
  factory _$$ProductDetailsLoadingStateImplCopyWith(
          _$ProductDetailsLoadingStateImpl value,
          $Res Function(_$ProductDetailsLoadingStateImpl) then) =
      __$$ProductDetailsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductDetailsLoadingStateImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res,
        _$ProductDetailsLoadingStateImpl>
    implements _$$ProductDetailsLoadingStateImplCopyWith<$Res> {
  __$$ProductDetailsLoadingStateImplCopyWithImpl(
      _$ProductDetailsLoadingStateImpl _value,
      $Res Function(_$ProductDetailsLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductDetailsLoadingStateImpl implements ProductDetailsLoadingState {
  const _$ProductDetailsLoadingStateImpl();

  @override
  String toString() {
    return 'ProductDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductDetailsResponseModel product) success,
    required TResult Function(ApiErrorModel error) failed,
    required TResult Function() loading,
    required TResult Function(int imgIndex) imageChanged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProductDetailsResponseModel product)? success,
    TResult? Function(ApiErrorModel error)? failed,
    TResult? Function()? loading,
    TResult? Function(int imgIndex)? imageChanged,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailsResponseModel product)? success,
    TResult Function(ApiErrorModel error)? failed,
    TResult Function()? loading,
    TResult Function(int imgIndex)? imageChanged,
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
    required TResult Function(ProductDetailsSuccessState value) success,
    required TResult Function(ProductDetailsFailedState value) failed,
    required TResult Function(ProductDetailsLoadingState value) loading,
    required TResult Function(ProductDetailsImageChangedState value)
        imageChanged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductDetailsSuccessState value)? success,
    TResult? Function(ProductDetailsFailedState value)? failed,
    TResult? Function(ProductDetailsLoadingState value)? loading,
    TResult? Function(ProductDetailsImageChangedState value)? imageChanged,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductDetailsSuccessState value)? success,
    TResult Function(ProductDetailsFailedState value)? failed,
    TResult Function(ProductDetailsLoadingState value)? loading,
    TResult Function(ProductDetailsImageChangedState value)? imageChanged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsLoadingState implements ProductDetailsState {
  const factory ProductDetailsLoadingState() = _$ProductDetailsLoadingStateImpl;
}

/// @nodoc
abstract class _$$ProductDetailsImageChangedStateImplCopyWith<$Res> {
  factory _$$ProductDetailsImageChangedStateImplCopyWith(
          _$ProductDetailsImageChangedStateImpl value,
          $Res Function(_$ProductDetailsImageChangedStateImpl) then) =
      __$$ProductDetailsImageChangedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int imgIndex});
}

/// @nodoc
class __$$ProductDetailsImageChangedStateImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res,
        _$ProductDetailsImageChangedStateImpl>
    implements _$$ProductDetailsImageChangedStateImplCopyWith<$Res> {
  __$$ProductDetailsImageChangedStateImplCopyWithImpl(
      _$ProductDetailsImageChangedStateImpl _value,
      $Res Function(_$ProductDetailsImageChangedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgIndex = null,
  }) {
    return _then(_$ProductDetailsImageChangedStateImpl(
      null == imgIndex
          ? _value.imgIndex
          : imgIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProductDetailsImageChangedStateImpl
    implements ProductDetailsImageChangedState {
  const _$ProductDetailsImageChangedStateImpl(this.imgIndex);

  @override
  final int imgIndex;

  @override
  String toString() {
    return 'ProductDetailsState.imageChanged(imgIndex: $imgIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsImageChangedStateImpl &&
            (identical(other.imgIndex, imgIndex) ||
                other.imgIndex == imgIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imgIndex);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsImageChangedStateImplCopyWith<
          _$ProductDetailsImageChangedStateImpl>
      get copyWith => __$$ProductDetailsImageChangedStateImplCopyWithImpl<
          _$ProductDetailsImageChangedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProductDetailsResponseModel product) success,
    required TResult Function(ApiErrorModel error) failed,
    required TResult Function() loading,
    required TResult Function(int imgIndex) imageChanged,
  }) {
    return imageChanged(imgIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProductDetailsResponseModel product)? success,
    TResult? Function(ApiErrorModel error)? failed,
    TResult? Function()? loading,
    TResult? Function(int imgIndex)? imageChanged,
  }) {
    return imageChanged?.call(imgIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProductDetailsResponseModel product)? success,
    TResult Function(ApiErrorModel error)? failed,
    TResult Function()? loading,
    TResult Function(int imgIndex)? imageChanged,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(imgIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductDetailsSuccessState value) success,
    required TResult Function(ProductDetailsFailedState value) failed,
    required TResult Function(ProductDetailsLoadingState value) loading,
    required TResult Function(ProductDetailsImageChangedState value)
        imageChanged,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductDetailsSuccessState value)? success,
    TResult? Function(ProductDetailsFailedState value)? failed,
    TResult? Function(ProductDetailsLoadingState value)? loading,
    TResult? Function(ProductDetailsImageChangedState value)? imageChanged,
  }) {
    return imageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductDetailsSuccessState value)? success,
    TResult Function(ProductDetailsFailedState value)? failed,
    TResult Function(ProductDetailsLoadingState value)? loading,
    TResult Function(ProductDetailsImageChangedState value)? imageChanged,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsImageChangedState implements ProductDetailsState {
  const factory ProductDetailsImageChangedState(final int imgIndex) =
      _$ProductDetailsImageChangedStateImpl;

  int get imgIndex;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsImageChangedStateImplCopyWith<
          _$ProductDetailsImageChangedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
