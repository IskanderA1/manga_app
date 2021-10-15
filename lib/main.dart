import 'package:flutter/material.dart';
import 'package:manga_app/presentation/screens/main_screen.dart';
import 'package:manga_app/presentation/screens/navigator/navigator.dart';
import 'package:routemaster/routemaster.dart';

import 'const/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Manga',
      theme: themeDark,
      routerDelegate: RoutemasterDelegate(
        routesBuilder: (context) => routes,
      ),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
