// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImagesApiModelImpl _$$ImagesApiModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ImagesApiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ImagesApiModelImpl(
          frontDefault: $checkedConvert('front_default', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'frontDefault': 'front_default'},
    );

Map<String, dynamic> _$$ImagesApiModelImplToJson(
        _$ImagesApiModelImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };
