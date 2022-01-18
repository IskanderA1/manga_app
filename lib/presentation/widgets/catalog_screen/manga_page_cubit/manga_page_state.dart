part of 'manga_page_cubit.dart';

class MangaPageState extends Equatable {
  final List<PageModel> pages;
  final bool isLoading;
  final String? error;

  const MangaPageState({
    required this.pages,
    this.isLoading = false,
    this.error,
  });

  @override
  List<Object?> get props => [pages, isLoading, error];
}
