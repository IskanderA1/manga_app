import 'package:equatable/equatable.dart';

/// Типы жанров
enum FilterType {
  genres,
  categories,
  types,
  status,
  ageLimit,
}

extension FilterTypeExtension on FilterType {
  /// Метод получения значения типа
  String get value {
    switch (this) {
      case FilterType.genres:
        return 'genres';
      case FilterType.categories:
        return 'categories';
      case FilterType.types:
        return 'types';
      case FilterType.status:
        return 'status';
      case FilterType.ageLimit:
        return 'age_limit';
    }
  }
  /// Метод получения имени типа
  String get name {
    switch (this) {
      case FilterType.genres:
        return 'Жанры';
      case FilterType.categories:
        return 'Категории';
      case FilterType.types:
        return 'Типы';
      case FilterType.status:
        return 'Статус';
      case FilterType.ageLimit:
        return 'Возрастной лимит';
    }
  }
}

/// модель фильтра манги
class FilterModel extends Equatable {
  final FilterType type;
  final int filterId;
  final String name;

  const FilterModel(this.type, this.filterId, this.name);

  factory FilterModel.fromJson(FilterType type, dynamic json) {
    return FilterModel(type, json['id'], json['name']);
  }

  @override
  List<Object?> get props => [type, filterId, name];
}
