import 'package:manga_app/domain/entitys/core/response_model.dart';
import 'package:manga_app/domain/entitys/manga/filter_model.dart';
import 'package:manga_app/domain/entitys/manga/manga_response.dart';
import 'package:manga_app/domain/entitys/manga/sort_model.dart';

abstract class MangaRepository {
  static const mainUrl = 'https://api.remanga.org';
  static const mainApiUrl = '$mainUrl/api';

  /// Метод получения списка фильтров манги
  Future<ResponseModel<Map<FilterType, List<FilterModel>>>> getFilter();

  /// Метод получения манги с учетом сортировки и фильтров
  Future<ResponseModel<MangaResponse>> getManga({
    required List<FilterModel> currentFilters,
    SortModel? sortBy,
    int? page,
  });

  /// Метод получения манги по поисковому запросу
  Future<ResponseModel<MangaResponse>> getMangaBySearchQ(
    String search,
    int? page,
  );
}
