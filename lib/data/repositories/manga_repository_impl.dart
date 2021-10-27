import 'package:dio/dio.dart';
import 'package:manga_app/data/repositories/metric_service.dart';
import 'package:manga_app/domain/entitys/core/response_model.dart';
import 'package:manga_app/domain/entitys/manga/filter_model.dart';
import 'package:manga_app/domain/entitys/manga/manga_response.dart';
import 'package:manga_app/domain/entitys/manga/sort_model.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';

class MangaRepositoryImpl extends MangaRepository {
  static final _options = BaseOptions(
    baseUrl: MangaRepository.mainApiUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  static const filterEndpoint = '/forms/titles';
  static const mangaEndpoint = '/search/catalog';
  static const mangaSearchEndpoint = '/search';

  final _client = Dio(_options);

  @override
  Future<ResponseModel<Map<FilterType, List<FilterModel>>>> getFilter() async {
    final queryParameters = <String, dynamic>{
      "get": "genres",
      "get": "categories",
      "get": "types",
      "get": "status",
      "get": "age_limit",
    };
    try {
      final response = await _client.get(
        filterEndpoint,
        queryParameters: queryParameters,
      );

      var data = response.data;
      MetricService.sendEvent(
        'getFilter',
        attributes: {
          'dataNotNull': data['content'] != null && data['content'].isNotEmpty,
          'msg': data['msg'],
        },
      );
      if (data['content'] != null) {
        final filtersMap = <FilterType, List<FilterModel>>{};
        for (var type in FilterType.values) {
          final filters = data['content'][type.value];
          if (filters != null) {
            filtersMap[type] = (filters as List)
                .map((json) => FilterModel.fromJson(type, json))
                .toList();
          }
        }
        return ResponseModel.success(filtersMap);
      } else {
        print("Не удалось загрузить фильтры");
        return ResponseModel.error('"Не удалось загрузить фильтры');
      }
    } on DioError catch (error, stacktrace) {
      MetricService.sendEvent(
        'getFilterError',
        attributes: {
          'error': error.message.substring(0, 200),
        },
      );
      final String errorText = error.response?.data['msg'] ?? '';
      if (errorText.isNotEmpty) {
        print(errorText);
        return ResponseModel.error(errorText);
      }
      print("Ошибка подключения к серверу\n $stacktrace");
      return ResponseModel.error('Ошибка подключения к серверу');
    }
  }

  @override
  Future<ResponseModel<MangaResponse>> getManga({
    required List<FilterModel> currentFilters,
    SortModel? sortBy,
    int? page,
  }) async {
    final queryParameters = <String, dynamic>{
      'count': 30,
      'page': (page ?? 0) + 1,
    };
    for (var element in currentFilters) {
      queryParameters[element.type.value] = element.filterId;
    }
    if (sortBy != null) {
      queryParameters['ordering'] = sortBy.sortType.value;
    }
    try {
      final response = await _client.get(
        mangaEndpoint,
        queryParameters: queryParameters,
      );

      var data = response.data;
      MetricService.sendEvent(
        'getManga',
        attributes: {
          'dataNotNull': data['content'] != null && data['content'].isNotEmpty,
          'msg': data['msg'],
        },
      );
      if (data['content'] != null && data['content'].isNotEmpty) {
        return ResponseModel.success(MangaResponse.fromJson(data));
      } else {
        print("Не удалось загрузить манги");
        return ResponseModel.error('"Не удалось загрузить манги');
      }
    } on DioError catch (error, stacktrace) {
      MetricService.sendEvent(
        'getMangaError',
        attributes: {
          'error': error.message.substring(0, 200),
        },
      );
      final String errorText = error.response?.data['msg'] ?? '';
      if (errorText.isNotEmpty) {
        print(errorText);
        return ResponseModel.error(errorText);
      }
      print("Ошибка подключения к серверу\n $stacktrace");
      return ResponseModel.error('Ошибка подключения к серверу');
    }
  }

  @override
  Future<ResponseModel<MangaResponse>> getMangaBySearchQ(
    String search, [
    int? page,
  ]) async {
    final queryParameters = <String, dynamic>{
      'count': 10,
      'page': (page ?? 0) + 1,
      'query': search,
    };

    try {
      final response = await _client.get(
        mangaSearchEndpoint,
        queryParameters: queryParameters,
      );

      var data = response.data;
      MetricService.sendEvent(
        'getMangaBySearchQ',
        attributes: {
          'dataNotNull': data['content'] != null && data['content'].isNotEmpty,
          'msg': data['msg'],
        },
      );
      if (data['content'] != null && data['content'].isNotEmpty) {
        return ResponseModel.success(MangaResponse.fromJson(data));
      } else {
        print("По вашему запросу ничего не найдено");
        return ResponseModel.error('По вашему запросу ничего не найдено');
      }
    } on DioError catch (error, stacktrace) {
      MetricService.sendEvent(
        'getMangaBySearchQError',
        attributes: {
          'error': error.message.substring(0, 200),
        },
      );
      final String errorText = error.response?.data['msg'] ?? '';
      if (errorText.isNotEmpty) {
        print(errorText);
        return ResponseModel.error(errorText);
      }
      print("Ошибка подключения к серверу\n $stacktrace");
      return ResponseModel.error('Ошибка подключения к серверу');
    }
  }
}
