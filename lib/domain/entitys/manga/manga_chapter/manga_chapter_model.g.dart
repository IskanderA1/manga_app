// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_chapter_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MangaChapterModelAdapter extends TypeAdapter<_$_MangaChapterModel> {
  @override
  final int typeId = 4;

  @override
  _$_MangaChapterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_MangaChapterModel(
      id: fields[0] as int,
      tome: fields[1] as int,
      chapter: fields[2] as String,
      uploadDate: fields[3] as String?,
      isPaid: fields[4] as bool?,
      isBought: fields[5] as bool?,
      index: fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_MangaChapterModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.tome)
      ..writeByte(2)
      ..write(obj.chapter)
      ..writeByte(3)
      ..write(obj.uploadDate)
      ..writeByte(4)
      ..write(obj.isPaid)
      ..writeByte(5)
      ..write(obj.isBought)
      ..writeByte(6)
      ..write(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MangaChapterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MangaChapterModel _$$_MangaChapterModelFromJson(Map<String, dynamic> json) =>
    _$_MangaChapterModel(
      id: json['id'] as int,
      tome: json['tome'] as int,
      chapter: json['chapter'] as String,
      uploadDate: json['upload_date'] as String?,
      isPaid: json['is_paid'] as bool?,
      isBought: json['is_bought'] as bool?,
      index: json['index'] as int?,
    );

Map<String, dynamic> _$$_MangaChapterModelToJson(
        _$_MangaChapterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tome': instance.tome,
      'chapter': instance.chapter,
      'upload_date': instance.uploadDate,
      'is_paid': instance.isPaid,
      'is_bought': instance.isBought,
      'index': instance.index,
    };
