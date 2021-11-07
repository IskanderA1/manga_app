part of 'manga_detail_bloc.dart';

abstract class MangaDetailEvent extends Equatable {
  const MangaDetailEvent();
}

/// Ивент загрузки детализации манги
class LoadMangaDetailEvent extends MangaDetailEvent {
  const LoadMangaDetailEvent();
  @override
  List<Object?> get props => [];
}