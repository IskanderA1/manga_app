import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'img_model.freezed.dart';
part 'img_model.g.dart';

@freezed
class ImgModel with _$ImgModel {
  @HiveType(typeId: 6, adapterName: 'ImgModelAdapter')
  const factory ImgModel({
    @HiveField(0) @JsonKey(name: 'high', defaultValue: '') required String high,
    @HiveField(1) @JsonKey(name: 'mid', defaultValue: '') required String mid,
    @HiveField(2) @JsonKey(name: 'lov', defaultValue: '') required String lov,
  }) = _ImgModel;

  factory ImgModel.fromJson(Map<String, dynamic> json) => _$ImgModelFromJson(json);

}
