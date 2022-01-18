part of 'manga_chapter_cubit.dart';

class MangaChapterState extends Equatable {
  final List<MangaChapterModel> chapters;
  final bool isLoading;
  final String? error;

  const MangaChapterState({
    required this.chapters,
    this.isLoading = false,
    this.error,
  });

  int getIndexById(int chapterId) {
    final result = chapters.indexWhere((e) => e.index == chapterId);
    return result != -1 ? result : 0;
  }

  @override
  List<Object?> get props => [chapters, isLoading, error];
}
