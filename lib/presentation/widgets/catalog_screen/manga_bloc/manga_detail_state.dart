part of 'manga_detail_bloc.dart';

class MangaDetailState extends Equatable {
  final MangaDetailModel? manga;
  final bool isLoading;
  final String? error;

  const MangaDetailState({
    this.manga,
    this.isLoading = false,
    this.error,
  });

  @override
  List<Object?> get props => [
        manga,
        isLoading,
        error,
      ];
}
