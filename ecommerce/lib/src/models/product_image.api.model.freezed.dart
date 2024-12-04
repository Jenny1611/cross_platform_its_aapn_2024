// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image.api.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductImageApiModel _$ProductImageApiModelFromJson(Map<String, dynamic> json) {
  return _ProductImageApiModel.fromJson(json);
}

/// @nodoc
mixin _$ProductImageApiModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this ProductImageApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageApiModelCopyWith<ProductImageApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageApiModelCopyWith<$Res> {
  factory $ProductImageApiModelCopyWith(ProductImageApiModel value,
          $Res Function(ProductImageApiModel) then) =
      _$ProductImageApiModelCopyWithImpl<$Res, ProductImageApiModel>;
  @useResult
  $Res call({String title, String description, String url});
}

/// @nodoc
class _$ProductImageApiModelCopyWithImpl<$Res,
        $Val extends ProductImageApiModel>
    implements $ProductImageApiModelCopyWith<$Res> {
  _$ProductImageApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImageApiModelImplCopyWith<$Res>
    implements $ProductImageApiModelCopyWith<$Res> {
  factory _$$ProductImageApiModelImplCopyWith(_$ProductImageApiModelImpl value,
          $Res Function(_$ProductImageApiModelImpl) then) =
      __$$ProductImageApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, String url});
}

/// @nodoc
class __$$ProductImageApiModelImplCopyWithImpl<$Res>
    extends _$ProductImageApiModelCopyWithImpl<$Res, _$ProductImageApiModelImpl>
    implements _$$ProductImageApiModelImplCopyWith<$Res> {
  __$$ProductImageApiModelImplCopyWithImpl(_$ProductImageApiModelImpl _value,
      $Res Function(_$ProductImageApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductImageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? url = null,
  }) {
    return _then(_$ProductImageApiModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImageApiModelImpl implements _ProductImageApiModel {
  const _$ProductImageApiModelImpl(
      {required this.title, required this.description, required this.url});

  factory _$ProductImageApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImageApiModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String url;

  @override
  String toString() {
    return 'ProductImageApiModel(title: $title, description: $description, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageApiModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, url);

  /// Create a copy of ProductImageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageApiModelImplCopyWith<_$ProductImageApiModelImpl>
      get copyWith =>
          __$$ProductImageApiModelImplCopyWithImpl<_$ProductImageApiModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageApiModelImplToJson(
      this,
    );
  }
}

abstract class _ProductImageApiModel implements ProductImageApiModel {
  const factory _ProductImageApiModel(
      {required final String title,
      required final String description,
      required final String url}) = _$ProductImageApiModelImpl;

  factory _ProductImageApiModel.fromJson(Map<String, dynamic> json) =
      _$ProductImageApiModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get url;

  /// Create a copy of ProductImageApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageApiModelImplCopyWith<_$ProductImageApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}