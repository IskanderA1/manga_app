import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:manga_app/const/theme.dart';

/// Мастер виджет згрузки
class PlaceholderWidget extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadiusGeometry? borderRadius;

  const PlaceholderWidget({
    Key? key,
    this.width = 120,
    this.height = 160,
    this.borderRadius = BorderRadius.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: kGrey300Color.withOpacity(0.65),
      highlightColor: kLightGreyColor.withOpacity(0.8),
      child: Container(
        decoration: BoxDecoration(
          color: kGrey300Color,
          borderRadius: borderRadius,
        ),
        width: width,
        height: height,
      ),
    );
  }
}
