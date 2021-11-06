import 'package:equatable/equatable.dart';

/// Типы сортировки
enum SortType {
  rating,
  id,
  random,
  chapters,
  chapterDate,
  votes,
  views,
}

extension SortTypeExtension on SortType {
  /// Метод получения типа жанра
  String get value {
    switch (this) {
      case SortType.rating:
        return 'rating';
      case SortType.id:
        return 'id';
      case SortType.random:
        return 'random';
      case SortType.chapters:
        return 'count_chapters';
      case SortType.chapterDate:
        return 'chapter_date';
      case SortType.votes:
        return 'votes';
      case SortType.views:
        return 'views';
    }
  }

  String get name {
    switch (this) {
      case SortType.rating:
        return 'По популярности';
      case SortType.id:
        return 'По новизне';
      case SortType.random:
        return 'Случайно';
      case SortType.chapters:
        return 'По количеству глав';
      case SortType.chapterDate:
        return 'По дате обновления';
      case SortType.votes:
        return 'По лайкам';
      case SortType.views:
        return 'По просмотрам';
    }
  }
}

/// Модель сортировки
/// [ascending] - сортировка по возрастанию если true, по убыванию если false
/// [sortType] - тип сортировки
class SortModel extends Equatable {
  final SortType sortType;
  final bool ascending;

  const SortModel(this.sortType, this.ascending);

  static const SortModel defaultSort = SortModel(SortType.rating, false);

  SortModel copyWith({
    SortType? sortType,
    bool? ascending,
  }) {
    return SortModel(
      sortType ?? this.sortType,
      ascending ?? this.ascending,
    );
  }

  @override
  List<Object?> get props => [sortType, ascending];
}
