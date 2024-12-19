// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details.api.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonDetailsApiModel _$PokemonDetailsApiModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonDetailsApiModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetailsApiModel {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  ImagesApiModel get sprites => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  /// Serializes this PokemonDetailsApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonDetailsApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonDetailsApiModelCopyWith<PokemonDetailsApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailsApiModelCopyWith<$Res> {
  factory $PokemonDetailsApiModelCopyWith(PokemonDetailsApiModel value,
          $Res Function(PokemonDetailsApiModel) then) =
      _$PokemonDetailsApiModelCopyWithImpl<$Res, PokemonDetailsApiModel>;
  @useResult
  $Res call(
      {String name, int id, ImagesApiModel sprites, int height, int weight});

  $ImagesApiModelCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonDetailsApiModelCopyWithImpl<$Res,
        $Val extends PokemonDetailsApiModel>
    implements $PokemonDetailsApiModelCopyWith<$Res> {
  _$PokemonDetailsApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonDetailsApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? sprites = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as ImagesApiModel,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PokemonDetailsApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImagesApiModelCopyWith<$Res> get sprites {
    return $ImagesApiModelCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDetailsApiModelImplCopyWith<$Res>
    implements $PokemonDetailsApiModelCopyWith<$Res> {
  factory _$$PokemonDetailsApiModelImplCopyWith(
          _$PokemonDetailsApiModelImpl value,
          $Res Function(_$PokemonDetailsApiModelImpl) then) =
      __$$PokemonDetailsApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, int id, ImagesApiModel sprites, int height, int weight});

  @override
  $ImagesApiModelCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokemonDetailsApiModelImplCopyWithImpl<$Res>
    extends _$PokemonDetailsApiModelCopyWithImpl<$Res,
        _$PokemonDetailsApiModelImpl>
    implements _$$PokemonDetailsApiModelImplCopyWith<$Res> {
  __$$PokemonDetailsApiModelImplCopyWithImpl(
      _$PokemonDetailsApiModelImpl _value,
      $Res Function(_$PokemonDetailsApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonDetailsApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? sprites = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_$PokemonDetailsApiModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as ImagesApiModel,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDetailsApiModelImpl
    with DiagnosticableTreeMixin
    implements _PokemonDetailsApiModel {
  const _$PokemonDetailsApiModelImpl(
      {required this.name,
      required this.id,
      required this.sprites,
      required this.height,
      required this.weight});

  factory _$PokemonDetailsApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDetailsApiModelImplFromJson(json);

  @override
  final String name;
  @override
  final int id;
  @override
  final ImagesApiModel sprites;
  @override
  final int height;
  @override
  final int weight;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonDetailsApiModel(name: $name, id: $id, sprites: $sprites, height: $height, weight: $weight)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonDetailsApiModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sprites', sprites))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('weight', weight));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailsApiModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, id, sprites, height, weight);

  /// Create a copy of PokemonDetailsApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailsApiModelImplCopyWith<_$PokemonDetailsApiModelImpl>
      get copyWith => __$$PokemonDetailsApiModelImplCopyWithImpl<
          _$PokemonDetailsApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDetailsApiModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonDetailsApiModel implements PokemonDetailsApiModel {
  const factory _PokemonDetailsApiModel(
      {required final String name,
      required final int id,
      required final ImagesApiModel sprites,
      required final int height,
      required final int weight}) = _$PokemonDetailsApiModelImpl;

  factory _PokemonDetailsApiModel.fromJson(Map<String, dynamic> json) =
      _$PokemonDetailsApiModelImpl.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  ImagesApiModel get sprites;
  @override
  int get height;
  @override
  int get weight;

  /// Create a copy of PokemonDetailsApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonDetailsApiModelImplCopyWith<_$PokemonDetailsApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
