import 'package:flutter/material.dart';

class FavoriteMangaScreen extends StatefulWidget {
  const FavoriteMangaScreen({Key? key}) : super(key: key);

  @override
  _FaboriteMangaScreenState createState() => _FaboriteMangaScreenState();
}

class _FaboriteMangaScreenState extends State<FavoriteMangaScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('FavoriteMangaScreen'),
      ),
    );
  }
}
