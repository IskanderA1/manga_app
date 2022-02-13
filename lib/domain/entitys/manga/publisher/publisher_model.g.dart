// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PublisherModelAdapter extends TypeAdapter<_$_PublisherModel> {
  @override
  final int typeId = 2;

  @override
  _$_PublisherModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PublisherModel(
      id: fields[0] as int,
      name: fields[1] as String,
      img: fields[2] as String,
      dir: fields[3] as String,
      tagline: fields[4] as String?,
      type: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_PublisherModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.img)
      ..writeByte(3)
      ..write(obj.dir)
      ..writeByte(4)
      ..write(obj.tagline)
      ..writeByte(5)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PublisherModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublisherModel _$$_PublisherModelFromJson(Map<String, dynamic> json) =>
    _$_PublisherModel(
      id: json['id'] as int,
      name: json['name'] as String,
      img: json['img'] as String,
      dir: json['dir'] as String,
      tagline: json['tagline'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_PublisherModelToJson(_$_PublisherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'dir': instance.dir,
      'tagline': instance.tagline,
      'type': instance.type,
    };
