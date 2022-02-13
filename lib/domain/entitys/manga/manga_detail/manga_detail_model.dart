import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:manga_app/domain/entitys/catalog/filter_model.dart';
import 'package:manga_app/domain/entitys/manga/branch/branch_model.dart';
import 'package:manga_app/domain/entitys/manga/img/img_model.dart';
import 'package:manga_app/domain/entitys/manga/manga_chapter/manga_chapter_model.dart';
import 'package:manga_app/domain/entitys/manga/publisher/publisher_model.dart';

part 'manga_detail_model.freezed.dart';

part 'manga_detail_model.g.dart';

/// Модель детализированной манги
@freezed
class MangaDetailModel with _$MangaDetailModel {
  @HiveType(typeId: 5, adapterName: 'MangaDetailModelAdapter')
  const factory MangaDetailModel({
    @HiveField(0) @JsonKey(name: 'id', defaultValue: -1) required int id,
    @HiveField(1) @JsonKey(name: 'img') required ImgModel img,
    @HiveField(2) @JsonKey(name: 'en_name', defaultValue: '') required String enName,
    @HiveField(3) @JsonKey(name: 'rus_name', defaultValue: '') required String rusName,
    @HiveField(4) @JsonKey(name: 'another_name', defaultValue: '') required String anotherName,
    @HiveField(5) @JsonKey(name: 'dir', defaultValue: '') required String dir,
    @HiveField(6) @JsonKey(name: 'description', defaultValue: '') required String description,
    @HiveField(7) @JsonKey(name: 'issue_year') required int? issueYear,
    @HiveField(8) @JsonKey(name: 'avg_rating', defaultValue: '') required String avgRating,
    @HiveField(9) @JsonKey(name: 'admin_rating', defaultValue: '') required String adminRating,
    @HiveField(10) @JsonKey(name: 'count_rating') required int? countRating,
    @HiveField(11) @JsonKey(name: 'age_limit') required int? ageLimit,
    @HiveField(12) @JsonKey(name: 'status') required FilterModel? status,
    @HiveField(13) @JsonKey(name: 'count_bookmarks') required int? countBookmarks,
    @HiveField(14) @JsonKey(name: 'total_votes') required int? totalVotes,
    @HiveField(15) @JsonKey(name: 'total_views') required int? totalViews,
    @HiveField(16) @JsonKey(name: 'type') required FilterModel? type,
    @HiveField(17) @JsonKey(name: 'genres', defaultValue: []) required List<FilterModel> genres,
    @HiveField(18)
    @JsonKey(name: 'categories', defaultValue: [])
        required List<FilterModel> categories,
    @HiveField(19)
    @JsonKey(name: 'publishers', defaultValue: [])
        required List<PublisherModel> publishers,
    @HiveField(20) @JsonKey(name: 'branches', defaultValue: []) required List<BranchModel> branches,
    @HiveField(21) @JsonKey(name: 'count_chapters') required int? countChapters,
    @HiveField(22) @JsonKey(name: 'first_chapter') required MangaChapterModel? firstChapter,
  }) = _MangaDetailModel;

  factory MangaDetailModel.fromJson(Map<String, dynamic> json) => _$MangaDetailModelFromJson(json);
//   final clearDesc = clearHtmlTag(json['description'] ?? '');
//   return MangaDetailModel(
//     id: json['id'] ?? 0,
//     img: json['img']['high'] ?? '',
//     enName: json['en_name'] ?? '',
//     rusName: json['rus_name'] ?? '',
//     anotherName: json['another_name'] ?? '',
//     dir: json['dir'] ?? '',
//     description: clearDesc,
//     issueYear: json['issue_year'],
//     avgRating: json['avg_rating'] ?? '',
//     adminRating: json['admin_rating'] ?? '',
//     countRating: json['count_rating'],
//     ageLimit: json['age_limit'],
//     status: FilterModel.tryFromJson('status', json['status']),
//     countBookmarks: json['count_bookmarks'],
//     totalVotes: json['total_votes'],
//     totalViews: json['total_views'],
//     type: FilterModel.tryFromJson('type', json['type']),
//     genres: FilterModel.fromJsonList('genres', json['genres']),
//     categories: FilterModel.fromJsonList('categories', json['categories']),
//     publishers: json['publishers'] != null
//         ? List<PublisherModel>.of(
//       (json['publishers'] as List)
//           .map((e) => PublisherModel.fromJson(e)),
//     )
//         : [],
//     branches: json['branches'] != null
//         ? List<BranchModel>.of(
//       (json['branches'] as List).map((e) => BranchModel.fromJson(e)),
//     )
//         : [],
//     countChapters: json['count_chapters'],
//     firstChapter: json['first_chapter'] != null
//         ? MangaChapterModel.fromJson(json['first_chapter'])
//         : null,
//   );
// }

// final int id;
// final String img;
// final String enName;
// final String rusName;
// final String anotherName;
// final String dir;
// final String description;
// final int? issueYear;
// final String avgRating;
// final String adminRating;
// final int? countRating;
// final int? ageLimit;
// final FilterModel? status;
// final int? countBookmarks;
// final int? totalVotes;
// final int? totalViews;
// final FilterModel? type;
// final List<FilterModel> genres;
// final List<FilterModel> categories;
// final List<PublisherModel> publishers;
// final List<BranchModel> branches;
// final int? countChapters;
// final MangaChapterModel? firstChapter;
//
// Map<String, dynamic> toJson() {
//   final map = <String, dynamic>{};
//   map['id'] = id;
//   map['img']['high'] = img;
//   map['en_name'] = enName;
//   map['rus_name'] = rusName;
//   map['another_name'] = anotherName;
//   map['dir'] = dir;
//   map['description'] = description;
//   map['issue_year'] = issueYear;
//   map['avg_rating'] = avgRating;
//   map['admin_rating'] = adminRating;
//   map['count_rating'] = countRating;
//   map['age_limit'] = ageLimit;
//   map['status'] = status?.toJson();
//   map['count_bookmarks'] = countBookmarks;
//   map['total_votes'] = totalVotes;
//   map['total_views'] = totalViews;
//   map['type'] = type?.toJson();
//   map['genres'] = genres.map((v) => v.toJson()).toList();
//   map['categories'] = categories.map((v) => v.toJson()).toList();
//   map['publishers'] = publishers.map((v) => v.toJson()).toList();
//   map['branches'] = branches.map((v) => v.toJson()).toList();
//   map['count_chapters'] = countChapters;
//   map['first_chapter'] = firstChapter?.toJson();
//   return map;
// }

}

Map<String, dynamic> imgToJson(String img) {
  final map = <String, dynamic>{};
  map['img']['high'] = img;
  return map;
}

String imgFromJson(dynamic img) => img?['high'] ?? '';
