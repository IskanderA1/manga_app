// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'manga_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MangaDetailModel _$MangaDetailModelFromJson(Map<String, dynamic> json) {
  return _MangaDetailModel.fromJson(json);
}

/// @nodoc
class _$MangaDetailModelTearOff {
  const _$MangaDetailModelTearOff();

  _MangaDetailModel call(
      {@HiveField(0)
      @JsonKey(name: 'id', defaultValue: -1)
          required int id,
      @HiveField(1)
      @JsonKey(name: 'img')
          required ImgModel img,
      @HiveField(2)
      @JsonKey(name: 'en_name', defaultValue: '')
          required String enName,
      @HiveField(3)
      @JsonKey(name: 'rus_name', defaultValue: '')
          required String rusName,
      @HiveField(4)
      @JsonKey(name: 'another_name', defaultValue: '')
          required String anotherName,
      @HiveField(5)
      @JsonKey(name: 'dir', defaultValue: '')
          required String dir,
      @HiveField(6)
      @JsonKey(name: 'description', defaultValue: '')
          required String description,
      @HiveField(7)
      @JsonKey(name: 'issue_year')
          required int? issueYear,
      @HiveField(8)
      @JsonKey(name: 'avg_rating', defaultValue: '')
          required String avgRating,
      @HiveField(9)
      @JsonKey(name: 'admin_rating', defaultValue: '')
          required String adminRating,
      @HiveField(10)
      @JsonKey(name: 'count_rating')
          required int? countRating,
      @HiveField(11)
      @JsonKey(name: 'age_limit')
          required int? ageLimit,
      @HiveField(12)
      @JsonKey(name: 'status')
          required FilterModel? status,
      @HiveField(13)
      @JsonKey(name: 'count_bookmarks')
          required int? countBookmarks,
      @HiveField(14)
      @JsonKey(name: 'total_votes')
          required int? totalVotes,
      @HiveField(15)
      @JsonKey(name: 'total_views')
          required int? totalViews,
      @HiveField(16)
      @JsonKey(name: 'type')
          required FilterModel? type,
      @HiveField(17)
      @JsonKey(name: 'genres', defaultValue: [])
          required List<FilterModel> genres,
      @HiveField(18)
      @JsonKey(name: 'categories', defaultValue: [])
          required List<FilterModel> categories,
      @HiveField(19)
      @JsonKey(name: 'publishers', defaultValue: [])
          required List<PublisherModel> publishers,
      @HiveField(20)
      @JsonKey(name: 'branches', defaultValue: [])
          required List<BranchModel> branches,
      @HiveField(21)
      @JsonKey(name: 'count_chapters')
          required int? countChapters,
      @HiveField(22)
      @JsonKey(name: 'first_chapter')
          required MangaChapterModel? firstChapter}) {
    return _MangaDetailModel(
      id: id,
      img: img,
      enName: enName,
      rusName: rusName,
      anotherName: anotherName,
      dir: dir,
      description: description,
      issueYear: issueYear,
      avgRating: avgRating,
      adminRating: adminRating,
      countRating: countRating,
      ageLimit: ageLimit,
      status: status,
      countBookmarks: countBookmarks,
      totalVotes: totalVotes,
      totalViews: totalViews,
      type: type,
      genres: genres,
      categories: categories,
      publishers: publishers,
      branches: branches,
      countChapters: countChapters,
      firstChapter: firstChapter,
    );
  }

  MangaDetailModel fromJson(Map<String, Object?> json) {
    return MangaDetailModel.fromJson(json);
  }
}

/// @nodoc
const $MangaDetailModel = _$MangaDetailModelTearOff();

