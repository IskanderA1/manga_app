import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/general/placeholder_widget.dart';

/// Виджет загрузки карочки манги
class MangaItemPlaceholderWidget extends StatelessWidget {
  const MangaItemPlaceholderWidget({Key? key}) : super(key: key);

  final double _width = 120;
  final double _height = 160;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlaceholderWidget(
            width: _width,
            height: _height,
            borderRadius: kDefRadius,
          ),
          const SizedBox(height: 8),
          PlaceholderWidget(
            width: _width,
            height: 10,
            borderRadius: kDefRadius,
          ),
          const SizedBox(height: 4),
          PlaceholderWidget(
            width: _width / 2,
            height: 10,
            borderRadius: kDefRadius,
          ),
        ],
      ),
    );
  }
}
