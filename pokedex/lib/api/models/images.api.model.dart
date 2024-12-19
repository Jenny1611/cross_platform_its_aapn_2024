import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'images.api.model.freezed.dart';
part 'images.api.model.g.dart';

@freezed
class ImagesApiModel with _$ImagesApiModel{
  const factory ImagesApiModel({
    required String frontDefault
  }) = _ImagesApiModel;
factory ImagesApiModel.fromJson(Map<String, dynamic> json)
=> _$ImagesApiModelFromJson(json);
}