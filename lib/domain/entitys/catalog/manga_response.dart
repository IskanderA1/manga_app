import 'package:equatable/equatable.dart';
import 'package:manga_app/domain/entitys/catalog/manga_model.dart';

/// Респонз манги
/// [manga] - список манги
/// [totalPages] - общее кол-во страниц
/// [page] - текущая страница
/// [totalMangaItems] - кол-во манги которое мы можем получить с
/// данными параметрами запроса
class MangaResponse extends Equatable {
  final List<MangaModel> manga;
  final int totalPages;
  final int page;
  final int totalMangaItems;

  const MangaResponse({
    required this.manga,
    required this.totalPages,
    required this.page,
    required this.totalMangaItems,
  });

  factory MangaResponse.fromJson(dynamic json) {
    return MangaResponse(
      manga: (json['content'] as List)
          .map(
            (e) => MangaModel.fromJson(e),
          )
          .toList(),
      totalPages: json['props']['total_pages'],
      page: json['props']['page'],
      totalMangaItems: json['props']['total_items'],
    );
  }

  MangaResponse copyWith(int? page) {
    return MangaResponse(
      manga: manga,
      totalPages: totalPages,
      page: page ?? this.page,
      totalMangaItems: totalMangaItems,
    );
  }

  MangaResponse update(MangaResponse manga) {
    this.manga.addAll(manga.manga);
    return MangaResponse(
      manga: this.manga,
      totalPages: manga.totalPages,
      page: manga.page,
      totalMangaItems: manga.totalMangaItems,
    );
  }

  @override
  List<Object?> get props => [
        manga,
        totalPages,
        page,
        totalMangaItems,
      ];
}
