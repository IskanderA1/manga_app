import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:manga_app/const/extensions.dart';
import 'package:manga_app/domain/entitys/catalog/filter_model.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';

part 'catalog_filter_event.dart';

part 'catalog_filter_state.dart';

/// Блок для работы с фильтрами каталога
class CatalogFilterBloc extends Bloc<CatalogFilterEvent, CatalogFilterState> {
  final MangaRepository repository;
  final List<FilterModel> appliedFilters;
  late final List<FilterModel> currentFilters;

  final Map<FilterType, List<FilterModel>> filters;

  CatalogFilterBloc(this.repository, this.appliedFilters, this.filters)
      : super(CatalogFilterState(currentFilters: appliedFilters)) {
    currentFilters = appliedFilters;
    on<UpdateFilterEvent>(_updateFilterEvent);
    on<ClearFilterEvent>(_clearFilterEvent);
  }

  List<FilterType> get filterTypes => filters.keys.toList();

  void _updateFilterEvent(
    UpdateFilterEvent event,
    Emitter<CatalogFilterState> emit,
  ) async {
    currentFilters.removeWhere((element) => element.type == event.type);
    currentFilters.addAll(event.currentFilters);
    await _loadFilter(emit);
  }

  void _clearFilterEvent(
    ClearFilterEvent event,
    Emitter<CatalogFilterState> emit,
  ) async {
    currentFilters.clear();
    await _loadFilter(emit);
  }

  Future<void> _loadFilter(Emitter<CatalogFilterState> emit) async {
    emit(CatalogFilterState(
      isActiveApplyButton: appliedFilters.equals(currentFilters),
      currentFilters: currentFilters,
      isLoading: true,
    ));

    final response = await repository.getManga(
      currentFilters: currentFilters,
    );
    if (response.hasData) {
      emit(CatalogFilterState(
        isActiveApplyButton: appliedFilters.equals(currentFilters),
        count: response.data?.totalMangaItems,
        currentFilters: currentFilters,
      ));
    } else {
      emit(CatalogFilterState(
        isActiveApplyButton: appliedFilters.equals(currentFilters),
        count: response.error == 'Не удалось загрузить манги' ? 0 : null,
        currentFilters: currentFilters,
        error: response.error,
      ));
    }
  }
}
