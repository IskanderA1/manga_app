import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'manga_chapter_model.freezed.dart';

part 'manga_chapter_model.g.dart';

/// Модель главы манги
@freezed
class MangaChapterModel with _$MangaChapterModel {
  @HiveType(typeId: 4, adapterName: 'MangaChapterModelAdapter')
  const factory MangaChapterModel({
    @HiveField(0) required int id,
    @HiveField(1) required int tome,
    @HiveField(2) required String chapter,
    @HiveField(3) @JsonKey(name: 'upload_date') required String? uploadDate,
    @HiveField(4) @JsonKey(name: 'is_paid') bool? isPaid,
    @HiveField(5) @JsonKey(name: 'is_bought') bool? isBought,
    @HiveField(6) required int? index,
  }) = _MangaChapterModel;

  factory MangaChapterModel.fromJson(Map<String, dynamic> json) =>
      _$MangaChapterModelFromJson(json);
}
