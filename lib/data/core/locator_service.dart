import 'package:get_it/get_it.dart';
import 'package:manga_app/data/repositories/repository_locator_service.dart';
import 'package:manga_app/presentation/screens/catalog_screen/catalog_locator_service.dart';

GetIt locator = GetIt.instance;

Future<void> initLocatorService() async {
  await initRepositoryLocatorService(locator);
  await initCatalogLocatorService(locator);
}