/// @nodoc
mixin _$MangaDetailModel {
  @HiveField(0)
  @JsonKey(name: 'id', defaultValue: -1)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'img')
  ImgModel get img => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'en_name', defaultValue: '')
  String get enName => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'rus_name', defaultValue: '')
  String get rusName => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'another_name', defaultValue: '')
  String get anotherName => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'dir', defaultValue: '')
  String get dir => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'description', defaultValue: '')
  String get description => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'issue_year')
  int? get issueYear => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'avg_rating', defaultValue: '')
  String get avgRating => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'admin_rating', defaultValue: '')
  String get adminRating => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'count_rating')
  int? get countRating => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: 'age_limit')
  int? get ageLimit => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: 'status')
  FilterModel? get status => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: 'count_bookmarks')
  int? get countBookmarks => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: 'total_votes')
  int? get totalVotes => throw _privateConstructorUsedError;
  @HiveField(15)
  @JsonKey(name: 'total_views')
  int? get totalViews => throw _privateConstructorUsedError;
  @HiveField(16)
  @JsonKey(name: 'type')
  FilterModel? get type => throw _privateConstructorUsedError;
  @HiveField(17)
  @JsonKey(name: 'genres', defaultValue: [])
  List<FilterModel> get genres => throw _privateConstructorUsedError;
  @HiveField(18)
  @JsonKey(name: 'categories', defaultValue: [])
  List<FilterModel> get categories => throw _privateConstructorUsedError;
  @HiveField(19)
  @JsonKey(name: 'publishers', defaultValue: [])
  List<PublisherModel> get publishers => throw _privateConstructorUsedError;
  @HiveField(20)
  @JsonKey(name: 'branches', defaultValue: [])
  List<BranchModel> get branches => throw _privateConstructorUsedError;
  @HiveField(21)
  @JsonKey(name: 'count_chapters')
  int? get countChapters => throw _privateConstructorUsedError;
  @HiveField(22)
  @JsonKey(name: 'first_chapter')
  MangaChapterModel? get firstChapter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaDetailModelCopyWith<MangaDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaDetailModelCopyWith<$Res> {
  factory $MangaDetailModelCopyWith(
          MangaDetailModel value, $Res Function(MangaDetailModel) then) =
      _$MangaDetailModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'id', defaultValue: -1)
          int id,
      @HiveField(1)
      @JsonKey(name: 'img')
          ImgModel img,
      @HiveField(2)
      @JsonKey(name: 'en_name', defaultValue: '')
          String enName,
      @HiveField(3)
      @JsonKey(name: 'rus_name', defaultValue: '')
          String rusName,
      @HiveField(4)
      @JsonKey(name: 'another_name', defaultValue: '')
          String anotherName,
      @HiveField(5)
      @JsonKey(name: 'dir', defaultValue: '')
          String dir,
      @HiveField(6)
      @JsonKey(name: 'description', defaultValue: '')
          String description,
      @HiveField(7)
      @JsonKey(name: 'issue_year')
          int? issueYear,
      @HiveField(8)
      @JsonKey(name: 'avg_rating', defaultValue: '')
          String avgRating,
      @HiveField(9)
      @JsonKey(name: 'admin_rating', defaultValue: '')
          String adminRating,
      @HiveField(10)
      @JsonKey(name: 'count_rating')
          int? countRating,
      @HiveField(11)
      @JsonKey(name: 'age_limit')
          int? ageLimit,
      @HiveField(12)
      @JsonKey(name: 'status')
          FilterModel? status,
      @HiveField(13)
      @JsonKey(name: 'count_bookmarks')
          int? countBookmarks,
      @HiveField(14)
      @JsonKey(name: 'total_votes')
          int? totalVotes,
      @HiveField(15)
      @JsonKey(name: 'total_views')
          int? totalViews,
      @HiveField(16)
      @JsonKey(name: 'type')
          FilterModel? type,
      @HiveField(17)
      @JsonKey(name: 'genres', defaultValue: [])
          List<FilterModel> genres,
      @HiveField(18)
      @JsonKey(name: 'categories', defaultValue: [])
          List<FilterModel> categories,
      @HiveField(19)
      @JsonKey(name: 'publishers', defaultValue: [])
          List<PublisherModel> publishers,
      @HiveField(20)
      @JsonKey(name: 'branches', defaultValue: [])
          List<BranchModel> branches,
      @HiveField(21)
      @JsonKey(name: 'count_chapters')
          int? countChapters,
      @HiveField(22)
      @JsonKey(name: 'first_chapter')
          MangaChapterModel? firstChapter});

  $ImgModelCopyWith<$Res> get img;
  $MangaChapterModelCopyWith<$Res>? get firstChapter;
}

