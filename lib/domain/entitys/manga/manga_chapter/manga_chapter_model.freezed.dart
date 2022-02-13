// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'manga_chapter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MangaChapterModel _$MangaChapterModelFromJson(Map<String, dynamic> json) {
  return _MangaChapterModel.fromJson(json);
}

/// @nodoc
class _$MangaChapterModelTearOff {
  const _$MangaChapterModelTearOff();

  _MangaChapterModel call(
      {@HiveField(0) required int id,
      @HiveField(1) required int tome,
      @HiveField(2) required String chapter,
      @HiveField(3) @JsonKey(name: 'upload_date') required String? uploadDate,
      @HiveField(4) @JsonKey(name: 'is_paid') bool? isPaid,
      @HiveField(5) @JsonKey(name: 'is_bought') bool? isBought,
      @HiveField(6) required int? index}) {
    return _MangaChapterModel(
      id: id,
      tome: tome,
      chapter: chapter,
      uploadDate: uploadDate,
      isPaid: isPaid,
      isBought: isBought,
      index: index,
    );
  }

  MangaChapterModel fromJson(Map<String, Object?> json) {
    return MangaChapterModel.fromJson(json);
  }
}

/// @nodoc
const $MangaChapterModel = _$MangaChapterModelTearOff();

/// @nodoc
mixin _$MangaChapterModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int get tome => throw _privateConstructorUsedError;
  @HiveField(2)
  String get chapter => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'upload_date')
  String? get uploadDate => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'is_paid')
  bool? get isPaid => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'is_bought')
  bool? get isBought => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaChapterModelCopyWith<MangaChapterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaChapterModelCopyWith<$Res> {
  factory $MangaChapterModelCopyWith(
          MangaChapterModel value, $Res Function(MangaChapterModel) then) =
      _$MangaChapterModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int tome,
      @HiveField(2) String chapter,
      @HiveField(3) @JsonKey(name: 'upload_date') String? uploadDate,
      @HiveField(4) @JsonKey(name: 'is_paid') bool? isPaid,
      @HiveField(5) @JsonKey(name: 'is_bought') bool? isBought,
      @HiveField(6) int? index});
}

/// @nodoc
class _$MangaChapterModelCopyWithImpl<$Res>
    implements $MangaChapterModelCopyWith<$Res> {
  _$MangaChapterModelCopyWithImpl(this._value, this._then);

  final MangaChapterModel _value;
  // ignore: unused_field
  final $Res Function(MangaChapterModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? tome = freezed,
    Object? chapter = freezed,
    Object? uploadDate = freezed,
    Object? isPaid = freezed,
    Object? isBought = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tome: tome == freezed
          ? _value.tome
          : tome // ignore: cast_nullable_to_non_nullable
              as int,
      chapter: chapter == freezed
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: isPaid == freezed
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBought: isBought == freezed
          ? _value.isBought
          : isBought // ignore: cast_nullable_to_non_nullable
              as bool?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MangaChapterModelCopyWith<$Res>
    implements $MangaChapterModelCopyWith<$Res> {
  factory _$MangaChapterModelCopyWith(
          _MangaChapterModel value, $Res Function(_MangaChapterModel) then) =
      __$MangaChapterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int tome,
      @HiveField(2) String chapter,
      @HiveField(3) @JsonKey(name: 'upload_date') String? uploadDate,
      @HiveField(4) @JsonKey(name: 'is_paid') bool? isPaid,
      @HiveField(5) @JsonKey(name: 'is_bought') bool? isBought,
      @HiveField(6) int? index});
}

