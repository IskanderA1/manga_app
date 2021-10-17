import 'package:flutter/material.dart';
import 'package:manga_app/presentation/widgets/general/image_widget.dart';

/// Виджет карточки манги отображется в списках каталога манги
/// и в секциях на главном скрине
class MangaItemWidget extends StatelessWidget {
  const MangaItemWidget({Key? key}) : super(key: key);

  final double _width = 120;
  final double _height = 160;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageWidget(
            'https://api.remanga.org/media/titles/sssclass-hunter-strngthened-by-drawing/d9ee043a94fa569dc1490fbc08a8c853.jpg',
            width: _width,
            height: _height,
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