/// @nodoc
class _$MangaDetailModelCopyWithImpl<$Res>
    implements $MangaDetailModelCopyWith<$Res> {
  _$MangaDetailModelCopyWithImpl(this._value, this._then);

  final MangaDetailModel _value;
  // ignore: unused_field
  final $Res Function(MangaDetailModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? img = freezed,
    Object? enName = freezed,
    Object? rusName = freezed,
    Object? anotherName = freezed,
    Object? dir = freezed,
    Object? description = freezed,
    Object? issueYear = freezed,
    Object? avgRating = freezed,
    Object? adminRating = freezed,
    Object? countRating = freezed,
    Object? ageLimit = freezed,
    Object? status = freezed,
    Object? countBookmarks = freezed,
    Object? totalVotes = freezed,
    Object? totalViews = freezed,
    Object? type = freezed,
    Object? genres = freezed,
    Object? categories = freezed,
    Object? publishers = freezed,
    Object? branches = freezed,
    Object? countChapters = freezed,
    Object? firstChapter = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as ImgModel,
      enName: enName == freezed
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
      rusName: rusName == freezed
          ? _value.rusName
          : rusName // ignore: cast_nullable_to_non_nullable
              as String,
      anotherName: anotherName == freezed
          ? _value.anotherName
          : anotherName // ignore: cast_nullable_to_non_nullable
              as String,
      dir: dir == freezed
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      issueYear: issueYear == freezed
          ? _value.issueYear
          : issueYear // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as String,
      adminRating: adminRating == freezed
          ? _value.adminRating
          : adminRating // ignore: cast_nullable_to_non_nullable
              as String,
      countRating: countRating == freezed
          ? _value.countRating
          : countRating // ignore: cast_nullable_to_non_nullable
              as int?,
      ageLimit: ageLimit == freezed
          ? _value.ageLimit
          : ageLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FilterModel?,
      countBookmarks: countBookmarks == freezed
          ? _value.countBookmarks
          : countBookmarks // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVotes: totalVotes == freezed
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalViews: totalViews == freezed
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FilterModel?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<FilterModel>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<FilterModel>,
      publishers: publishers == freezed
          ? _value.publishers
          : publishers // ignore: cast_nullable_to_non_nullable
              as List<PublisherModel>,
      branches: branches == freezed
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<BranchModel>,
      countChapters: countChapters == freezed
          ? _value.countChapters
          : countChapters // ignore: cast_nullable_to_non_nullable
              as int?,
      firstChapter: firstChapter == freezed
          ? _value.firstChapter
          : firstChapter // ignore: cast_nullable_to_non_nullable
              as MangaChapterModel?,
    ));
  }

  @override
  $ImgModelCopyWith<$Res> get img {
    return $ImgModelCopyWith<$Res>(_value.img, (value) {
      return _then(_value.copyWith(img: value));
    });
  }

  @override
  $MangaChapterModelCopyWith<$Res>? get firstChapter {
    if (_value.firstChapter == null) {
      return null;
    }

    return $MangaChapterModelCopyWith<$Res>(_value.firstChapter!, (value) {
      return _then(_value.copyWith(firstChapter: value));
    });
  }
}

/// @nodoc
abstract class _$MangaDetailModelCopyWith<$Res>
    implements $MangaDetailModelCopyWith<$Res> {
  factory _$MangaDetailModelCopyWith(
          _MangaDetailModel value, $Res Function(_MangaDetailModel) then) =
      __$MangaDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'id', defaultValue: -1)
          int id,
      @HiveField(1)
      @JsonKey(name: 'img')
          ImgModel img,
      @HiveField(2)
      @JsonKey(name: 'en_name', defaultValue: '')
          String enName,
      @HiveField(3)
      @JsonKey(name: 'rus_name', defaultValue: '')
          String rusName,
      @HiveField(4)
      @JsonKey(name: 'another_name', defaultValue: '')
          String anotherName,
      @HiveField(5)
      @JsonKey(name: 'dir', defaultValue: '')
          String dir,
      @HiveField(6)
      @JsonKey(name: 'description', defaultValue: '')
          String description,
      @HiveField(7)
      @JsonKey(name: 'issue_year')
          int? issueYear,
      @HiveField(8)
      @JsonKey(name: 'avg_rating', defaultValue: '')
          String avgRating,
      @HiveField(9)
      @JsonKey(name: 'admin_rating', defaultValue: '')
          String adminRating,
      @HiveField(10)
      @JsonKey(name: 'count_rating')
          int? countRating,
      @HiveField(11)
      @JsonKey(name: 'age_limit')
          int? ageLimit,
      @HiveField(12)
      @JsonKey(name: 'status')
          FilterModel? status,
      @HiveField(13)
      @JsonKey(name: 'count_bookmarks')
          int? countBookmarks,
      @HiveField(14)
      @JsonKey(name: 'total_votes')
          int? totalVotes,
      @HiveField(15)
      @JsonKey(name: 'total_views')
          int? totalViews,
      @HiveField(16)
      @JsonKey(name: 'type')
          FilterModel? type,
      @HiveField(17)
      @JsonKey(name: 'genres', defaultValue: [])
          List<FilterModel> genres,
      @HiveField(18)
      @JsonKey(name: 'categories', defaultValue: [])
          List<FilterModel> categories,
      @HiveField(19)
      @JsonKey(name: 'publishers', defaultValue: [])
          List<PublisherModel> publishers,
      @HiveField(20)
      @JsonKey(name: 'branches', defaultValue: [])
          List<BranchModel> branches,
      @HiveField(21)
      @JsonKey(name: 'count_chapters')
          int? countChapters,
      @HiveField(22)
      @JsonKey(name: 'first_chapter')
          MangaChapterModel? firstChapter});

  @override
  $ImgModelCopyWith<$Res> get img;
  @override
  $MangaChapterModelCopyWith<$Res>? get firstChapter;
}