/// @nodoc
class __$MangaChapterModelCopyWithImpl<$Res>
    extends _$MangaChapterModelCopyWithImpl<$Res>
    implements _$MangaChapterModelCopyWith<$Res> {
  __$MangaChapterModelCopyWithImpl(
      _MangaChapterModel _value, $Res Function(_MangaChapterModel) _then)
      : super(_value, (v) => _then(v as _MangaChapterModel));

  @override
  _MangaChapterModel get _value => super._value as _MangaChapterModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? tome = freezed,
    Object? chapter = freezed,
    Object? uploadDate = freezed,
    Object? isPaid = freezed,
    Object? isBought = freezed,
    Object? index = freezed,
  }) {
    return _then(_MangaChapterModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tome: tome == freezed
          ? _value.tome
          : tome // ignore: cast_nullable_to_non_nullable
              as int,
      chapter: chapter == freezed
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: isPaid == freezed
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBought: isBought == freezed
          ? _value.isBought
          : isBought // ignore: cast_nullable_to_non_nullable
              as bool?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 4, adapterName: 'MangaChapterModelAdapter')
class _$_MangaChapterModel implements _MangaChapterModel {
  const _$_MangaChapterModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.tome,
      @HiveField(2) required this.chapter,
      @HiveField(3) @JsonKey(name: 'upload_date') required this.uploadDate,
      @HiveField(4) @JsonKey(name: 'is_paid') this.isPaid,
      @HiveField(5) @JsonKey(name: 'is_bought') this.isBought,
      @HiveField(6) required this.index});

  factory _$_MangaChapterModel.fromJson(Map<String, dynamic> json) =>
      _$$_MangaChapterModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final int tome;
  @override
  @HiveField(2)
  final String chapter;
  @override
  @HiveField(3)
  @JsonKey(name: 'upload_date')
  final String? uploadDate;
  @override
  @HiveField(4)
  @JsonKey(name: 'is_paid')
  final bool? isPaid;
  @override
  @HiveField(5)
  @JsonKey(name: 'is_bought')
  final bool? isBought;
  @override
  @HiveField(6)
  final int? index;

  @override
  String toString() {
    return 'MangaChapterModel(id: $id, tome: $tome, chapter: $chapter, uploadDate: $uploadDate, isPaid: $isPaid, isBought: $isBought, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MangaChapterModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.tome, tome) &&
            const DeepCollectionEquality().equals(other.chapter, chapter) &&
            const DeepCollectionEquality()
                .equals(other.uploadDate, uploadDate) &&
            const DeepCollectionEquality().equals(other.isPaid, isPaid) &&
            const DeepCollectionEquality().equals(other.isBought, isBought) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(tome),
      const DeepCollectionEquality().hash(chapter),
      const DeepCollectionEquality().hash(uploadDate),
      const DeepCollectionEquality().hash(isPaid),
      const DeepCollectionEquality().hash(isBought),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$MangaChapterModelCopyWith<_MangaChapterModel> get copyWith =>
      __$MangaChapterModelCopyWithImpl<_MangaChapterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MangaChapterModelToJson(this);
  }
}

abstract class _MangaChapterModel implements MangaChapterModel {
  const factory _MangaChapterModel(
      {@HiveField(0) required int id,
      @HiveField(1) required int tome,
      @HiveField(2) required String chapter,
      @HiveField(3) @JsonKey(name: 'upload_date') required String? uploadDate,
      @HiveField(4) @JsonKey(name: 'is_paid') bool? isPaid,
      @HiveField(5) @JsonKey(name: 'is_bought') bool? isBought,
      @HiveField(6) required int? index}) = _$_MangaChapterModel;

  factory _MangaChapterModel.fromJson(Map<String, dynamic> json) =
      _$_MangaChapterModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  int get tome;
  @override
  @HiveField(2)
  String get chapter;
  @override
  @HiveField(3)
  @JsonKey(name: 'upload_date')
  String? get uploadDate;
  @override
  @HiveField(4)
  @JsonKey(name: 'is_paid')
  bool? get isPaid;
  @override
  @HiveField(5)
  @JsonKey(name: 'is_bought')
  bool? get isBought;
  @override
  @HiveField(6)
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$MangaChapterModelCopyWith<_MangaChapterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
