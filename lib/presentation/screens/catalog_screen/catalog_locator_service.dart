import 'package:get_it/get_it.dart';
import 'package:manga_app/domain/entitys/catalog/filter_model.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/catalog_bloc/catalog_bloc.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/filter_bloc/catalog_filter_bloc.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/manga_bloc/manga_detail_bloc.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/manga_chapter_cubit/manga_chapter_cubit.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/manga_page_cubit/manga_page_cubit.dart';

Future<void> initCatalogLocatorService(GetIt locator) async {
  locator.registerSingleton<CatalogBloc>(CatalogBloc(locator()));
  locator.registerFactoryParam<CatalogFilterBloc, List<FilterModel>,
      Map<FilterType, List<FilterModel>>>(
    (currentFilters, filters) => CatalogFilterBloc(
      locator(),
      currentFilters,
      filters,
    ),
  );
  locator.registerFactoryParam<MangaDetailBloc, String, void>(
    (titleName, _) => MangaDetailBloc(
      titleName,
      locator(),
    )..add(const LoadMangaDetailEvent()),
  );
  locator.registerFactoryParam<MangaChapterCubit, int, void>(
    (branchId, _) => MangaChapterCubit(
      branchId,
      locator(),
    )..loadChapters(),
  );
  locator.registerFactoryParam<MangaPageCubit, int, void>(
    (chapterId, _) => MangaPageCubit(
      chapterId,
      locator(),
    )..loadPages(),
  );
}
