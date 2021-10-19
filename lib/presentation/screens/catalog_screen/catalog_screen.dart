import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/general/search_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/background_image_widget.dart';
import 'package:manga_app/presentation/widgets/general/mr_header_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/manga_list_widget.dart';

/// Экран катлога манги
class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBackgroundColor,
      body: BackgroundImageWidget(
        child: ListView(
          shrinkWrap: true,
          children: [
            const MRHeaderWidget(
              title: 'Каталог',
              hasFilter: true,
              hasSort: true,
            ),
            SearchWidget(
              onChanged: (search) {},
            ),
            const MangaListWidget(
              manga: [{},{},{}],
            )
          ],
        ),
      ),
    );
  }
}
