import 'package:manga_app/domain/entitys/core/response_model.dart';
import 'package:manga_app/domain/entitys/manga/filter_model.dart';
import 'package:manga_app/domain/entitys/manga/manga_response.dart';
import 'package:manga_app/domain/entitys/manga/sort_model.dart';

abstract class MangaRepository {
  static const mainUrl = 'https://api.remanga.org/api';

  /// Метод получения списка фильтров манги
  Future<ResponseModel<Map<FilterType, List<FilterModel>>>> getFilter();

  /// Метод получения манги с учетом сортировки и фильтров
  Future<ResponseModel<MangaResponse>> getManga({
    required List<FilterModel> filters,
    SortModel? sort,
    int page = 1,
  });

  /// Метод получения манги по поисковому запросу
  Future<ResponseModel<MangaResponse>> getMangaBySearchQ(
    String search, [
    int page = 1,
  ]);
}
