import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/general/image_widget.dart';
import 'package:manga_app/presentation/widgets/general/mr_header_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/background_image_widget.dart';

class FavoriteMangaScreen extends StatefulWidget {
  const FavoriteMangaScreen({Key? key}) : super(key: key);

  @override
  _FavoriteMangaScreenState createState() => _FavoriteMangaScreenState();
}

class _FavoriteMangaScreenState extends State<FavoriteMangaScreen> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBackgroundColor,
      body: BackgroundImageWidget(
        child: ListView(
          controller: scrollController,
          shrinkWrap: true,
          children: [
            const MRHeaderWidget(title: 'Любимые'),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: ClipRRect(
                borderRadius: kDefRadius,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    height: 120 * 1.25,
                    color: kDarkBackgroundColor.withOpacity(.5),
                    child: Row(
                      children: [
                        const ImageWidget(
                          ' MangaRepository.mainUrl + manga.img',
                          width: 120,
                          height: 120 * 1.25,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 6, 6, 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const Text(
                                'Название',
                                style: kHeader5TextStyle,
                              ),
                              Text(
                                'Автор',
                                style: kSubHeaderTextStyle.copyWith(color: kGrey400Color),
                              ),
                              const Spacer(),
                              Text(
                                'Прогресс: 8/12',
                                style: kSubHeaderTextStyle.copyWith(color: kGrey400Color),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
