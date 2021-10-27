import 'package:get_it/get_it.dart';
import 'package:manga_app/data/repositories/manga_repository_impl.dart';
import 'package:manga_app/data/repositories/shared_pref_repository_impl.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';
import 'package:manga_app/domain/repositories/shared_pref_repository.dart';
import 'package:manga_app/presentation/widgets/home_screen/catalog_screen/catalog_bloc/catalog_bloc.dart';

import 'package:package_info/package_info.dart';

Future<void> initCatalogLocatorService(GetIt locator) async {
  locator.registerSingleton<CatalogBloc>(CatalogBloc(locator()));
}
