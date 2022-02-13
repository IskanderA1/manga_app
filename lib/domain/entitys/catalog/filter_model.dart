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
  final FilterType? type;
  final int filterId;
  final String name;

  const FilterModel(this.filterId, this.name, [this.type]);

  factory FilterModel.fromJson(dynamic json) {
    return FilterModel(json['id'], json['name']);
  }

  factory FilterModel.fromJsonWithType(FilterType type, dynamic json) {
    return FilterModel(json['id'], json['name'], type);
  }

  // static FilterModel tryFromJson(String type, dynamic json) {
  //   final filterType = FilterType.values.where((e) => e.value == type);
  //   return FilterModel(json['id'], json['name'],filterType.first);
  // }

  // static List<FilterModel> fromJsonList(String type, dynamic json) {
  //   final filterType = FilterType.values.where((e) => e.value == type);
  //   final result = <FilterModel>[];
  //   if (filterType.isNotEmpty) {
  //     for (var element in List.of(json)) {
  //       result.add(FilterModel.fromJson(filterType.first, element));
  //     }
  //   }
  //   return result;
  // }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = filterId;
    map['name'] = name;
    return map;
  }

  @override
  List<Object?> get props => [type, filterId, name];
}
