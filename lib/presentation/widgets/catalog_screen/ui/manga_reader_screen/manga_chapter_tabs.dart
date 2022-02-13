import 'package:flutter/material.dart';
import 'package:manga_app/domain/entitys/manga/manga_chapter/manga_chapter_model.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/ui/manga_reader_screen/manga_chapter_info_widget.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/ui/manga_reader_screen/manga_pages_list.dart';

class MangaChapterTabsScreen extends StatefulWidget {
  final List<MangaChapterModel> chapters;
  final int initialIndex;
  final int branchId;

  const MangaChapterTabsScreen({
    Key? key,
    required this.chapters,
    required this.initialIndex,
    required this.branchId,
  }) : super(key: key);

  @override
  _MangaChapterTabsScreenState createState() => _MangaChapterTabsScreenState();
}

class _MangaChapterTabsScreenState extends State<MangaChapterTabsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: widget.initialIndex,
      length: widget.chapters.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: TabBarView(
            controller: _tabController,
            children: List.generate(
              widget.chapters.length,
              (index) {
                return MangaChapterScreen(
                  chapterId: widget.chapters[index].id,
                );
              },
            ),
          ),
        ),
        Positioned(
          top: 36,
          right: 18,
          child: MangaChapterInfoWidget(
            tabController: _tabController,
            getIndex: (int chapterId) {
              final result = widget.chapters.indexWhere(
                (e) => e.id == chapterId,
              );
              return result != -1 ? result : 0;
            },
            branchId: widget.branchId,
          ),
        ),
      ],
    );
  }
}
