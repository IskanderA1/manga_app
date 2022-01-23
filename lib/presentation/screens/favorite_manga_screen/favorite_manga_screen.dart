import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/general/mr_header_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/background_image_widget.dart';

class FavoriteMangaScreen extends StatefulWidget {
  const FavoriteMangaScreen({Key? key}) : super(key: key);

  @override
  _FaboriteMangaScreenState createState() => _FaboriteMangaScreenState();
}

class _FaboriteMangaScreenState extends State<FavoriteMangaScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kDarkBackgroundColor,
      body: BackgroundImageWidget(
        child: MRHeaderWidget(
          title: 'Любимые',
          actions: [],
        ),
      ),
    );
  }
}
