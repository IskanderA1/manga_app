import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:manga_app/domain/entitys/manga/page_model.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';

part 'manga_page_state.dart';

class MangaPageCubit extends Cubit<MangaPageState> {
  final int chapterId;
  final MangaRepository repository;

  MangaPageCubit(
    this.chapterId,
    this.repository,
  ) : super(const MangaPageState(pages: []));

  List<PageModel> pages = [];

  void loadPages() async {
    emit(MangaPageState(pages: pages, isLoading: true));
    final response = await repository.getPagesByChapters(chapterId);
    if (response.hasData) {
      pages = response.data!;
      emit(MangaPageState(pages: List.of(pages)));
    } else {
      emit(MangaPageState(pages: pages, error: response.error));
    }
  }
}
