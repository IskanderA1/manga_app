import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/data/core/locator_service.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/manga_page_cubit/manga_page_cubit.dart';
import 'package:manga_app/presentation/widgets/general/image_widget.dart';
import 'package:manga_app/presentation/widgets/general/loader_widget.dart';

class MangaChapterScreen extends StatefulWidget {
  final int chapterId;

  const MangaChapterScreen({
    Key? key,
    required this.chapterId,
  }) : super(key: key);

  @override
  State<MangaChapterScreen> createState() => _MangaChapterScreenState();
}

class _MangaChapterScreenState extends State<MangaChapterScreen> {
  late final MangaPageCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = locator.get<MangaPageCubit>(param1: widget.chapterId);
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: BlocConsumer<MangaPageCubit, MangaPageState>(
        bloc: cubit,
        listener: (context, state) {},
        builder: (context, state) {
          if (state.isLoading) {
            return const LoadingWidget();
          }
          return InteractiveViewer(
            maxScale: 2,
            minScale: 1,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  state.pages.isNotEmpty ? state.pages.length : 5,
                  (index) {
                    return ImageWidget(
                      state.pages[index].link,
                      width: size.width,
                      height: null,
                      useCash: false,
                      fit: BoxFit.fitWidth,
                      borderRadius: kZeroRadius,
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
