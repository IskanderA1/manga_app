import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';

import 'placeholder_widget.dart';

/// Универсальный виджет изображений
class ImageWidget extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;

  const ImageWidget(
    this.imageUrl, {
    Key? key,
    this.width = 120,
    this.height = 160,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kDefRadius,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: BoxFit.fitWidth,
        placeholder: (_, url) {
          return PlaceholderWidget(
            width: width,
            height: height,
          );
        },
        errorWidget: (_, url, error) {
          return Image.asset(
            'assets/images/error_anime.jpeg',
            width: width,
            height: height,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
