import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/domain/entitys/catalog/manga_model.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';
import 'package:manga_app/presentation/screens/navigator/navigator.dart';
import 'package:manga_app/presentation/widgets/general/image_widget.dart';
import 'package:routemaster/routemaster.dart';

/// Виджет карточки манги отображется в списках каталога манги
/// и в секциях на главном скрине
class MangaItemWidget extends StatelessWidget {
  final MangaModel manga;
  final double width;

  const MangaItemWidget({
    Key? key,
    this.width = 120,
    required this.manga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Routemaster.of(context).push('$kMangaRoute/${manga.dir}');
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageWidget(
                  MangaRepository.mainUrl + manga.img,
                  width: width,
                  height: width * 1.25,
                ),
                Text(
                  manga.rusName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          if (manga.rating != null && manga.rating! > 0)
            Positioned(
              left: width - 15,
              top: 10,
              child: Container(
                padding: const EdgeInsets.fromLTRB(8, 1, 8, 1),
                decoration: BoxDecoration(
                    color: kPurple200Color,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  manga.rating.toString(),
                ),
              ),
            )
        ],
      ),
    );
  }
}
