// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_saved.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSavedModel _$PokemonSavedModelFromJson(Map<String, dynamic> json) {
  return _PokemonSavedModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSavedModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  /// Serializes this PokemonSavedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSavedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSavedModelCopyWith<PokemonSavedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSavedModelCopyWith<$Res> {
  factory $PokemonSavedModelCopyWith(
          PokemonSavedModel value, $Res Function(PokemonSavedModel) then) =
      _$PokemonSavedModelCopyWithImpl<$Res, PokemonSavedModel>;
  @useResult
  $Res call({int id, String name, String comment});
}

/// @nodoc
class _$PokemonSavedModelCopyWithImpl<$Res, $Val extends PokemonSavedModel>
    implements $PokemonSavedModelCopyWith<$Res> {
  _$PokemonSavedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSavedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSavedModelImplCopyWith<$Res>
    implements $PokemonSavedModelCopyWith<$Res> {
  factory _$$PokemonSavedModelImplCopyWith(_$PokemonSavedModelImpl value,
          $Res Function(_$PokemonSavedModelImpl) then) =
      __$$PokemonSavedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String comment});
}

/// @nodoc
class __$$PokemonSavedModelImplCopyWithImpl<$Res>
    extends _$PokemonSavedModelCopyWithImpl<$Res, _$PokemonSavedModelImpl>
    implements _$$PokemonSavedModelImplCopyWith<$Res> {
  __$$PokemonSavedModelImplCopyWithImpl(_$PokemonSavedModelImpl _value,
      $Res Function(_$PokemonSavedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSavedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? comment = null,
  }) {
    return _then(_$PokemonSavedModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSavedModelImpl
    with DiagnosticableTreeMixin
    implements _PokemonSavedModel {
  const _$PokemonSavedModelImpl(
      {required this.id, required this.name, required this.comment});

  factory _$PokemonSavedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSavedModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonSavedModel(id: $id, name: $name, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonSavedModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSavedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, comment);

  /// Create a copy of PokemonSavedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSavedModelImplCopyWith<_$PokemonSavedModelImpl> get copyWith =>
      __$$PokemonSavedModelImplCopyWithImpl<_$PokemonSavedModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSavedModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonSavedModel implements PokemonSavedModel {
  const factory _PokemonSavedModel(
      {required final int id,
      required final String name,
      required final String comment}) = _$PokemonSavedModelImpl;

  factory _PokemonSavedModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSavedModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get comment;

  /// Create a copy of PokemonSavedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSavedModelImplCopyWith<_$PokemonSavedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
