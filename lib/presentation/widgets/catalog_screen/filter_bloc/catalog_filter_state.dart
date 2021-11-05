part of 'catalog_filter_bloc.dart';

class CatalogFilterState extends Equatable {
  final int? count;
  final bool isLoading;
  final String? error;
  final bool isActiveApplyButton;

  final List<FilterModel> currentFilters;

  const CatalogFilterState({
    required this.currentFilters,
    this.isActiveApplyButton = true,
    this.isLoading = false,
    this.count,
    this.error,
  });

  @override
  List<Object?> get props => [
        currentFilters,
        isActiveApplyButton,
        count,
        error,
        isLoading,
      ];
}
