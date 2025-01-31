// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImagesApiModel _$ImagesApiModelFromJson(Map<String, dynamic> json) {
  return _ImagesApiModel.fromJson(json);
}

/// @nodoc
mixin _$ImagesApiModel {
  String get png => throw _privateConstructorUsedError;
  String get alt => throw _privateConstructorUsedError;

  /// Serializes this ImagesApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImagesApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesApiModelCopyWith<ImagesApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesApiModelCopyWith<$Res> {
  factory $ImagesApiModelCopyWith(
          ImagesApiModel value, $Res Function(ImagesApiModel) then) =
      _$ImagesApiModelCopyWithImpl<$Res, ImagesApiModel>;
  @useResult
  $Res call({String png, String alt});
}

/// @nodoc
class _$ImagesApiModelCopyWithImpl<$Res, $Val extends ImagesApiModel>
    implements $ImagesApiModelCopyWith<$Res> {
  _$ImagesApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagesApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
    Object? alt = null,
  }) {
    return _then(_value.copyWith(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagesApiModelImplCopyWith<$Res>
    implements $ImagesApiModelCopyWith<$Res> {
  factory _$$ImagesApiModelImplCopyWith(_$ImagesApiModelImpl value,
          $Res Function(_$ImagesApiModelImpl) then) =
      __$$ImagesApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String png, String alt});
}

/// @nodoc
class __$$ImagesApiModelImplCopyWithImpl<$Res>
    extends _$ImagesApiModelCopyWithImpl<$Res, _$ImagesApiModelImpl>
    implements _$$ImagesApiModelImplCopyWith<$Res> {
  __$$ImagesApiModelImplCopyWithImpl(
      _$ImagesApiModelImpl _value, $Res Function(_$ImagesApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
    Object? alt = null,
  }) {
    return _then(_$ImagesApiModelImpl(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesApiModelImpl
    with DiagnosticableTreeMixin
    implements _ImagesApiModel {
  const _$ImagesApiModelImpl({required this.png, required this.alt});

  factory _$ImagesApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesApiModelImplFromJson(json);

  @override
  final String png;
  @override
  final String alt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagesApiModel(png: $png, alt: $alt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagesApiModel'))
      ..add(DiagnosticsProperty('png', png))
      ..add(DiagnosticsProperty('alt', alt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesApiModelImpl &&
            (identical(other.png, png) || other.png == png) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, png, alt);

  /// Create a copy of ImagesApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesApiModelImplCopyWith<_$ImagesApiModelImpl> get copyWith =>
      __$$ImagesApiModelImplCopyWithImpl<_$ImagesApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesApiModelImplToJson(
      this,
    );
  }
}

abstract class _ImagesApiModel implements ImagesApiModel {
  const factory _ImagesApiModel(
      {required final String png,
      required final String alt}) = _$ImagesApiModelImpl;

  factory _ImagesApiModel.fromJson(Map<String, dynamic> json) =
      _$ImagesApiModelImpl.fromJson;

  @override
  String get png;
  @override
  String get alt;

  /// Create a copy of ImagesApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesApiModelImplCopyWith<_$ImagesApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
