import 'package:equatable/equatable.dart';
import 'package:manga_app/domain/entitys/manga/page_model.dart';
import 'package:manga_app/domain/entitys/manga/publisher_model.dart';

class MangaChapterBaseModel extends Equatable {
  final int id;
  final List<PageModel> pages;
  final bool isLoading;

  const MangaChapterBaseModel(this.id, this.pages, [this.isLoading = false]);

  MangaChapterBaseModel copyWith({
    List<PageModel>? pages,
    bool? isLoading,
  }) {
    return MangaChapterBaseModel(
      id,
      pages ?? this.pages,
      isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [id, pages, isLoading];
}

/// Модель главы манги
class MangaChapterModel extends MangaChapterBaseModel {
  final int tome;
  final String chapter;
  final String uploadDate;
  final bool? isPaid;
  final bool? isBought;
  final List<PublisherModel> publishers;
  final int index;

  const MangaChapterModel({
    required int id,
    required this.tome,
    required this.index,
    required this.chapter,
    required this.uploadDate,
    required this.publishers,
    required List<PageModel> pages,
    this.isPaid,
    this.isBought,
    bool isLoading = false,
  }) : super(id, pages, isLoading);

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
      pages: pages ?? this.pages,
      isLoading: isLoading ?? this.isLoading,
    );
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
        isLoading,
      ];
}
