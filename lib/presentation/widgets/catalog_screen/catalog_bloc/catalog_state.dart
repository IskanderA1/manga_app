part of 'catalog_bloc.dart';

class CatalogState extends Equatable {
  final List<FilterModel> currentFilters;
  final SortModel sortBy;
  final MangaResponse? manga;
  final MangaResponse? mangaBySearch;
  final bool isLoading;
  final String? error;
  final Map<FilterType, List<FilterModel>>? filters;

  const CatalogState({
    this.sortBy = SortModel.defaultSort,
    this.currentFilters = const [],
    this.isLoading = false,
    this.manga,
    this.mangaBySearch,
    this.filters,
    this.error,
  });

  bool get canUpload {
    if (isLoading) {
      return false;
    } else if (mangaBySearch != null) {
      return mangaBySearch!.page < mangaBySearch!.totalPages;
    } else if (manga != null) {
      return manga!.page < manga!.totalPages;
    } else {
      return false;
    }
  }

  @override
  List<Object?> get props => [
        filters,
        currentFilters,
        sortBy,
        manga,
        mangaBySearch,
        isLoading,
        error,
      ];
}
