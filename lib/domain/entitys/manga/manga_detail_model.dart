import 'package:equatable/equatable.dart';
import 'package:manga_app/const/util.dart';
import 'package:manga_app/domain/entitys/catalog/filter_model.dart';
import 'package:manga_app/domain/entitys/manga/branch_model.dart';
import 'package:manga_app/domain/entitys/manga/publisher_model.dart';

import 'manga_chapter_model.dart';

/// Модель детализированной манги
class MangaDetailModel extends Equatable {
  const MangaDetailModel({
    required this.id,
    required this.img,
    required this.enName,
    required this.rusName,
    required this.anotherName,
    required this.dir,
    required this.description,
    required this.issueYear,
    required this.avgRating,
    required this.adminRating,
    required this.countRating,
    required this.ageLimit,
    required this.status,
    required this.countBookmarks,
    required this.totalVotes,
    required this.totalViews,
    required this.type,
    required this.genres,
    required this.categories,
    required this.publishers,
    required this.branches,
    required this.countChapters,
    required this.firstChapter,
  });

  factory MangaDetailModel.fromJson(dynamic json) {
    final clearDesc = clearHtmlTag(json['description'] ?? '');
    return MangaDetailModel(
      id: json['id'] ?? 0,
      img: json['img']['high'] ?? '',
      enName: json['en_name'] ?? '',
      rusName: json['rus_name'] ?? '',
      anotherName: json['another_name'] ?? '',
      dir: json['dir'] ?? '',
      description: clearDesc,
      issueYear: json['issue_year'],
      avgRating: json['avg_rating'] ?? '',
      adminRating: json['admin_rating'] ?? '',
      countRating: json['count_rating'],
      ageLimit: json['age_limit'],
      status: FilterModel.tryFromJson('status', json['status']),
      countBookmarks: json['count_bookmarks'],
      totalVotes: json['total_votes'],
      totalViews: json['total_views'],
      type: FilterModel.tryFromJson('type', json['type']),
      genres: FilterModel.fromJsonList('genres', json['genres']),
      categories: FilterModel.fromJsonList('categories', json['categories']),
      publishers: json['publishers'] != null
          ? List<PublisherModel>.of(
              (json['publishers'] as List)
                  .map((e) => PublisherModel.fromJson(e)),
            )
          : [],
      branches: json['branches'] != null
          ? List<BranchModel>.of(
              (json['branches'] as List).map((e) => BranchModel.fromJson(e)),
            )
          : [],
      countChapters: json['count_chapters'],
      firstChapter: json['first_chapter'] != null
          ? MangaChapterModel.fromJson(json['first_chapter'])
          : null,
    );
  }

  final int id;
  final String img;
  final String enName;
  final String rusName;
  final String anotherName;
  final String dir;
  final String description;
  final int? issueYear;
  final String avgRating;
  final String adminRating;
  final int? countRating;
  final int? ageLimit;
  final FilterModel? status;
  final int? countBookmarks;
  final int? totalVotes;
  final int? totalViews;
  final FilterModel? type;
  final List<FilterModel> genres;
  final List<FilterModel> categories;
  final List<PublisherModel> publishers;
  final List<BranchModel> branches;
  final int? countChapters;
  final MangaChapterModel? firstChapter;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['img']['high'] = img;
    map['en_name'] = enName;
    map['rus_name'] = rusName;
    map['another_name'] = anotherName;
    map['dir'] = dir;
    map['description'] = description;
    map['issue_year'] = issueYear;
    map['avg_rating'] = avgRating;
    map['admin_rating'] = adminRating;
    map['count_rating'] = countRating;
    map['age_limit'] = ageLimit;
    map['status'] = status?.toJson();
    map['count_bookmarks'] = countBookmarks;
    map['total_votes'] = totalVotes;
    map['total_views'] = totalViews;
    map['type'] = type?.toJson();
    map['genres'] = genres.map((v) => v.toJson()).toList();
    map['categories'] = categories.map((v) => v.toJson()).toList();
    map['publishers'] = publishers.map((v) => v.toJson()).toList();
    map['branches'] = branches.map((v) => v.toJson()).toList();
    map['count_chapters'] = countChapters;
    map['first_chapter'] = firstChapter?.toJson();
    return map;
  }

  @override
  List<Object?> get props => [
        id,
        img,
        enName,
        rusName,
        anotherName,
        dir,
        description,
        issueYear,
        avgRating,
        adminRating,
        countRating,
        ageLimit,
        status,
        countBookmarks,
        totalVotes,
        totalViews,
        type,
        genres,
        categories,
        publishers,
        branches,
        countChapters,
        firstChapter,
      ];
}
