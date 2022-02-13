// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BranchModelAdapter extends TypeAdapter<_$_BranchModel> {
  @override
  final int typeId = 1;

  @override
  _$_BranchModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_BranchModel(
      id: fields[0] as int,
      img: fields[1] as String,
      publishers: (fields[2] as List).cast<PublisherModel>(),
      subscribed: fields[3] as bool?,
      totalVotes: fields[4] as int?,
      countChapters: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_BranchModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.img)
      ..writeByte(2)
      ..write(obj.publishers)
      ..writeByte(3)
      ..write(obj.subscribed)
      ..writeByte(4)
      ..write(obj.totalVotes)
      ..writeByte(5)
      ..write(obj.countChapters);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BranchModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BranchModel _$$_BranchModelFromJson(Map<String, dynamic> json) =>
    _$_BranchModel(
      id: json['id'] as int,
      img: json['img'] as String,
      publishers: (json['publishers'] as List<dynamic>?)
              ?.map((e) => PublisherModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      subscribed: json['subscribed'] as bool?,
      totalVotes: json['total_votes'] as int?,
      countChapters: json['count_chapters'] as int?,
    );

Map<String, dynamic> _$$_BranchModelToJson(_$_BranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'publishers': instance.publishers,
      'subscribed': instance.subscribed,
      'total_votes': instance.totalVotes,
      'count_chapters': instance.countChapters,
    };
