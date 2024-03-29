import 'package:flutter/material.dart';
import 'package:manga_app/domain/entitys/catalog/manga_model.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/ui/manga_item_placeholder_widget.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/ui/manga_item_widget.dart';

/// Виджет списка манги
class MangaListWidget extends StatelessWidget {
  final bool isLoading;
  final List<MangaModel> manga;

  const MangaListWidget({
    Key? key,
    this.isLoading = false,
    required this.manga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 3;
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          (manga.length / 2).ceil() + (isLoading ? 5 : 0),
          (index) {
            if (index < (manga.length / 2).ceil()) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MangaItemWidget(
                      width: width,
                      manga: manga[index * 2],
                    ),
                    if (index * 2 + 1 < manga.length)
                      MangaItemWidget(
                        manga: manga[index * 2 + 1],
                        width: width,
                      )
                    else if (isLoading)
                      MangaItemPlaceholderWidget(
                        width: width,
                      )
                    else
                      SizedBox(width: width)
                  ],
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MangaItemPlaceholderWidget(
                    width: width,
                  ),
                  MangaItemPlaceholderWidget(
                    width: width,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