/// @nodoc
class __$MangaDetailModelCopyWithImpl<$Res>
    extends _$MangaDetailModelCopyWithImpl<$Res>
    implements _$MangaDetailModelCopyWith<$Res> {
  __$MangaDetailModelCopyWithImpl(
      _MangaDetailModel _value, $Res Function(_MangaDetailModel) _then)
      : super(_value, (v) => _then(v as _MangaDetailModel));

  @override
  _MangaDetailModel get _value => super._value as _MangaDetailModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? img = freezed,
    Object? enName = freezed,
    Object? rusName = freezed,
    Object? anotherName = freezed,
    Object? dir = freezed,
    Object? description = freezed,
    Object? issueYear = freezed,
    Object? avgRating = freezed,
    Object? adminRating = freezed,
    Object? countRating = freezed,
    Object? ageLimit = freezed,
    Object? status = freezed,
    Object? countBookmarks = freezed,
    Object? totalVotes = freezed,
    Object? totalViews = freezed,
    Object? type = freezed,
    Object? genres = freezed,
    Object? categories = freezed,
    Object? publishers = freezed,
    Object? branches = freezed,
    Object? countChapters = freezed,
    Object? firstChapter = freezed,
  }) {
    return _then(_MangaDetailModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as ImgModel,
      enName: enName == freezed
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
      rusName: rusName == freezed
          ? _value.rusName
          : rusName // ignore: cast_nullable_to_non_nullable
              as String,
      anotherName: anotherName == freezed
          ? _value.anotherName
          : anotherName // ignore: cast_nullable_to_non_nullable
              as String,
      dir: dir == freezed
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      issueYear: issueYear == freezed
          ? _value.issueYear
          : issueYear // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as String,
      adminRating: adminRating == freezed
          ? _value.adminRating
          : adminRating // ignore: cast_nullable_to_non_nullable
              as String,
      countRating: countRating == freezed
          ? _value.countRating
          : countRating // ignore: cast_nullable_to_non_nullable
              as int?,
      ageLimit: ageLimit == freezed
          ? _value.ageLimit
          : ageLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FilterModel?,
      countBookmarks: countBookmarks == freezed
          ? _value.countBookmarks
          : countBookmarks // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVotes: totalVotes == freezed
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalViews: totalViews == freezed
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FilterModel?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<FilterModel>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<FilterModel>,
      publishers: publishers == freezed
          ? _value.publishers
          : publishers // ignore: cast_nullable_to_non_nullable
              as List<PublisherModel>,
      branches: branches == freezed
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<BranchModel>,
      countChapters: countChapters == freezed
          ? _value.countChapters
          : countChapters // ignore: cast_nullable_to_non_nullable
              as int?,
      firstChapter: firstChapter == freezed
          ? _value.firstChapter
          : firstChapter // ignore: cast_nullable_to_non_nullable
              as MangaChapterModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 5, adapterName: 'MangaDetailModelAdapter')
class _$_MangaDetailModel implements _MangaDetailModel {
  const _$_MangaDetailModel(
      {@HiveField(0)
      @JsonKey(name: 'id', defaultValue: -1)
          required this.id,
      @HiveField(1)
      @JsonKey(name: 'img')
          required this.img,
      @HiveField(2)
      @JsonKey(name: 'en_name', defaultValue: '')
          required this.enName,
      @HiveField(3)
      @JsonKey(name: 'rus_name', defaultValue: '')
          required this.rusName,
      @HiveField(4)
      @JsonKey(name: 'another_name', defaultValue: '')
          required this.anotherName,
      @HiveField(5)
      @JsonKey(name: 'dir', defaultValue: '')
          required this.dir,
      @HiveField(6)
      @JsonKey(name: 'description', defaultValue: '')
          required this.description,
      @HiveField(7)
      @JsonKey(name: 'issue_year')
          required this.issueYear,
      @HiveField(8)
      @JsonKey(name: 'avg_rating', defaultValue: '')
          required this.avgRating,
      @HiveField(9)
      @JsonKey(name: 'admin_rating', defaultValue: '')
          required this.adminRating,
      @HiveField(10)
      @JsonKey(name: 'count_rating')
          required this.countRating,
      @HiveField(11)
      @JsonKey(name: 'age_limit')
          required this.ageLimit,
      @HiveField(12)
      @JsonKey(name: 'status')
          required this.status,
      @HiveField(13)
      @JsonKey(name: 'count_bookmarks')
          required this.countBookmarks,
      @HiveField(14)
      @JsonKey(name: 'total_votes')
          required this.totalVotes,
      @HiveField(15)
      @JsonKey(name: 'total_views')
          required this.totalViews,
      @HiveField(16)
      @JsonKey(name: 'type')
          required this.type,
      @HiveField(17)
      @JsonKey(name: 'genres', defaultValue: [])
          required this.genres,
      @HiveField(18)
      @JsonKey(name: 'categories', defaultValue: [])
          required this.categories,
      @HiveField(19)
      @JsonKey(name: 'publishers', defaultValue: [])
          required this.publishers,
      @HiveField(20)
      @JsonKey(name: 'branches', defaultValue: [])
          required this.branches,
      @HiveField(21)
      @JsonKey(name: 'count_chapters')
          required this.countChapters,
      @HiveField(22)
      @JsonKey(name: 'first_chapter')
          required this.firstChapter});

  factory _$_MangaDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_MangaDetailModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'id', defaultValue: -1)
  final int id;
  @override
  @HiveField(1)
  @JsonKey(name: 'img')
  final ImgModel img;
  @override
  @HiveField(2)
  @JsonKey(name: 'en_name', defaultValue: '')
  final String enName;
  @override
  @HiveField(3)
  @JsonKey(name: 'rus_name', defaultValue: '')
  final String rusName;
  @override
  @HiveField(4)
  @JsonKey(name: 'another_name', defaultValue: '')
  final String anotherName;
  @override
  @HiveField(5)
  @JsonKey(name: 'dir', defaultValue: '')
  final String dir;
  @override
  @HiveField(6)
  @JsonKey(name: 'description', defaultValue: '')
  final String description;
  @override
  @HiveField(7)
  @JsonKey(name: 'issue_year')
  final int? issueYear;
  @override
  @HiveField(8)
  @JsonKey(name: 'avg_rating', defaultValue: '')
  final String avgRating;
  @override
  @HiveField(9)
  @JsonKey(name: 'admin_rating', defaultValue: '')
  final String adminRating;
  @override
  @HiveField(10)
  @JsonKey(name: 'count_rating')
  final int? countRating;
  @override
  @HiveField(11)
  @JsonKey(name: 'age_limit')
  final int? ageLimit;
  @override
  @HiveField(12)
  @JsonKey(name: 'status')
  final FilterModel? status;
  @override
  @HiveField(13)
  @JsonKey(name: 'count_bookmarks')
  final int? countBookmarks;
  @override
  @HiveField(14)
  @JsonKey(name: 'total_votes')
  final int? totalVotes;
  @override
  @HiveField(15)
  @JsonKey(name: 'total_views')
  final int? totalViews;
  @override
  @HiveField(16)
  @JsonKey(name: 'type')
  final FilterModel? type;
  @override
  @HiveField(17)
  @JsonKey(name: 'genres', defaultValue: [])
  final List<FilterModel> genres;
  @override
  @HiveField(18)
  @JsonKey(name: 'categories', defaultValue: [])
  final List<FilterModel> categories;
  @override
  @HiveField(19)
  @JsonKey(name: 'publishers', defaultValue: [])
  final List<PublisherModel> publishers;
  @override
  @HiveField(20)
  @JsonKey(name: 'branches', defaultValue: [])
  final List<BranchModel> branches;
  @override
  @HiveField(21)
  @JsonKey(name: 'count_chapters')
  final int? countChapters;
  @override
  @HiveField(22)
  @JsonKey(name: 'first_chapter')
  final MangaChapterModel? firstChapter;

  @override
  String toString() {
    return 'MangaDetailModel(id: $id, img: $img, enName: $enName, rusName: $rusName, anotherName: $anotherName, dir: $dir, description: $description, issueYear: $issueYear, avgRating: $avgRating, adminRating: $adminRating, countRating: $countRating, ageLimit: $ageLimit, status: $status, countBookmarks: $countBookmarks, totalVotes: $totalVotes, totalViews: $totalViews, type: $type, genres: $genres, categories: $categories, publishers: $publishers, branches: $branches, countChapters: $countChapters, firstChapter: $firstChapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MangaDetailModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality().equals(other.enName, enName) &&
            const DeepCollectionEquality().equals(other.rusName, rusName) &&
            const DeepCollectionEquality()
                .equals(other.anotherName, anotherName) &&
            const DeepCollectionEquality().equals(other.dir, dir) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.issueYear, issueYear) &&
            const DeepCollectionEquality().equals(other.avgRating, avgRating) &&
            const DeepCollectionEquality()
                .equals(other.adminRating, adminRating) &&
            const DeepCollectionEquality()
                .equals(other.countRating, countRating) &&
            const DeepCollectionEquality().equals(other.ageLimit, ageLimit) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.countBookmarks, countBookmarks) &&
            const DeepCollectionEquality()
                .equals(other.totalVotes, totalVotes) &&
            const DeepCollectionEquality()
                .equals(other.totalViews, totalViews) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.publishers, publishers) &&
            const DeepCollectionEquality().equals(other.branches, branches) &&
            const DeepCollectionEquality()
                .equals(other.countChapters, countChapters) &&
            const DeepCollectionEquality()
                .equals(other.firstChapter, firstChapter));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(img),
        const DeepCollectionEquality().hash(enName),
        const DeepCollectionEquality().hash(rusName),
        const DeepCollectionEquality().hash(anotherName),
        const DeepCollectionEquality().hash(dir),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(issueYear),
        const DeepCollectionEquality().hash(avgRating),
        const DeepCollectionEquality().hash(adminRating),
        const DeepCollectionEquality().hash(countRating),
        const DeepCollectionEquality().hash(ageLimit),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(countBookmarks),
        const DeepCollectionEquality().hash(totalVotes),
        const DeepCollectionEquality().hash(totalViews),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(genres),
        const DeepCollectionEquality().hash(categories),
        const DeepCollectionEquality().hash(publishers),
        const DeepCollectionEquality().hash(branches),
        const DeepCollectionEquality().hash(countChapters),
        const DeepCollectionEquality().hash(firstChapter)
      ]);

  @JsonKey(ignore: true)
  @override
  _$MangaDetailModelCopyWith<_MangaDetailModel> get copyWith =>
      __$MangaDetailModelCopyWithImpl<_MangaDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MangaDetailModelToJson(this);
  }
}

