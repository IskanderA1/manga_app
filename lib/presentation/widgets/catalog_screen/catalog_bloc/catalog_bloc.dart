import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:manga_app/domain/entitys/manga/filter_model.dart';
import 'package:manga_app/domain/entitys/manga/manga_response.dart';
import 'package:manga_app/domain/entitys/manga/sort_model.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';

part 'catalog_event.dart';

part 'catalog_state.dart';

/// Блок для работы с каталогом манги
/// отвечает за:
/// 1) инициализацию фильтров
/// 2) Поиск манги с применением фильтров и сортировки
/// 3) Поиск манги по запросу
class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final MangaRepository repository;

  CatalogBloc(this.repository) : super(const CatalogState()) {
    on<InitMangaCatalogEvent>(_initMangaCatalog);
    on<LoadMangaCatalogEvent>(_loadMangaCatalog);
    on<LoadMangaCatalogBySearchEvent>(_loadMangaCatalogBySearch);
  }

  final List<FilterModel> currentFilters = [];
  SortModel sortBy = SortModel.defaultSort;
  MangaResponse? manga;
  MangaResponse? mangaBySearch;
  String? searchQ;

  Map<FilterType, List<FilterModel>>? filters;

  void _loadMangaCatalog(
    LoadMangaCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    if (event.isClearLoad) {
      manga = null;
    }
    if (event.currentFilters != null) {
      currentFilters.clear();
      currentFilters.addAll(event.currentFilters!);
    }
    if (event.sortBy != null) {
      sortBy = event.sortBy!;
    }
    emit(CatalogState(
      filters: filters,
      currentFilters: currentFilters,
      sortBy: sortBy,
      manga: manga,
      isLoading: true,
    ));

    final response = await repository.getManga(
      currentFilters: currentFilters,
      sortBy: sortBy,
      page: manga?.page,
    );
    if (response.hasData) {
      if (manga != null) {
        manga = manga?.update(response.data!);
      } else {
        manga = response.data;
      }
      emit(CatalogState(
        filters: filters,
        manga: manga,
        sortBy: sortBy,
        currentFilters: currentFilters,
      ));
    } else {
      emit(CatalogState(
        manga: manga,
        sortBy: sortBy,
        filters: filters,
        currentFilters: currentFilters,
        error: response.error,
      ));
    }
  }

  void _initMangaCatalog(
    InitMangaCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    emit(CatalogState(
      filters: filters,
      currentFilters: currentFilters,
      sortBy: sortBy,
      manga: manga,
      isLoading: true,
    ));

    final response = await repository.getFilter();
    if (response.hasData) {
      filters = response.data!;
      add(const LoadMangaCatalogEvent(
        isClearLoad: true,
        sortBy: SortModel.defaultSort,
        currentFilters: [],
      ));
    } else {
      emit(CatalogState(
        filters: filters,
        manga: manga,
        sortBy: sortBy,
        currentFilters: currentFilters,
        error: response.error,
      ));
    }
  }

  void _loadMangaCatalogBySearch(
    LoadMangaCatalogBySearchEvent event,
    Emitter<CatalogState> emit,
  ) async {
    if (event.isClearLoad) {
      mangaBySearch = mangaBySearch?.copyWith(1);
    }
    if (event.query.isNotEmpty) {
      emit(CatalogState(
        filters: filters,
        currentFilters: currentFilters,
        sortBy: sortBy,
        mangaBySearch: mangaBySearch,
        isLoading: true,
      ));

      final response = await repository.getMangaBySearchQ(
        event.query,
        searchQ == event.query ? mangaBySearch?.page : null,
      );
      if (response.hasData) {
        if (mangaBySearch != null && searchQ == event.query) {
          mangaBySearch = mangaBySearch?.update(response.data!);
        } else {
          mangaBySearch = response.data!;
        }
        searchQ = event.query;
        emit(CatalogState(
          filters: filters,
          currentFilters: currentFilters,
          sortBy: sortBy,
          mangaBySearch: mangaBySearch,
        ));
      } else {
        searchQ = null;
        emit(CatalogState(
          filters: filters,
          sortBy: sortBy,
          currentFilters: currentFilters,
          mangaBySearch: mangaBySearch,
          error: response.error,
        ));
      }
    } else {
      mangaBySearch = null;
      emit(CatalogState(
        filters: filters,
        currentFilters: currentFilters,
        sortBy: sortBy,
        manga: manga,
      ));
    }
  }
}
