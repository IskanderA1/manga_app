import 'package:flutter/material.dart';
import 'package:manga_app/presentation/screens/catalog_screen/catalog_screen.dart';
import 'package:manga_app/presentation/screens/favorite_manga_screen/favorite_manga_screen.dart';
import 'package:manga_app/presentation/screens/home_screen/home_screen.dart';
import 'package:manga_app/presentation/screens/main_screen.dart';
import 'package:manga_app/presentation/screens/profile_screen/profile_screen.dart';
import 'package:routemaster/routemaster.dart';

final routes = RouteMap(routes: {
  '/': (_) => const CupertinoTabPage(
        child: MainScreen(),
        paths: ['/home', '/catalog', '/favorite', '/profile'],
      ),
  '/home': (_) => const MaterialPage(child: HomeScreen()),
  '/catalog': (_) => const MaterialPage(child: CatalogScreen()),
  '/favorite': (_) => const MaterialPage(child: FavoriteMangaScreen()),
  '/profile': (info) =>
      MaterialPage(child: ProfileScreen(id: info.pathParameters['id'])),
});
