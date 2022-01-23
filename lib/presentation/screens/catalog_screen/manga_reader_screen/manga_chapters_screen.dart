import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/data/core/locator_service.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/manga_chapter_cubit/manga_chapter_cubit.dart';
import 'package:manga_app/presentation/widgets/general/mr_header_widget.dart';
import 'package:manga_app/presentation/widgets/general/placeholder_widget.dart';

/// Экран списка глав манги. Отображает все досутупные для
/// чтения главы
class MangaChaptersScreen extends StatefulWidget {
  final int branchId;
  final String name;

  const MangaChaptersScreen({
    Key? key,
    required this.name,
    required this.branchId,
  }) : super(key: key);

  @override
  _MangaChaptersScreenState createState() => _MangaChaptersScreenState();
}

class _MangaChaptersScreenState extends State<MangaChaptersScreen> {
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
    return BlocBuilder<MangaChapterCubit, MangaChapterState>(
      bloc: cubit,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kDarkBackgroundColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                MRHeaderWidget(
                  title: widget.name,
                  centerTitle: true,
                  hasBackButton: true,
                ),
                ...List.generate(
                  state.isLoading ? 16 : state.chapters.length,
                  (index) {
                    if (state.chapters.isEmpty && !state.isLoading) {
                      return const Center(
                        child: Text(
                          'Не удалось загрузить главы',
                          style: kSubHeaderTextStyle,
                        ),
                      );
                    }
                    return InkWell(
                      onTap: state.isLoading
                          ? null
                          : () => Navigator.pop(
                                context,
                                state.chapters[index].id,
                              ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: state.isLoading
                                ? PlaceholderWidget(
                                    height: 24,
                                    borderRadius: BorderRadius.circular(24),
                                  )
                                : Text(
                                    'Глава ${state.chapters[index].chapter}',
                                    style: kTextFieldStyle,
                                  ),
                            trailing: state.isLoading
                                ? null
                                : const Icon(Icons.chevron_right),
                          ),
                          const Divider(
                            height: 1,
                            color: kWhiteColor,
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
