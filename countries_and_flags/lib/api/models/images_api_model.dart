import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'images_api_model.freezed.dart';
part 'images_api_model.g.dart';

@freezed
class ImagesApiModel with _$ImagesApiModel{
  const factory ImagesApiModel({
    required String png,
    required String alt
  }) = _ImagesApiModel;
factory ImagesApiModel.fromJson(Map<String, dynamic> json)
=> _$ImagesApiModelFromJson(json);
}