import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:manga_app/data/repositories/metric_service.dart';
import 'package:manga_app/presentation/screens/catalog_screen/catalog_screen.dart';
import 'package:manga_app/presentation/screens/favorite_manga_screen/favorite_manga_screen.dart';
import 'package:manga_app/presentation/screens/home_screen/home_screen.dart';
import 'package:manga_app/presentation/screens/profile_screen/profile_screen.dart';
import 'package:routemaster/routemaster.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {}
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabState = CupertinoTabPage.of(context);
    return CupertinoTabScaffold(
      controller: tabState.controller,
      tabBuilder: tabState.tabBuilder,
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Главная',
            icon: Icon(
              FontAwesome5.home,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Манги',
            icon: Icon(
              FontAwesome5.book_open,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Любимые',
            icon: Icon(
              FontAwesome5.heart,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Я',
            icon: Icon(
              FontAwesome5.user_alt,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
