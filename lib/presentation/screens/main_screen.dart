import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:manga_app/const/theme.dart';
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
        backgroundColor: kDarkBackgroundColor.withOpacity(.5),
        activeColor: kWhiteColor,
        items: const [
          BottomNavigationBarItem(
            label: 'Манга',
            icon: Icon(FontAwesome5.book_open, size: 20),
          ),
          BottomNavigationBarItem(
            label: 'Любимые',
            icon: Icon(FontAwesome5.heart, size: 20),
          ),
        ],
      ),
    );
  }
}
