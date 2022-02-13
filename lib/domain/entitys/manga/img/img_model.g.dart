// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'img_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ImgModelAdapter extends TypeAdapter<_$_ImgModel> {
  @override
  final int typeId = 6;

  @override
  _$_ImgModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ImgModel(
      high: fields[0] as String,
      mid: fields[1] as String,
      lov: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ImgModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.high)
      ..writeByte(1)
      ..write(obj.mid)
      ..writeByte(2)
      ..write(obj.lov);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImgModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImgModel _$$_ImgModelFromJson(Map<String, dynamic> json) => _$_ImgModel(
      high: json['high'] as String? ?? '',
      mid: json['mid'] as String? ?? '',
      lov: json['lov'] as String? ?? '',
    );

Map<String, dynamic> _$$_ImgModelToJson(_$_ImgModel instance) =>
    <String, dynamic>{
      'high': instance.high,
      'mid': instance.mid,
      'lov': instance.lov,
    };
