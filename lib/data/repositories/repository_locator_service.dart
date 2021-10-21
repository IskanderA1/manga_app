import 'package:get_it/get_it.dart';
import 'package:manga_app/data/repositories/manga_repository_impl.dart';
import 'package:manga_app/data/repositories/shared_pref_repository_impl.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';
import 'package:manga_app/domain/repositories/shared_pref_repository.dart';

import 'package:package_info/package_info.dart';

Future<void> initRepositoryLocatorService(GetIt locator) async {
  SharedPrefRepository sharedPref = SharedPrefRepositoryImpl();
  await sharedPref.init();
  locator.registerSingleton<SharedPrefRepository>(sharedPref);
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  locator.registerSingleton<PackageInfo>(packageInfo);
  locator.registerSingleton<MangaRepository>(MangaRepositoryImpl());
}
