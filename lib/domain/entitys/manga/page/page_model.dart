import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'page_model.freezed.dart';

part 'page_model.g.dart';

/// Модель Автора манги
@freezed
class PageModel with _$PageModel {

  @HiveType(typeId: 3, adapterName: 'PageModelAdapter')
  const factory PageModel({
    @HiveField(0) required int id,
    @HiveField(1) required String link,
    @HiveField(2) required int page,
  }) = _PageModel;

  factory PageModel.fromJson(Map<String, dynamic> json) => _$PageModelFromJson(json);
}