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
    this.width = 120,
    this.height = 160,
    this.placeholderHeight,
    this.placeholderWidth,
    this.fit = BoxFit.fitWidth,
    this.borderRadius,
    this.useCash = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? kDefRadius,
      child: imageUrl != null
          ? useCash
              ? CachedNetworkImage(
                  imageUrl: imageUrl!,
                  width: width,
                  height: height,
                  fit: fit,
                  placeholder: (_, url) {
                    return PlaceholderWidget(
                      width: placeholderWidth ?? width ?? 120,
                      height: placeholderHeight ?? height ?? 160,
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
                )
              : Image.network(
                  imageUrl!,
                  width: width,
                  height: height,
                  fit: fit,
                  frameBuilder: (_, child, __, ___) {
                    return child;
                  },
                  loadingBuilder: (_, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return PlaceholderWidget(
                      width: placeholderWidth ?? width ?? 120,
                      height: placeholderHeight ?? height ?? 160,
                    );
                  },
                  errorBuilder: (_, __, ___) {
                    return Image.asset(
                      'assets/images/error_anime.jpeg',
                      width: width,
                      height: height,
                      fit: BoxFit.cover,
                    );
                  },
                )
          : PlaceholderWidget(
              width: placeholderWidth ?? width ?? 120,
              height: placeholderHeight ?? height ?? 160,
            ),
    );
  }
}
