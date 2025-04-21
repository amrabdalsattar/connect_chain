// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManageProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageProductsStateCopyWith<$Res> {
  factory $ManageProductsStateCopyWith(
          ManageProductsState value, $Res Function(ManageProductsState) then) =
      _$ManageProductsStateCopyWithImpl<$Res, ManageProductsState>;
}

/// @nodoc
class _$ManageProductsStateCopyWithImpl<$Res, $Val extends ManageProductsState>
    implements $ManageProductsStateCopyWith<$Res> {
  _$ManageProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageProductsState
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
    extends _$ManageProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ManageProductsState.initial()';
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
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
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
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ManageProductsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ManageProductsSuccessStateImplCopyWith<$Res> {
  factory _$$ManageProductsSuccessStateImplCopyWith(
          _$ManageProductsSuccessStateImpl value,
          $Res Function(_$ManageProductsSuccessStateImpl) then) =
      __$$ManageProductsSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductDataModel> products});
}

/// @nodoc
class __$$ManageProductsSuccessStateImplCopyWithImpl<$Res>
    extends _$ManageProductsStateCopyWithImpl<$Res,
        _$ManageProductsSuccessStateImpl>
    implements _$$ManageProductsSuccessStateImplCopyWith<$Res> {
  __$$ManageProductsSuccessStateImplCopyWithImpl(
      _$ManageProductsSuccessStateImpl _value,
      $Res Function(_$ManageProductsSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ManageProductsSuccessStateImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
    ));
  }
}

/// @nodoc

class _$ManageProductsSuccessStateImpl implements ManageProductsSuccessState {
  const _$ManageProductsSuccessStateImpl(final List<ProductDataModel> products)
      : _products = products;

