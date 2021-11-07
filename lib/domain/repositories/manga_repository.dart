import 'package:manga_app/domain/entitys/core/response_model.dart';
import 'package:manga_app/domain/entitys/catalog/filter_model.dart';
import 'package:manga_app/domain/entitys/catalog/manga_response.dart';
import 'package:manga_app/domain/entitys/catalog/sort_model.dart';
import 'package:manga_app/domain/entitys/manga/manga_detail_model.dart';

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

  /// Метод получения детализации манги
  Future<ResponseModel<MangaDetailModel>> getMangaDetail(String titleName);
}
