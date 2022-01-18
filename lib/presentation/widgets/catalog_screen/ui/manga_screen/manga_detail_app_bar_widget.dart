import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/general/image_widget.dart';
import 'package:manga_app/presentation/widgets/general/mr_back_button_widget.dart';

/// Sliver App Bar для экрана детализации манги
class MangaDetailAppBarWidget extends SliverPersistentHeaderDelegate {
  final String? imageUrl;
  final double expandedHeight;

  MangaDetailAppBarWidget(this.imageUrl, this.expandedHeight);

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: [
        ImageWidget(
          imageUrl,
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
          borderRadius: kRadius1Bottom,
        ),
        const Positioned(
          top: 32,
          left: -8,
          child: BackButtonWidget(),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