  final List<ProductDataModel> _products;
  @override
  List<ProductDataModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ManageProductsState.success(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageProductsSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageProductsSuccessStateImplCopyWith<_$ManageProductsSuccessStateImpl>
      get copyWith => __$$ManageProductsSuccessStateImplCopyWithImpl<
          _$ManageProductsSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ManageProductsSuccessState implements ManageProductsState {
  const factory ManageProductsSuccessState(
      final List<ProductDataModel> products) = _$ManageProductsSuccessStateImpl;

  List<ProductDataModel> get products;

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageProductsSuccessStateImplCopyWith<_$ManageProductsSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ManageProductsLoadingStateImplCopyWith<$Res> {
  factory _$$ManageProductsLoadingStateImplCopyWith(
          _$ManageProductsLoadingStateImpl value,
          $Res Function(_$ManageProductsLoadingStateImpl) then) =
      __$$ManageProductsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ManageProductsLoadingStateImplCopyWithImpl<$Res>
    extends _$ManageProductsStateCopyWithImpl<$Res,
        _$ManageProductsLoadingStateImpl>
    implements _$$ManageProductsLoadingStateImplCopyWith<$Res> {
  __$$ManageProductsLoadingStateImplCopyWithImpl(
      _$ManageProductsLoadingStateImpl _value,
      $Res Function(_$ManageProductsLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ManageProductsLoadingStateImpl implements ManageProductsLoadingState {
  const _$ManageProductsLoadingStateImpl();

  @override
  String toString() {
    return 'ManageProductsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageProductsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
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
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ManageProductsLoadingState implements ManageProductsState {
  const factory ManageProductsLoadingState() = _$ManageProductsLoadingStateImpl;
}

/// @nodoc
abstract class _$$ManageProductsErrorStateImplCopyWith<$Res> {
  factory _$$ManageProductsErrorStateImplCopyWith(
          _$ManageProductsErrorStateImpl value,
          $Res Function(_$ManageProductsErrorStateImpl) then) =
      __$$ManageProductsErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel error});
}

/// @nodoc
class __$$ManageProductsErrorStateImplCopyWithImpl<$Res>
    extends _$ManageProductsStateCopyWithImpl<$Res,
        _$ManageProductsErrorStateImpl>
    implements _$$ManageProductsErrorStateImplCopyWith<$Res> {
  __$$ManageProductsErrorStateImplCopyWithImpl(
      _$ManageProductsErrorStateImpl _value,
      $Res Function(_$ManageProductsErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ManageProductsErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ManageProductsErrorStateImpl implements ManageProductsErrorState {
  const _$ManageProductsErrorStateImpl(this.error);

  @override
  final ApiErrorModel error;

  @override
  String toString() {
    return 'ManageProductsState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageProductsErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageProductsErrorStateImplCopyWith<_$ManageProductsErrorStateImpl>
      get copyWith => __$$ManageProductsErrorStateImplCopyWithImpl<
          _$ManageProductsErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
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
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ManageProductsErrorState implements ManageProductsState {
  const factory ManageProductsErrorState(final ApiErrorModel error) =
      _$ManageProductsErrorStateImpl;

  ApiErrorModel get error;

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageProductsErrorStateImplCopyWith<_$ManageProductsErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyProductsListImplCopyWith<$Res> {
  factory _$$EmptyProductsListImplCopyWith(_$EmptyProductsListImpl value,
          $Res Function(_$EmptyProductsListImpl) then) =
      __$$EmptyProductsListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$EmptyProductsListImplCopyWithImpl<$Res>
    extends _$ManageProductsStateCopyWithImpl<$Res, _$EmptyProductsListImpl>
    implements _$$EmptyProductsListImplCopyWith<$Res> {
  __$$EmptyProductsListImplCopyWithImpl(_$EmptyProductsListImpl _value,
      $Res Function(_$EmptyProductsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$EmptyProductsListImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmptyProductsListImpl implements EmptyProductsList {
  const _$EmptyProductsListImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ManageProductsState.emptyProductsList(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyProductsListImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyProductsListImplCopyWith<_$EmptyProductsListImpl> get copyWith =>
      __$$EmptyProductsListImplCopyWithImpl<_$EmptyProductsListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return emptyProductsList(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return emptyProductsList?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (emptyProductsList != null) {
      return emptyProductsList(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return emptyProductsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return emptyProductsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (emptyProductsList != null) {
      return emptyProductsList(this);
    }
    return orElse();
  }
}

abstract class EmptyProductsList implements ManageProductsState {
  const factory EmptyProductsList(final String errorMessage) =
      _$EmptyProductsListImpl;

  String get errorMessage;

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyProductsListImplCopyWith<_$EmptyProductsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshProductsStateImplCopyWith<$Res> {
  factory _$$RefreshProductsStateImplCopyWith(_$RefreshProductsStateImpl value,
          $Res Function(_$RefreshProductsStateImpl) then) =
      __$$RefreshProductsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshProductsStateImplCopyWithImpl<$Res>
    extends _$ManageProductsStateCopyWithImpl<$Res, _$RefreshProductsStateImpl>
    implements _$$RefreshProductsStateImplCopyWith<$Res> {
  __$$RefreshProductsStateImplCopyWithImpl(_$RefreshProductsStateImpl _value,
      $Res Function(_$RefreshProductsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshProductsStateImpl implements RefreshProductsState {
  const _$RefreshProductsStateImpl();

  @override
  String toString() {
    return 'ManageProductsState.refreshProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshProductsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return refreshProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return refreshProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (refreshProducts != null) {
      return refreshProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return refreshProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return refreshProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (refreshProducts != null) {
      return refreshProducts(this);
    }
    return orElse();
  }
}

abstract class RefreshProductsState implements ManageProductsState {
  const factory RefreshProductsState() = _$RefreshProductsStateImpl;
}

/// @nodoc
abstract class _$$ToggleRefreshButtonVisibilityStateImplCopyWith<$Res> {
  factory _$$ToggleRefreshButtonVisibilityStateImplCopyWith(
          _$ToggleRefreshButtonVisibilityStateImpl value,
          $Res Function(_$ToggleRefreshButtonVisibilityStateImpl) then) =
      __$$ToggleRefreshButtonVisibilityStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isVisible});
}

/// @nodoc
class __$$ToggleRefreshButtonVisibilityStateImplCopyWithImpl<$Res>
    extends _$ManageProductsStateCopyWithImpl<$Res,
        _$ToggleRefreshButtonVisibilityStateImpl>
    implements _$$ToggleRefreshButtonVisibilityStateImplCopyWith<$Res> {
  __$$ToggleRefreshButtonVisibilityStateImplCopyWithImpl(
      _$ToggleRefreshButtonVisibilityStateImpl _value,
      $Res Function(_$ToggleRefreshButtonVisibilityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = null,
  }) {
    return _then(_$ToggleRefreshButtonVisibilityStateImpl(
      null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleRefreshButtonVisibilityStateImpl
    implements ToggleRefreshButtonVisibilityState {
  const _$ToggleRefreshButtonVisibilityStateImpl(this.isVisible);

  @override
  final bool isVisible;

  @override
  String toString() {
    return 'ManageProductsState.toggleRefreshButtonVisibility(isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleRefreshButtonVisibilityStateImpl &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVisible);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleRefreshButtonVisibilityStateImplCopyWith<
          _$ToggleRefreshButtonVisibilityStateImpl>
      get copyWith => __$$ToggleRefreshButtonVisibilityStateImplCopyWithImpl<
          _$ToggleRefreshButtonVisibilityStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return toggleRefreshButtonVisibility(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return toggleRefreshButtonVisibility?.call(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (toggleRefreshButtonVisibility != null) {
      return toggleRefreshButtonVisibility(isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return toggleRefreshButtonVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return toggleRefreshButtonVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (toggleRefreshButtonVisibility != null) {
      return toggleRefreshButtonVisibility(this);
    }
    return orElse();
  }
}

abstract class ToggleRefreshButtonVisibilityState
    implements ManageProductsState {
  const factory ToggleRefreshButtonVisibilityState(final bool isVisible) =
      _$ToggleRefreshButtonVisibilityStateImpl;

  bool get isVisible;

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleRefreshButtonVisibilityStateImplCopyWith<
          _$ToggleRefreshButtonVisibilityStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ManageProductsDeleteStateImplCopyWith<$Res> {
  factory _$$ManageProductsDeleteStateImplCopyWith(
          _$ManageProductsDeleteStateImpl value,
          $Res Function(_$ManageProductsDeleteStateImpl) then) =
      __$$ManageProductsDeleteStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ManageProductsDeleteStateImplCopyWithImpl<$Res>
    extends _$ManageProductsStateCopyWithImpl<$Res,
        _$ManageProductsDeleteStateImpl>
    implements _$$ManageProductsDeleteStateImplCopyWith<$Res> {
  __$$ManageProductsDeleteStateImplCopyWithImpl(
      _$ManageProductsDeleteStateImpl _value,
      $Res Function(_$ManageProductsDeleteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ManageProductsDeleteStateImpl implements ManageProductsDeleteState {
  const _$ManageProductsDeleteStateImpl();

  @override
  String toString() {
    return 'ManageProductsState.delete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageProductsDeleteStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class ManageProductsDeleteState implements ManageProductsState {
  const factory ManageProductsDeleteState() = _$ManageProductsDeleteStateImpl;
}

/// @nodoc
abstract class _$$ManageEditsDeleteStateImplCopyWith<$Res> {
  factory _$$ManageEditsDeleteStateImplCopyWith(
          _$ManageEditsDeleteStateImpl value,
          $Res Function(_$ManageEditsDeleteStateImpl) then) =
      __$$ManageEditsDeleteStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductDataModel product});
}

/// @nodoc
class __$$ManageEditsDeleteStateImplCopyWithImpl<$Res>
    extends _$ManageProductsStateCopyWithImpl<$Res,
        _$ManageEditsDeleteStateImpl>
    implements _$$ManageEditsDeleteStateImplCopyWith<$Res> {
  __$$ManageEditsDeleteStateImplCopyWithImpl(
      _$ManageEditsDeleteStateImpl _value,
      $Res Function(_$ManageEditsDeleteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ManageEditsDeleteStateImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel,
    ));
  }
}

/// @nodoc

class _$ManageEditsDeleteStateImpl implements ManageEditsDeleteState {
  const _$ManageEditsDeleteStateImpl(this.product);

  @override
  final ProductDataModel product;

  @override
  String toString() {
    return 'ManageProductsState.edit(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageEditsDeleteStateImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageEditsDeleteStateImplCopyWith<_$ManageEditsDeleteStateImpl>
      get copyWith => __$$ManageEditsDeleteStateImplCopyWithImpl<
          _$ManageEditsDeleteStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return edit(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return edit?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class ManageEditsDeleteState implements ManageProductsState {
  const factory ManageEditsDeleteState(final ProductDataModel product) =
      _$ManageEditsDeleteStateImpl;

  ProductDataModel get product;

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageEditsDeleteStateImplCopyWith<_$ManageEditsDeleteStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MangeProductsOperationSuccessStateImplCopyWith<$Res> {
  factory _$$MangeProductsOperationSuccessStateImplCopyWith(
          _$MangeProductsOperationSuccessStateImpl value,
          $Res Function(_$MangeProductsOperationSuccessStateImpl) then) =
      __$$MangeProductsOperationSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MangeProductsOperationSuccessStateImplCopyWithImpl<$Res>
    extends _$ManageProductsStateCopyWithImpl<$Res,
        _$MangeProductsOperationSuccessStateImpl>
    implements _$$MangeProductsOperationSuccessStateImplCopyWith<$Res> {
  __$$MangeProductsOperationSuccessStateImplCopyWithImpl(
      _$MangeProductsOperationSuccessStateImpl _value,
      $Res Function(_$MangeProductsOperationSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MangeProductsOperationSuccessStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MangeProductsOperationSuccessStateImpl
    implements MangeProductsOperationSuccessState {
  const _$MangeProductsOperationSuccessStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ManageProductsState.operationSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangeProductsOperationSuccessStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangeProductsOperationSuccessStateImplCopyWith<
          _$MangeProductsOperationSuccessStateImpl>
      get copyWith => __$$MangeProductsOperationSuccessStateImplCopyWithImpl<
          _$MangeProductsOperationSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return operationSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return operationSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (operationSuccess != null) {
      return operationSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return operationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return operationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (operationSuccess != null) {
      return operationSuccess(this);
    }
    return orElse();
  }
}

abstract class MangeProductsOperationSuccessState
    implements ManageProductsState {
  const factory MangeProductsOperationSuccessState(final String message) =
      _$MangeProductsOperationSuccessStateImpl;

  String get message;

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangeProductsOperationSuccessStateImplCopyWith<
          _$MangeProductsOperationSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MangeProductsOperationFailedStateImplCopyWith<$Res> {
  factory _$$MangeProductsOperationFailedStateImplCopyWith(
          _$MangeProductsOperationFailedStateImpl value,
          $Res Function(_$MangeProductsOperationFailedStateImpl) then) =
      __$$MangeProductsOperationFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MangeProductsOperationFailedStateImplCopyWithImpl<$Res>
    extends _$ManageProductsStateCopyWithImpl<$Res,
        _$MangeProductsOperationFailedStateImpl>
    implements _$$MangeProductsOperationFailedStateImplCopyWith<$Res> {
  __$$MangeProductsOperationFailedStateImplCopyWithImpl(
      _$MangeProductsOperationFailedStateImpl _value,
      $Res Function(_$MangeProductsOperationFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MangeProductsOperationFailedStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MangeProductsOperationFailedStateImpl
    implements MangeProductsOperationFailedState {
  const _$MangeProductsOperationFailedStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ManageProductsState.operationFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangeProductsOperationFailedStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangeProductsOperationFailedStateImplCopyWith<
          _$MangeProductsOperationFailedStateImpl>
      get copyWith => __$$MangeProductsOperationFailedStateImplCopyWithImpl<
          _$MangeProductsOperationFailedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return operationFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return operationFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (operationFailed != null) {
      return operationFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return operationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return operationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (operationFailed != null) {
      return operationFailed(this);
    }
    return orElse();
  }
}

abstract class MangeProductsOperationFailedState
    implements ManageProductsState {
  const factory MangeProductsOperationFailedState(final String message) =
      _$MangeProductsOperationFailedStateImpl;

  String get message;

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangeProductsOperationFailedStateImplCopyWith<
          _$MangeProductsOperationFailedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedProductsListStateImplCopyWith<$Res> {
  factory _$$UpdatedProductsListStateImplCopyWith(
          _$UpdatedProductsListStateImpl value,
          $Res Function(_$UpdatedProductsListStateImpl) then) =
      __$$UpdatedProductsListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductDataModel> products});
}

/// @nodoc
class __$$UpdatedProductsListStateImplCopyWithImpl<$Res>
    extends _$ManageProductsStateCopyWithImpl<$Res,
        _$UpdatedProductsListStateImpl>
    implements _$$UpdatedProductsListStateImplCopyWith<$Res> {
  __$$UpdatedProductsListStateImplCopyWithImpl(
      _$UpdatedProductsListStateImpl _value,
      $Res Function(_$UpdatedProductsListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$UpdatedProductsListStateImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
    ));
  }
}

/// @nodoc

class _$UpdatedProductsListStateImpl implements UpdatedProductsListState {
  const _$UpdatedProductsListStateImpl(final List<ProductDataModel> products)
      : _products = products;

  final List<ProductDataModel> _products;
  @override
  List<ProductDataModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ManageProductsState.updatedProductsList(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedProductsListStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedProductsListStateImplCopyWith<_$UpdatedProductsListStateImpl>
      get copyWith => __$$UpdatedProductsListStateImplCopyWithImpl<
          _$UpdatedProductsListStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProductDataModel> products) success,
    required TResult Function() loading,
    required TResult Function(ApiErrorModel error) error,
    required TResult Function(String errorMessage) emptyProductsList,
    required TResult Function() refreshProducts,
    required TResult Function(bool isVisible) toggleRefreshButtonVisibility,
    required TResult Function() delete,
    required TResult Function(ProductDataModel product) edit,
    required TResult Function(String message) operationSuccess,
    required TResult Function(String message) operationFailed,
    required TResult Function(List<ProductDataModel> products)
        updatedProductsList,
  }) {
    return updatedProductsList(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProductDataModel> products)? success,
    TResult? Function()? loading,
    TResult? Function(ApiErrorModel error)? error,
    TResult? Function(String errorMessage)? emptyProductsList,
    TResult? Function()? refreshProducts,
    TResult? Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult? Function()? delete,
    TResult? Function(ProductDataModel product)? edit,
    TResult? Function(String message)? operationSuccess,
    TResult? Function(String message)? operationFailed,
    TResult? Function(List<ProductDataModel> products)? updatedProductsList,
  }) {
    return updatedProductsList?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProductDataModel> products)? success,
    TResult Function()? loading,
    TResult Function(ApiErrorModel error)? error,
    TResult Function(String errorMessage)? emptyProductsList,
    TResult Function()? refreshProducts,
    TResult Function(bool isVisible)? toggleRefreshButtonVisibility,
    TResult Function()? delete,
    TResult Function(ProductDataModel product)? edit,
    TResult Function(String message)? operationSuccess,
    TResult Function(String message)? operationFailed,
    TResult Function(List<ProductDataModel> products)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (updatedProductsList != null) {
      return updatedProductsList(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ManageProductsSuccessState value) success,
    required TResult Function(ManageProductsLoadingState value) loading,
    required TResult Function(ManageProductsErrorState value) error,
    required TResult Function(EmptyProductsList value) emptyProductsList,
    required TResult Function(RefreshProductsState value) refreshProducts,
    required TResult Function(ToggleRefreshButtonVisibilityState value)
        toggleRefreshButtonVisibility,
    required TResult Function(ManageProductsDeleteState value) delete,
    required TResult Function(ManageEditsDeleteState value) edit,
    required TResult Function(MangeProductsOperationSuccessState value)
        operationSuccess,
    required TResult Function(MangeProductsOperationFailedState value)
        operationFailed,
    required TResult Function(UpdatedProductsListState value)
        updatedProductsList,
  }) {
    return updatedProductsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ManageProductsSuccessState value)? success,
    TResult? Function(ManageProductsLoadingState value)? loading,
    TResult? Function(ManageProductsErrorState value)? error,
    TResult? Function(EmptyProductsList value)? emptyProductsList,
    TResult? Function(RefreshProductsState value)? refreshProducts,
    TResult? Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult? Function(ManageProductsDeleteState value)? delete,
    TResult? Function(ManageEditsDeleteState value)? edit,
    TResult? Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult? Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult? Function(UpdatedProductsListState value)? updatedProductsList,
  }) {
    return updatedProductsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ManageProductsSuccessState value)? success,
    TResult Function(ManageProductsLoadingState value)? loading,
    TResult Function(ManageProductsErrorState value)? error,
    TResult Function(EmptyProductsList value)? emptyProductsList,
    TResult Function(RefreshProductsState value)? refreshProducts,
    TResult Function(ToggleRefreshButtonVisibilityState value)?
        toggleRefreshButtonVisibility,
    TResult Function(ManageProductsDeleteState value)? delete,
    TResult Function(ManageEditsDeleteState value)? edit,
    TResult Function(MangeProductsOperationSuccessState value)?
        operationSuccess,
    TResult Function(MangeProductsOperationFailedState value)? operationFailed,
    TResult Function(UpdatedProductsListState value)? updatedProductsList,
    required TResult orElse(),
  }) {
    if (updatedProductsList != null) {
      return updatedProductsList(this);
    }
    return orElse();
  }
}

abstract class UpdatedProductsListState implements ManageProductsState {
  const factory UpdatedProductsListState(
      final List<ProductDataModel> products) = _$UpdatedProductsListStateImpl;

  List<ProductDataModel> get products;

  /// Create a copy of ManageProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedProductsListStateImplCopyWith<_$UpdatedProductsListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