abstract class _MangaDetailModel implements MangaDetailModel {
  const factory _MangaDetailModel(
      {@HiveField(0)
      @JsonKey(name: 'id', defaultValue: -1)
          required int id,
      @HiveField(1)
      @JsonKey(name: 'img')
          required ImgModel img,
      @HiveField(2)
      @JsonKey(name: 'en_name', defaultValue: '')
          required String enName,
      @HiveField(3)
      @JsonKey(name: 'rus_name', defaultValue: '')
          required String rusName,
      @HiveField(4)
      @JsonKey(name: 'another_name', defaultValue: '')
          required String anotherName,
      @HiveField(5)
      @JsonKey(name: 'dir', defaultValue: '')
          required String dir,
      @HiveField(6)
      @JsonKey(name: 'description', defaultValue: '')
          required String description,
      @HiveField(7)
      @JsonKey(name: 'issue_year')
          required int? issueYear,
      @HiveField(8)
      @JsonKey(name: 'avg_rating', defaultValue: '')
          required String avgRating,
      @HiveField(9)
      @JsonKey(name: 'admin_rating', defaultValue: '')
          required String adminRating,
      @HiveField(10)
      @JsonKey(name: 'count_rating')
          required int? countRating,
      @HiveField(11)
      @JsonKey(name: 'age_limit')
          required int? ageLimit,
      @HiveField(12)
      @JsonKey(name: 'status')
          required FilterModel? status,
      @HiveField(13)
      @JsonKey(name: 'count_bookmarks')
          required int? countBookmarks,
      @HiveField(14)
      @JsonKey(name: 'total_votes')
          required int? totalVotes,
      @HiveField(15)
      @JsonKey(name: 'total_views')
          required int? totalViews,
      @HiveField(16)
      @JsonKey(name: 'type')
          required FilterModel? type,
      @HiveField(17)
      @JsonKey(name: 'genres', defaultValue: [])
          required List<FilterModel> genres,
      @HiveField(18)
      @JsonKey(name: 'categories', defaultValue: [])
          required List<FilterModel> categories,
      @HiveField(19)
      @JsonKey(name: 'publishers', defaultValue: [])
          required List<PublisherModel> publishers,
      @HiveField(20)
      @JsonKey(name: 'branches', defaultValue: [])
          required List<BranchModel> branches,
      @HiveField(21)
      @JsonKey(name: 'count_chapters')
          required int? countChapters,
      @HiveField(22)
      @JsonKey(name: 'first_chapter')
          required MangaChapterModel? firstChapter}) = _$_MangaDetailModel;

