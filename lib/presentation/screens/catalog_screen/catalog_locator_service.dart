import 'package:get_it/get_it.dart';
import 'package:manga_app/domain/entitys/manga/filter_model.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/catalog_bloc/catalog_bloc.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/filter_bloc/catalog_filter_bloc.dart';

Future<void> initCatalogLocatorService(GetIt locator) async {
  locator.registerSingleton<CatalogBloc>(CatalogBloc(locator()));
  locator.registerFactoryParam<CatalogFilterBloc,
      List<FilterModel>, Map<FilterType, List<FilterModel>>>(
    (currentFilters, filters) => CatalogFilterBloc(
      locator(),
      currentFilters,
      filters,
    ),
  );
}
