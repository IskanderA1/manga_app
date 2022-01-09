import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:manga_app/domain/entitys/manga/manga_chapter_model.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';

part 'manga_reader_event.dart';

part 'manga_reader_state.dart';

/// Блок чтения манги
class MangaReaderBloc extends Bloc<MangaReaderEvent, MangaReaderState> {
  final int branchId;
  final MangaRepository repository;
  late final List<MangaChapterBaseModel> chapters;

  MangaReaderBloc(
    this.repository,
    this.branchId,
    List<MangaChapterModel>? chapters,
  ) : super(
          MangaReaderState(chapters: chapters ?? []),
        ) {
    this.chapters = chapters ?? [];
    on<InitMangaReaderEvent>(_initInitMangaReaderEvent);
    on<LoadPagesMangaReaderEvent>(_loadPagesMangaReaderEvent);
  }

  void _initInitMangaReaderEvent(
    InitMangaReaderEvent event,
    Emitter<MangaReaderState> emit,
  ) async {
    if (event.chapterId != null) {
      add(LoadPagesMangaReaderEvent(event.chapterId!));
    }
    if (chapters.whereType<MangaChapterModel>().isEmpty) {
      final response = await repository.getChaptersByManga(branchId);
      if (response.hasData) {
        chapters = response.data!
            .where((e) => e.isPaid == null || e.isPaid != null && !e.isPaid!)
            .toList();
        emit(MangaReaderState(chapters: chapters));
      } else {
        emit(MangaReaderState(chapters: chapters, error: response.error));
      }
    }
  }

  void _loadPagesMangaReaderEvent(
    LoadPagesMangaReaderEvent event,
    Emitter<MangaReaderState> emit,
  ) async {
    final element = chapters.firstWhere((e) => e.id == event.chapterId);
    var index = chapters.indexOf(element);
    if (index != -1) {
      chapters.add(MangaChapterBaseModel(event.chapterId, []));
      index = chapters.length - 1;
    }
    chapters.removeAt(index);
    chapters.insert(index, element.copyWith(isLoading: true));
    emit(MangaReaderState(chapters: chapters));
    final response = await repository.getPagesByChapters(event.chapterId);
    if (response.hasData) {
      chapters.removeAt(index);
      chapters.insert(
        index,
        element.copyWith(isLoading: false, pages: response.data!),
      );
      emit(MangaReaderState(chapters: chapters));
    } else {
      chapters.removeAt(index);
      chapters.insert(index, element.copyWith(isLoading: false));
      emit(MangaReaderState(chapters: chapters, error: response.error));
    }
  }
}
