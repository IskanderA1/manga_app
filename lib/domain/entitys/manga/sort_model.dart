import 'package:equatable/equatable.dart';

/// Типы сортировки
enum SortType {
  rating,
  id,
  random,
  chapters,
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

  @override
  List<Object?> get props => [sortType, ascending];
}
