import 'package:flutter/material.dart';
import 'package:manga_app/presentation/widgets/general/image_widget.dart';

/// Виджет карточки манги отображется в списках каталога манги
/// и в секциях на главном скрине
class MangaItemWidget extends StatelessWidget {
  final double width;

  const MangaItemWidget({Key? key, this.width = 120}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageWidget(
            'https://api.remanga.org/media/titles/sssclass-hunter-strngthened-by-drawing/d9ee043a94fa569dc1490fbc08a8c853.jpg',
            width: width,
            height: width * 1.25,
          ),
          const Text(
            'Мне предначертано стать Охотником SSS-класса',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
