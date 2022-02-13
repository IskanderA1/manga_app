import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'publisher_model.freezed.dart';

part 'publisher_model.g.dart';

/// Модель Автора манги
@freezed
class PublisherModel with _$PublisherModel {

  @HiveType(typeId: 2, adapterName: 'PublisherModelAdapter')
  const factory PublisherModel({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required String img,
    @HiveField(3) required String dir,
    @HiveField(4) required String? tagline,
    @HiveField(5) required String? type,
  }) = _PublisherModel;

  factory PublisherModel.fromJson(Map<String, dynamic> json) => _$PublisherModelFromJson(json);
}
