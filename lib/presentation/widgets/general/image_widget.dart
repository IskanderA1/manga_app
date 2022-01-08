import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';

import 'placeholder_widget.dart';

/// Универсальный виджет изображений
class ImageWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageUrl;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  const ImageWidget(
    this.imageUrl, {
    Key? key,
    this.width,
    this.height,
    this.fit = BoxFit.fitWidth,
    this.borderRadius,
  }) : super(key: key);

  final double _width = 120;
  final double _height = 160;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? kDefRadius,
      child: imageUrl != null
          ? CachedNetworkImage(
              imageUrl: imageUrl!,
              width: width ?? _width,
              height: height ?? _height,
              fit: fit,
              placeholder: (_, url) {
                return PlaceholderWidget(
                  width: width ?? _width,
                  height: height ?? _height,
                );
              },
              errorWidget: (_, url, error) {
                return Image.asset(
                  'assets/images/error_anime.jpeg',
                  width: width ?? _width,
                  height: height ?? _height,
                  fit: BoxFit.cover,
                );
              },
            )
          : PlaceholderWidget(
              width: width ?? _width,
              height: height ?? _height,
            ),
    );
  }
}
