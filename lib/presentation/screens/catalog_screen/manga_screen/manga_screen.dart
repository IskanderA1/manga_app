import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/data/core/locator_service.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';
import 'package:manga_app/presentation/screens/catalog_screen/manga_reader_screen/manga_chapters_screen.dart';
import 'package:manga_app/presentation/screens/navigator/navigator.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/manga_bloc/manga_detail_bloc.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/ui/manga_screen/label_widget.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/ui/manga_screen/manga_detail_app_bar_widget.dart';
import 'package:manga_app/presentation/widgets/general/mr_button_widget.dart';
import 'package:routemaster/routemaster.dart';

/// Экран детализации манги
class MangaDetailScreen extends StatefulWidget {
  final String titleName;

  const MangaDetailScreen({Key? key, required this.titleName})
      : super(key: key);

  @override
  _MangaDetailScreenState createState() => _MangaDetailScreenState();
}

class _MangaDetailScreenState extends State<MangaDetailScreen> {
  late final MangaDetailBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = locator.get<MangaDetailBloc>(
      param1: widget.titleName,
    );
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<MangaDetailBloc, MangaDetailState>(
      bloc: bloc,
      builder: (context, state) {
        final manga = state.manga;
        return Stack(
          children: [
            Scaffold(
              backgroundColor: kDarkBackgroundColor,
              body: CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                    delegate: MangaDetailAppBarWidget(
                      manga?.img != null
                          ? MangaRepository.mainUrl + manga!.img
                          : null,
                      size.height / 1.5,
                    ),
                    pinned: true,
                  ),
                  if (manga != null)
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width / 1.5,
                                  child: Text(
                                    manga.rusName,
                                    style: kHeader1TextStyle,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  manga.avgRating.toString(),
                                  style: kHeader1TextStyle,
                                ),
                                const SizedBox(width: 4),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Icon(
                                    Icons.star,
                                    color: kStarColor,
                                    size: 32,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                            child: Row(
                              children: [
                                Text(
                                  'Глав: ${manga.countChapters}',
                                  style: kSubHeaderTextStyle,
                                ),
                                const Spacer(),
                                Text(
                                  'Статус: ${manga.status!.name}',
                                  style: kSubHeaderTextStyle,
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                    manga.genres.length,
                                    (i) {
                                      return LabelWidget(
                                        margin: EdgeInsets.only(
                                          left: i == 0 ? 16 : 0,
                                          right: 16,
                                          top: 8,
                                        ),
                                        title: manga.genres[i].name,
                                      );
                                    },
                                  ) +
                                  List.generate(
                                    manga.categories.length,
                                    (i) {
                                      return LabelWidget(
                                        margin: EdgeInsets.only(
                                          left: i == 0 ? 16 : 0,
                                          right: 16,
                                          top: 8,
                                        ),
                                        title: manga.categories[i].name,
                                      );
                                    },
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                            child: Text(
                              '\t\t${manga.description}',
                              style: kTextFieldStyle,
                            ),
                          ),
                          if (((manga.branches.isNotEmpty &&
                                  manga.firstChapter != null ||
                              manga.countChapters != 0)))
                            const SizedBox(height: 80),
                        ],
                      ),
                    )
                ],
              ),
            ),
            if (manga != null &&
                manga.branches.isNotEmpty &&
                (manga.firstChapter != null || manga.countChapters != 0))
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 7),
                    child: Container(
                      height: 70,
                      padding: const EdgeInsets.only(bottom: 16, top: 10),
                      color: kDarkBackgroundColor.withOpacity(.5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (manga.countChapters != 0)
                            MRButtonWidget(
                              onPressed: () async {
                                final result =
                                    await Navigator.of(context, rootNavigator: true)
                                        .push(
                                  MaterialPageRoute(
                                    builder: (context) => MangaChaptersScreen(
                                      branchId: manga.branches.first.id,
                                      name: manga.rusName,
                                    ),
                                  ),
                                );
                                if (result is int) {
                                  Routemaster.of(context).push(
                                    '$kMangaReadRoute?'
                                    'chapter_id=$result&'
                                    'branch_id=${manga.branches.first.id}',
                                  );
                                }
                              },
                              child: Row(
                                children: const [
                                  Text(
                                    'Главы',
                                    style: kSmallButtonTextStyle,
                                  ),
                                  SizedBox(width: 6),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3),
                                    child: Icon(
                                      Icons.format_list_bulleted,
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (manga.firstChapter != null &&
                              manga.branches.isNotEmpty)
                            MRButtonWidget(
                              onPressed: () {
                                Routemaster.of(context).push(
                                  '$kMangaReadRoute?'
                                  'chapter_id=${manga.firstChapter!.id}&'
                                  'branch_id=${manga.branches.first.id}',
                                );
                              },
                              child: Row(
                                children: const [
                                  Text(
                                    'Читать',
                                    style: kSmallButtonTextStyle,
                                  ),
                                  SizedBox(width: 6),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3),
                                    child: Icon(
                                      FontAwesome.book,
                                      size: 23,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
          ],
        );
      },
    );
  }
}
