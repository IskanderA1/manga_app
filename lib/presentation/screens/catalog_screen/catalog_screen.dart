import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/data/core/locator_service.dart';
import 'package:manga_app/presentation/widgets/general/search_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/catalog_screen/catalog_bloc/catalog_bloc.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/background_image_widget.dart';
import 'package:manga_app/presentation/widgets/general/mr_header_widget.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/ui/manga_list_widget.dart';

/// Экран катлога манги
class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final bloc = locator<CatalogBloc>();
  final scrollController = ScrollController();
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    bloc.add(const InitMangaCatalogEvent());
    scrollController.addListener(_updateListener);
    searchController.addListener(_searchListener);
  }

  @override
  void dispose() {
    searchController.removeListener(_searchListener);
    scrollController.removeListener(_updateListener);
    scrollController.dispose();
    searchController.dispose();
    super.dispose();
  }

  void _updateListener() {
    if (scrollController.position.extentAfter < 100 && bloc.state.canUpload) {
      if (bloc.state.mangaBySearch != null) {
        bloc.add(LoadMangaCatalogBySearchEvent(query: searchController.text));
      } else {
        bloc.add(const LoadMangaCatalogEvent());
      }
    }
  }

  void _searchListener() {
    if (searchController.text.isEmpty) {
      bloc.add(const LoadMangaCatalogBySearchEvent(query: ''));
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return KeyboardDismissOnTap(
      child: BlocBuilder<CatalogBloc, CatalogState>(
        bloc: bloc,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: kDarkBackgroundColor,
            body: BackgroundImageWidget(
              child: ListView(
                controller: scrollController,
                shrinkWrap: true,
                children: [
                  const MRHeaderWidget(
                    title: 'Каталог',
                    hasFilter: true,
                    hasSort: true,
                  ),
                  SearchWidget(
                    controller: searchController,
                    onChanged: (search) {
                      if (search.length > 2) {
                        bloc.add(
                          LoadMangaCatalogBySearchEvent(query: search),
                        );
                      }
                    },
                    onDeleteTap: () {
                      bloc.add(
                        const LoadMangaCatalogBySearchEvent(query: ''),
                      );
                      searchController.clear();
                    },
                  ),
                  if (state.isLoading ||
                      state.manga != null ||
                      state.mangaBySearch != null)
                    MangaListWidget(
                      manga: state.mangaBySearch?.manga ??
                          state.manga?.manga ??
                          [],
                      isLoading: state.isLoading,
                    )
                  else
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        24,
                        size.height / 3.4,
                        24,
                        0,
                      ),
                      child: Center(child: Text(state.error ?? '')),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
