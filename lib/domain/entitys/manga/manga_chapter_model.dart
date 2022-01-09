import 'package:equatable/equatable.dart';
import 'package:manga_app/domain/entitys/manga/page_model.dart';
import 'package:manga_app/domain/entitys/manga/publisher_model.dart';

/// Модель главы манги
class MangaChapterModel extends Equatable {
  final int id;
  final int tome;
  final String chapter;
  final String uploadDate;
  bool? isPaid;
  bool? isBought;
  final List<PublisherModel> publishers;
  final List<PageModel> pages;
  final int index;

  MangaChapterModel({
    required this.id,
    required this.tome,
    required this.chapter,
    required this.uploadDate,
    required this.publishers,
    required this.pages,
    required this.index,
    this.isPaid,
    this.isBought,
  });

  factory MangaChapterModel.fromJson(dynamic json) {
    final publishers =
        json['publishers'] != null ? json['publishers'] as List : [];
    final pages = json['pages'] != null ? json['pages'] as List : [];
    return MangaChapterModel(
      id: json['id'],
      tome: json['tome'],
      chapter: json['chapter'],
      uploadDate: json['upload_date'],
      isPaid: json['is_paid'],
      isBought: json['is_bought'],
      publishers: publishers.map((i) => PublisherModel.fromJson(i)).toList(),
      pages: pages.map((i) => PageModel.fromJson(i)).toList(),
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
    map['pages'] = pages.map((v) => v.toJson()).toList();
    map['index'] = index;
    return map;
  }

  @override
  List<Object?> get props => [
        id,
        tome,
        chapter,
        uploadDate,
        publishers,
        pages,
        index,
        isPaid,
        isBought,
      ];
}
