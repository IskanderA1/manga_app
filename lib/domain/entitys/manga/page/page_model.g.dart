// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PageModelAdapter extends TypeAdapter<_$_PageModel> {
  @override
  final int typeId = 3;

  @override
  _$_PageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PageModel(
      id: fields[0] as int,
      link: fields[1] as String,
      page: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_PageModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.link)
      ..writeByte(2)
      ..write(obj.page);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageModel _$$_PageModelFromJson(Map<String, dynamic> json) => _$_PageModel(
      id: json['id'] as int,
      link: json['link'] as String,
      page: json['page'] as int,
    );

Map<String, dynamic> _$$_PageModelToJson(_$_PageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'page': instance.page,
    };
