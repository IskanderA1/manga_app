part of 'manga_reader_bloc.dart';

abstract class MangaReaderEvent extends Equatable {
  const MangaReaderEvent();
}

/// Ивент инициализации блока чтения манги
class InitMangaReaderEvent extends MangaReaderEvent {
  final int branchId;
  final int? chapterId;
  final List<MangaChapterModel>? chapters;

  const InitMangaReaderEvent(this.branchId, [this.chapterId, this.chapters]);

  @override
  List<Object?> get props => [branchId, chapterId, chapters];
}


/// Ивент загрузки страниц конкретной главы манги
class LoadPagesMangaReaderEvent extends MangaReaderEvent {
  final int chapterId;

  const LoadPagesMangaReaderEvent(this.chapterId);

  @override
  List<Object?> get props => [chapterId];
}
