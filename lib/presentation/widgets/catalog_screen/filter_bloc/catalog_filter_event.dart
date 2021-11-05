part of 'catalog_filter_bloc.dart';

abstract class CatalogFilterEvent extends Equatable {
  const CatalogFilterEvent();
}

/// Событие обновления фильтров после их изменения
class UpdateFilterEvent extends CatalogFilterEvent {
  final List<FilterModel> currentFilters;
  final FilterType type;

  const UpdateFilterEvent(this.currentFilters, this.type);

  @override
  List<Object?> get props => [currentFilters, type];
}

/// Событие очистки фильтров
class ClearFilterEvent extends CatalogFilterEvent {
  const ClearFilterEvent();

  @override
  List<Object?> get props => [];
}
