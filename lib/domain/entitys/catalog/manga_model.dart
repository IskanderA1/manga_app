import 'package:equatable/equatable.dart';

/// Модель манги
class MangaModel extends Equatable {
  final int id;
  final String enName;
  final String rusName;
  final String dir;
  final String img;
  final double? rating;
  final int? year;

  const MangaModel({
    required this.id,
    required this.enName,
    required this.rusName,
    required this.dir,
    required this.img,
    required this.rating,
    required this.year,
  });

  factory MangaModel.fromJson(dynamic json) {
    return MangaModel(
      id: json['id'] ?? 0,
      enName: json['en_name'] ?? '',
      rusName: json['rus_name'] ?? '',
      dir: json['dir'] ?? '',
      img: json['img']['high'] ?? '',
      rating: double.tryParse(json['avg_rating']),
      year: json['issue_year'] ?? 1900,
    );
  }

  @override
  List<Object?> get props => [
        id,
        enName,
        rusName,
        dir,
        img,
        rating,
        year,
      ];
}
