import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:manga_app/domain/entitys/manga/manga_chapter_model.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';

part 'manga_chapter_state.dart';

class MangaChapterCubit extends Cubit<MangaChapterState> {
  final int branchId;
  final MangaRepository repository;

  MangaChapterCubit(
    this.branchId,
    this.repository,
  ) : super(const MangaChapterState(chapters: []));
  List<MangaChapterModel> chapters = [];

  void loadChapters() async {
    emit(MangaChapterState(chapters: chapters, isLoading: true));
    final response = await repository.getChaptersByManga(branchId);
    if (response.hasData) {
      chapters = response.data!.reversed
          .where(
            (e) => e.isPaid == null || e.isPaid != null && !e.isPaid!,
          )
          .toList();
      emit(MangaChapterState(chapters: List.of(chapters)));
    } else {
      emit(MangaChapterState(chapters: chapters, error: response.error));
    }
  }
}
