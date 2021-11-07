import 'package:equatable/equatable.dart';

/// Модель Автора манги
class PublisherModel extends Equatable {
  const PublisherModel({
    required this.id,
    required this.name,
    required this.img,
    required this.dir,
    this.tagline,
    this.type,
  });

  factory PublisherModel.fromJson(dynamic json) {
    return PublisherModel(
      id: json['id'],
      name: json['name'] ?? '',
      img: json['img'] ?? '',
      dir: json['dir'] ?? '',
      tagline: json['tagline'],
      type: json['type'],
    );
  }

  final int id;
  final String name;
  final String img;
  final String dir;
  final String? tagline;
  final String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['img'] = img;
    map['dir'] = dir;
    map['tagline'] = tagline;
    map['type'] = type;
    return map;
  }

  @override
  List<Object?> get props => [
        id,
        name,
        img,
        dir,
        tagline,
        type,
      ];
}
