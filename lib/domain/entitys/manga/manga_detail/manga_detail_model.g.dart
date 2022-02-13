// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_detail_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MangaDetailModelAdapter extends TypeAdapter<_$_MangaDetailModel> {
  @override
  final int typeId = 5;

  @override
  _$_MangaDetailModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_MangaDetailModel(
      id: fields[0] as int,
      img: fields[1] as ImgModel,
      enName: fields[2] as String,
      rusName: fields[3] as String,
      anotherName: fields[4] as String,
      dir: fields[5] as String,
      description: fields[6] as String,
      issueYear: fields[7] as int?,
      avgRating: fields[8] as String,
      adminRating: fields[9] as String,
      countRating: fields[10] as int?,
      ageLimit: fields[11] as int?,
      status: fields[12] as FilterModel?,
      countBookmarks: fields[13] as int?,
      totalVotes: fields[14] as int?,
      totalViews: fields[15] as int?,
      type: fields[16] as FilterModel?,
      genres: (fields[17] as List).cast<FilterModel>(),
      categories: (fields[18] as List).cast<FilterModel>(),
      publishers: (fields[19] as List).cast<PublisherModel>(),
      branches: (fields[20] as List).cast<BranchModel>(),
      countChapters: fields[21] as int?,
      firstChapter: fields[22] as MangaChapterModel?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_MangaDetailModel obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.img)
      ..writeByte(2)
      ..write(obj.enName)
      ..writeByte(3)
      ..write(obj.rusName)
      ..writeByte(4)
      ..write(obj.anotherName)
      ..writeByte(5)
      ..write(obj.dir)
      ..writeByte(6)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.issueYear)
      ..writeByte(8)
      ..write(obj.avgRating)
      ..writeByte(9)
      ..write(obj.adminRating)
      ..writeByte(10)
      ..write(obj.countRating)
      ..writeByte(11)
      ..write(obj.ageLimit)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.countBookmarks)
      ..writeByte(14)
      ..write(obj.totalVotes)
      ..writeByte(15)
      ..write(obj.totalViews)
      ..writeByte(16)
      ..write(obj.type)
      ..writeByte(17)
      ..write(obj.genres)
      ..writeByte(18)
      ..write(obj.categories)
      ..writeByte(19)
      ..write(obj.publishers)
      ..writeByte(20)
      ..write(obj.branches)
      ..writeByte(21)
      ..write(obj.countChapters)
      ..writeByte(22)
      ..write(obj.firstChapter);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MangaDetailModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MangaDetailModel _$$_MangaDetailModelFromJson(Map<String, dynamic> json) =>
    _$_MangaDetailModel(
      id: json['id'] as int? ?? -1,
      img: ImgModel.fromJson(json['img'] as Map<String, dynamic>),
      enName: json['en_name'] as String? ?? '',
      rusName: json['rus_name'] as String? ?? '',
      anotherName: json['another_name'] as String? ?? '',
      dir: json['dir'] as String? ?? '',
      description: json['description'] as String? ?? '',
      issueYear: json['issue_year'] as int?,
      avgRating: json['avg_rating'] as String? ?? '',
      adminRating: json['admin_rating'] as String? ?? '',
      countRating: json['count_rating'] as int?,
      ageLimit: json['age_limit'] as int?,
      status:
          json['status'] == null ? null : FilterModel.fromJson(json['status']),
      countBookmarks: json['count_bookmarks'] as int?,
      totalVotes: json['total_votes'] as int?,
      totalViews: json['total_views'] as int?,
      type: json['type'] == null ? null : FilterModel.fromJson(json['type']),
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => FilterModel.fromJson(e))
              .toList() ??
          [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => FilterModel.fromJson(e))
              .toList() ??
          [],
      publishers: (json['publishers'] as List<dynamic>?)
              ?.map((e) => PublisherModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      branches: (json['branches'] as List<dynamic>?)
              ?.map((e) => BranchModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      countChapters: json['count_chapters'] as int?,
      firstChapter: json['first_chapter'] == null
          ? null
          : MangaChapterModel.fromJson(
              json['first_chapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MangaDetailModelToJson(_$_MangaDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'en_name': instance.enName,
      'rus_name': instance.rusName,
      'another_name': instance.anotherName,
      'dir': instance.dir,
      'description': instance.description,
      'issue_year': instance.issueYear,
      'avg_rating': instance.avgRating,
      'admin_rating': instance.adminRating,
      'count_rating': instance.countRating,
      'age_limit': instance.ageLimit,
      'status': instance.status,
      'count_bookmarks': instance.countBookmarks,
      'total_votes': instance.totalVotes,
      'total_views': instance.totalViews,
      'type': instance.type,
      'genres': instance.genres,
      'categories': instance.categories,
      'publishers': instance.publishers,
      'branches': instance.branches,
      'count_chapters': instance.countChapters,
      'first_chapter': instance.firstChapter,
    };
