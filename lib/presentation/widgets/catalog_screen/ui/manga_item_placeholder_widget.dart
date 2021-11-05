import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/general/placeholder_widget.dart';

/// Виджет загрузки карочки манги
class MangaItemPlaceholderWidget extends StatelessWidget {
  final double width;

  const MangaItemPlaceholderWidget({Key? key, this.width = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlaceholderWidget(
            width: width,
            height: width * 1.25,
            borderRadius: kDefRadius,
          ),
          const SizedBox(height: 8),
          PlaceholderWidget(
            width: width,
            height: 11,
            borderRadius: kDefRadius,
          ),
          const SizedBox(height: 6),
          PlaceholderWidget(
            width: width / 2,
            height: 11,
            borderRadius: kDefRadius,
          ),
        ],
      ),
    );
  }
}
