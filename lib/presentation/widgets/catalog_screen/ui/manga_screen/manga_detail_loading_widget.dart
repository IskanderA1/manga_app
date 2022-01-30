import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/general/placeholder_widget.dart';

class MangaDetailLoadingWidget extends StatelessWidget {
  const MangaDetailLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PlaceholderWidget(
                      width: size.width / 2,
                      height: 24,
                      borderRadius: kRadius1,
                    ),
                    const SizedBox(height: 12),
                    PlaceholderWidget(
                      width: size.width / 3,
                      height: 24,
                      borderRadius: kRadius1,
                    ),
                  ],
                ),
                const Spacer(),
                PlaceholderWidget(
                  width: 50,
                  height: 24,
                  borderRadius: kRadius1,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
            child: Row(
              children: [
                PlaceholderWidget(
                  width: size.width / 5,
                  height: 14,
                  borderRadius: kRadius1,
                ),
                const Spacer(),
                PlaceholderWidget(
                  width: size.width / 5,
                  height: 14,
                  borderRadius: kRadius1,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5,
                (i) {
                  return Padding(
                    padding: EdgeInsets.only(left: i == 0 ? 16 : 0, right: 16, top: 16),
                    child: PlaceholderWidget(
                      width: 100,
                      height: 22,
                      borderRadius: kRadius1,
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: PlaceholderWidget(
              width: size.width,
              height: 14,
              borderRadius: kRadius1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: PlaceholderWidget(
              width: size.width,
              height: 14,
              borderRadius: kRadius1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: PlaceholderWidget(
              width: size.width,
              height: 14,
              borderRadius: kRadius1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: PlaceholderWidget(
              width: size.width,
              height: 14,
              borderRadius: kRadius1,
            ),
          ),
        ],
      ),
    );
  }
}
