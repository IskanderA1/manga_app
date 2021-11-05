part of 'catalog_bloc.dart';

abstract class CatalogEvent extends Equatable {
  const CatalogEvent();
}

/// Ивент загрузки манги с применнеием фильтров
/// [currentFilters] - null - загрузка с текущими фильтрами,
/// не null установить новые
/// [sortBy] - null - загрузка с текущей сортировкой,
/// не null установить новую
/// [isClearLoad] - если true загрузит с 1ой странице
class LoadMangaCatalogEvent extends CatalogEvent {
  final List<FilterModel>? currentFilters;
  final SortModel? sortBy;
  final bool isClearLoad;

  const LoadMangaCatalogEvent({
    this.currentFilters,
    this.sortBy,
    this.isClearLoad = false,
  });

  @override
  List<Object?> get props => [
        currentFilters,
        sortBy,
        isClearLoad,
      ];
}

/// Ивент инициализации блока
/// изначально загружает фильтры потом загружает манги
/// со стандартной сортировкой и фильтрами
class InitMangaCatalogEvent extends CatalogEvent {
  const InitMangaCatalogEvent();

  @override
  List<Object?> get props => [];
}

/// Ивент загрузки манги по запросу названию
/// [isClearLoad] - если true загрузит с 1ой странице
class LoadMangaCatalogBySearchEvent extends CatalogEvent {
  final String query;
  final bool isClearLoad;

  const LoadMangaCatalogBySearchEvent({
    required this.query,
    this.isClearLoad = false,
  });

  @override
  List<Object?> get props => [query, isClearLoad];
}