  factory _MangaDetailModel.fromJson(Map<String, dynamic> json) =
      _$_MangaDetailModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'id', defaultValue: -1)
  int get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'img')
  ImgModel get img;
  @override
  @HiveField(2)
  @JsonKey(name: 'en_name', defaultValue: '')
  String get enName;
  @override
  @HiveField(3)
  @JsonKey(name: 'rus_name', defaultValue: '')
  String get rusName;
  @override
  @HiveField(4)
  @JsonKey(name: 'another_name', defaultValue: '')
  String get anotherName;
  @override
  @HiveField(5)
  @JsonKey(name: 'dir', defaultValue: '')
  String get dir;
  @override
  @HiveField(6)
  @JsonKey(name: 'description', defaultValue: '')
  String get description;
  @override
  @HiveField(7)
  @JsonKey(name: 'issue_year')
  int? get issueYear;
  @override
  @HiveField(8)
  @JsonKey(name: 'avg_rating', defaultValue: '')
  String get avgRating;
  @override
  @HiveField(9)
  @JsonKey(name: 'admin_rating', defaultValue: '')
  String get adminRating;
  @override
  @HiveField(10)
  @JsonKey(name: 'count_rating')
  int? get countRating;
  @override
  @HiveField(11)
  @JsonKey(name: 'age_limit')
  int? get ageLimit;
  @override
  @HiveField(12)
  @JsonKey(name: 'status')
  FilterModel? get status;
  @override
  @HiveField(13)
  @JsonKey(name: 'count_bookmarks')
  int? get countBookmarks;
  @override
  @HiveField(14)
  @JsonKey(name: 'total_votes')
  int? get totalVotes;
  @override
  @HiveField(15)
  @JsonKey(name: 'total_views')
  int? get totalViews;
  @override
  @HiveField(16)
  @JsonKey(name: 'type')
  FilterModel? get type;
  @override
  @HiveField(17)
  @JsonKey(name: 'genres', defaultValue: [])
  List<FilterModel> get genres;
  @override
  @HiveField(18)
  @JsonKey(name: 'categories', defaultValue: [])
  List<FilterModel> get categories;
  @override
  @HiveField(19)
  @JsonKey(name: 'publishers', defaultValue: [])
  List<PublisherModel> get publishers;
  @override
  @HiveField(20)
  @JsonKey(name: 'branches', defaultValue: [])
  List<BranchModel> get branches;
  @override
  @HiveField(21)
  @JsonKey(name: 'count_chapters')
  int? get countChapters;
  @override
  @HiveField(22)
  @JsonKey(name: 'first_chapter')
  MangaChapterModel? get firstChapter;
  @override
  @JsonKey(ignore: true)
  _$MangaDetailModelCopyWith<_MangaDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
