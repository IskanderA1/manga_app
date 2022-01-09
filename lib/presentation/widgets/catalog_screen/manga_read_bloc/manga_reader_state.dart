part of 'manga_reader_bloc.dart';

class MangaReaderState extends Equatable {
  final List<MangaChapterBaseModel> chapters;
  final bool isLoading;
  final String? error;

  const MangaReaderState({
    required this.chapters,
    this.isLoading = false,
    this.error,
  });

  @override
  List<Object?> get props => [
        chapters,
        isLoading,
        error,
      ];
}
