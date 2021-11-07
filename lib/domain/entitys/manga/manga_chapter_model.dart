import 'package:equatable/equatable.dart';

/// Модель главы манги
class MangaChapterModel extends Equatable {
  const MangaChapterModel({
    required this.id,
    required this.tome,
    required this.chapter,
  });

  factory MangaChapterModel.fromJson(dynamic json) {
    return MangaChapterModel(
      id: json['id'],
      tome: json['tome'],
      chapter: json['chapter'],
    );
  }

  final int id;
  final int tome;
  final String chapter;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['tome'] = tome;
    map['chapter'] = chapter;
    return map;
  }

  @override
  List<Object?> get props => [
        id,
        tome,
        chapter,
      ];
}
