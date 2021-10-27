import 'package:flutter/material.dart';
import 'package:manga_app/domain/entitys/manga/manga_model.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';
import 'package:manga_app/presentation/widgets/general/image_widget.dart';

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
    return SizedBox(
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
    );
  }
}
