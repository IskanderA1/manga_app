import 'package:equatable/equatable.dart';
import 'package:manga_app/domain/entitys/manga/page_model.dart';
import 'package:manga_app/domain/entitys/manga/publisher_model.dart';

/// Модель главы манги
class MangaChapterModel extends Equatable {
  final int id;
  final int tome;
  final String chapter;
  final String? uploadDate;
  final bool? isPaid;
  final bool? isBought;
  final List<PublisherModel> publishers;
  final int? index;

  const MangaChapterModel({
    required this.id,
    required this.tome,
    required this.index,
    required this.chapter,
    required this.uploadDate,
    required this.publishers,
    this.isPaid,
    this.isBought,
  });

  factory MangaChapterModel.fromJson(dynamic json) {
    final publishers = json['publishers'] != null
        ? (json['publishers'] as List).isNotEmpty
            ? (json['publishers'] as List).first['id'] != null
                ? (json['publishers'] as List)
                : []
            : []
        : [];
    return MangaChapterModel(
      id: json['id'],
      tome: json['tome'],
      chapter: json['chapter'],
      uploadDate: json['upload_date'],
      isPaid: json['is_paid'],
      isBought: json['is_bought'],
      publishers: publishers.map((i) => PublisherModel.fromJson(i)).toList(),
      index: json['index'],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['tome'] = tome;
    map['chapter'] = chapter;
    map['upload_date'] = uploadDate;
    map['is_paid'] = isPaid;
    map['is_bought'] = isBought;
    map['publishers'] = publishers.map((v) => v.toJson()).toList();
    map['index'] = index;
    return map;
  }

  @override
  MangaChapterModel copyWith({
    List<PageModel>? pages,
    bool? isLoading,
  }) {
    return MangaChapterModel(
      id: id,
      tome: tome,
      index: index,
      chapter: chapter,
      uploadDate: uploadDate,
      isPaid: isPaid,
      isBought: isBought,
      publishers: publishers,
    );
  }

  @override
  List<Object?> get props => [
        id,
        tome,
        chapter,
        uploadDate,
        publishers,
        index,
        isPaid,
        isBought,
      ];
}
