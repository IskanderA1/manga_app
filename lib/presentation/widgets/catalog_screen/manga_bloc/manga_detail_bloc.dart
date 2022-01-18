import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:manga_app/domain/entitys/manga/manga_detail_model.dart';
import 'package:manga_app/domain/repositories/manga_repository.dart';

part 'manga_detail_event.dart';

part 'manga_detail_state.dart';

/// Блок для работы с экраном детализации манги
class MangaDetailBloc extends Bloc<MangaDetailEvent, MangaDetailState> {
  final MangaRepository repository;
  final String titleName;

  MangaDetailBloc(this.titleName, this.repository)
      : super(const MangaDetailState()) {
    on<LoadMangaDetailEvent>(_loadMangaDetailEvent);
  }

  MangaDetailModel? manga;

  void _loadMangaDetailEvent(
    LoadMangaDetailEvent event,
    Emitter<MangaDetailState> emit,
  ) async {
    emit(MangaDetailState(manga: manga, isLoading: true));

    final response = await repository.getMangaDetail(titleName);
    if (response.hasData) {
      manga = response.data;
      emit(MangaDetailState(manga: response.data));
    } else {
      emit(MangaDetailState(manga: manga, error: response.error));
    }
  }
}
