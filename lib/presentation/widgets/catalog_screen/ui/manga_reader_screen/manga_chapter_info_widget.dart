import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/screens/catalog_screen/manga_reader_screen/manga_chapters_screen.dart';

class MangaChapterInfoWidget extends StatefulWidget {
  final TabController tabController;
  final int branchId;
  final int Function(int chapterId) getIndex;

  const MangaChapterInfoWidget({
    Key? key,
    required this.tabController,
    required this.branchId,
    required this.getIndex,
  }) : super(key: key);

  @override
  State<MangaChapterInfoWidget> createState() => _MangaChapterInfoWidgetState();
}

class _MangaChapterInfoWidgetState extends State<MangaChapterInfoWidget> {
  int index = 0;

  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(updateIndex);
    updateIndex();
  }

  @override
  void dispose() {
    widget.tabController.removeListener(updateIndex);
    super.dispose();
  }

  void updateIndex() {
    setState(() {
      index = widget.tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final result = await Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (context) => MangaChaptersScreen(
              branchId: widget.branchId,
              name: 'Текущая глава $index',
            ),
          ),
        );
        if (result is int) {
          widget.tabController.index = widget.getIndex(result);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: kPurple200Color.withOpacity(.5),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Text(
            '$index/${widget.tabController.length - 1}',
            style: kSubHeaderTextStyle,
          ),
        ),
      ),
    );
  }
}
