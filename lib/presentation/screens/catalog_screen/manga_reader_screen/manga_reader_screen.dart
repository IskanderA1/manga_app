import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manga_app/data/core/locator_service.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/manga_chapter_cubit/manga_chapter_cubit.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/ui/manga_reader_screen/manga_chapter_tabs.dart';
import 'package:manga_app/presentation/widgets/general/loader_widget.dart';
import 'package:manga_app/presentation/widgets/general/mr_back_button_widget.dart';

class MangaReaderScreen extends StatefulWidget {
  final int branchId;
  final int chapterId;

  const MangaReaderScreen({
    Key? key,
    required this.branchId,
    required this.chapterId,
  }) : super(key: key);

  @override
  _MangaReaderScreenState createState() => _MangaReaderScreenState();
}

class _MangaReaderScreenState extends State<MangaReaderScreen> {
  late final MangaChapterCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = locator.get<MangaChapterCubit>(param1: widget.branchId);
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: BlocConsumer<MangaChapterCubit, MangaChapterState>(
                bloc: cubit,
                listener: (context, state) {},
                builder: (context, state) {
                  return Stack(
                    children: [
                      if (state.isLoading)
                        const Center(child: LoadingWidget())
                      else if (state.chapters.isNotEmpty)
                        Positioned.fill(
                          child: MangaChapterTabsScreen(
                            chapters: state.chapters,
                            initialIndex: state.getIndexById(widget.chapterId),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
            const Positioned(
              top: 32,
              left: -8,
              child: BackButtonWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
