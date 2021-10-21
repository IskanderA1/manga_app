import 'package:flutter/material.dart';
import 'package:manga_app/data/core/locator_service.dart';
import 'package:manga_app/data/repositories/metric_service.dart';
import 'package:manga_app/presentation/screens/navigator/navigator.dart';
import 'package:routemaster/routemaster.dart';

import 'const/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MetricService.init();
  await initLocatorService();
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
