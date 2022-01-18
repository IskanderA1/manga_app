import 'package:flutter/material.dart';
import 'package:manga_app/presentation/screens/catalog_screen/catalog_screen.dart';
import 'package:manga_app/presentation/screens/catalog_screen/manga_reader_screen/manga_reader_screen.dart';
import 'package:manga_app/presentation/screens/catalog_screen/manga_screen/manga_screen.dart';
import 'package:manga_app/presentation/screens/favorite_manga_screen/favorite_manga_screen.dart';
import 'package:manga_app/presentation/screens/home_screen/home_screen.dart';
import 'package:manga_app/presentation/screens/main_screen.dart';
import 'package:manga_app/presentation/screens/profile_screen/profile_screen.dart';
import 'package:routemaster/routemaster.dart';

/// ROOT
const rootRoute = '/';
const kMangaRoute = '/manga';

/// HOME
const kHomeRoute = '/home';

/// CATALOG
const kCatalogRoute = '/catalog';

/// FAVORITE
const kFavoriteRoute = '/favorite';

/// PROFILE
const kProfileRoute = '/profile';

final routes = RouteMap(routes: {
  '/': (_) => const CupertinoTabPage(
        child: MainScreen(),
        paths: [
          kHomeRoute,
          kCatalogRoute,
          kFavoriteRoute,
          kProfileRoute,
        ],
      ),
  kHomeRoute: (_) => const MaterialPage(child: HomeScreen()),
  kCatalogRoute: (_) => const MaterialPage(child: CatalogScreen()),
  kFavoriteRoute: (_) => const MaterialPage(child: FavoriteMangaScreen()),
  kProfileRoute: (data) => MaterialPage(
        child: ProfileScreen(id: data.pathParameters['id']),
      ),
  '$kMangaRoute/:id': (data) {
    if (data.queryParameters['chapter_id'] != null &&
        data.queryParameters['branch_id'] != null) {
      return MaterialPage(
        child: MangaReaderScreen(
          branchId: int.parse(data.queryParameters['branch_id'].toString()),
          chapterId: int.parse(data.queryParameters['chapter_id'].toString()),
        ),
      );
    }
    return MaterialPage(
      child: MangaDetailScreen(
        titleName: data.pathParameters['id'] ?? '',
      ),
    );
  },
});
