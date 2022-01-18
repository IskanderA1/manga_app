import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';

class MangaChapterInfoWidget extends StatefulWidget {
  final TabController tabController;

  const MangaChapterInfoWidget({
    Key? key,
    required this.tabController,
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
    return Container(
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
    );
  }
}
