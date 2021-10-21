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
  /// Метод получения типа жанра
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
