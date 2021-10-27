import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/manga_item_widget.dart';

/// Виджет секции на главмно экрнае
class PromoSectionWidget extends StatelessWidget {
  final Color? color;
  final String title;
  final String? subTitle;

  const PromoSectionWidget({
    Key? key,
    required this.title,
    this.subTitle,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      color: color ?? Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: kHeader3TextStyle,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                )
              ],
            ),
          ),
          if (subTitle != null)
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Text(
                subTitle!,
                style: kHeader4TextStyle,
              ),
            ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: List.generate(
          //       6,
          //       (index) {
          //         return Padding(
          //           padding:
          //               EdgeInsets.only(left: index == 0 ? 16 : 0, right: 16),
          //           child: MangaItemWidget(),
          //         );
          //       },
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
