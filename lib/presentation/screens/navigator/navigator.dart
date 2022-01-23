import 'package:flutter/material.dart';
import 'package:manga_app/presentation/screens/catalog_screen/catalog_screen.dart';
import 'package:manga_app/presentation/screens/catalog_screen/manga_reader_screen/manga_reader_screen.dart';
import 'package:manga_app/presentation/screens/catalog_screen/manga_screen/manga_screen.dart';
import 'package:manga_app/presentation/screens/favorite_manga_screen/favorite_manga_screen.dart';
import 'package:manga_app/presentation/screens/main_screen.dart';
import 'package:routemaster/routemaster.dart';

/// ROOT
const rootRoute = '/';
const kMangaRoute = '/manga';
const kMangaReadRoute = '$kMangaRoute/read';

/// CATALOG
const kCatalogRoute = '/catalog';

/// FAVORITE
const kFavoriteRoute = '/favorite';

final routes = RouteMap(routes: {
  '/': (_) => const CupertinoTabPage(
        child: MainScreen(),
        paths: [
          kCatalogRoute,
          kFavoriteRoute,
        ],
      ),
  kCatalogRoute: (_) => const MaterialPage(child: CatalogScreen()),
  kFavoriteRoute: (_) => const MaterialPage(child: FavoriteMangaScreen()),
  kMangaRoute: (data) {
    return MaterialPage(
      child: MangaDetailScreen(
        titleName: data.queryParameters['id'] ?? '',
      ),
    );
  },
  kMangaReadRoute: (data) {
    return MaterialPage(
      child: MangaReaderScreen(
        branchId: int.tryParse(
              data.queryParameters['branch_id'].toString(),
            ) ??
            -1,
        chapterId: int.tryParse(
              data.queryParameters['chapter_id'].toString(),
            ) ??
            -1,
        mangaId: data.queryParameters['manga_id'],
      ),
    );
  },
});
