// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BranchModel _$BranchModelFromJson(Map<String, dynamic> json) {
  return _BranchModel.fromJson(json);
}

/// @nodoc
class _$BranchModelTearOff {
  const _$BranchModelTearOff();

  _BranchModel call(
      {@HiveField(0)
          required int id,
      @HiveField(1)
          required String img,
      @HiveField(2)
          List<PublisherModel> publishers = const [],
      @HiveField(3)
          required bool? subscribed,
      @HiveField(4)
      @JsonKey(name: 'total_votes')
          required int? totalVotes,
      @HiveField(5)
      @JsonKey(name: 'count_chapters')
          required int? countChapters}) {
    return _BranchModel(
      id: id,
      img: img,
      publishers: publishers,
      subscribed: subscribed,
      totalVotes: totalVotes,
      countChapters: countChapters,
    );
  }

  BranchModel fromJson(Map<String, Object?> json) {
    return BranchModel.fromJson(json);
  }
}

/// @nodoc
const $BranchModel = _$BranchModelTearOff();

/// @nodoc
mixin _$BranchModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get img => throw _privateConstructorUsedError;
  @HiveField(2)
  List<PublisherModel> get publishers => throw _privateConstructorUsedError;
  @HiveField(3)
  bool? get subscribed => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'total_votes')
  int? get totalVotes => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'count_chapters')
  int? get countChapters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchModelCopyWith<BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchModelCopyWith<$Res> {
  factory $BranchModelCopyWith(
          BranchModel value, $Res Function(BranchModel) then) =
      _$BranchModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String img,
      @HiveField(2) List<PublisherModel> publishers,
      @HiveField(3) bool? subscribed,
      @HiveField(4) @JsonKey(name: 'total_votes') int? totalVotes,
      @HiveField(5) @JsonKey(name: 'count_chapters') int? countChapters});
}

/// @nodoc
class _$BranchModelCopyWithImpl<$Res> implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._value, this._then);

  final BranchModel _value;
  // ignore: unused_field
  final $Res Function(BranchModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? img = freezed,
    Object? publishers = freezed,
    Object? subscribed = freezed,
    Object? totalVotes = freezed,
    Object? countChapters = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      publishers: publishers == freezed
          ? _value.publishers
          : publishers // ignore: cast_nullable_to_non_nullable
              as List<PublisherModel>,
      subscribed: subscribed == freezed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalVotes: totalVotes == freezed
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      countChapters: countChapters == freezed
          ? _value.countChapters
          : countChapters // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BranchModelCopyWith<$Res>
    implements $BranchModelCopyWith<$Res> {
  factory _$BranchModelCopyWith(
          _BranchModel value, $Res Function(_BranchModel) then) =
      __$BranchModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String img,
      @HiveField(2) List<PublisherModel> publishers,
      @HiveField(3) bool? subscribed,
      @HiveField(4) @JsonKey(name: 'total_votes') int? totalVotes,
      @HiveField(5) @JsonKey(name: 'count_chapters') int? countChapters});
}

/// @nodoc
class __$BranchModelCopyWithImpl<$Res> extends _$BranchModelCopyWithImpl<$Res>
    implements _$BranchModelCopyWith<$Res> {
  __$BranchModelCopyWithImpl(
      _BranchModel _value, $Res Function(_BranchModel) _then)
      : super(_value, (v) => _then(v as _BranchModel));

  @override
  _BranchModel get _value => super._value as _BranchModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? img = freezed,
    Object? publishers = freezed,
    Object? subscribed = freezed,
    Object? totalVotes = freezed,
    Object? countChapters = freezed,
  }) {
    return _then(_BranchModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      publishers: publishers == freezed
          ? _value.publishers
          : publishers // ignore: cast_nullable_to_non_nullable
              as List<PublisherModel>,
      subscribed: subscribed == freezed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalVotes: totalVotes == freezed
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      countChapters: countChapters == freezed
          ? _value.countChapters
          : countChapters // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'BranchModelAdapter')
class _$_BranchModel implements _BranchModel {
  const _$_BranchModel(
      {@HiveField(0)
          required this.id,
      @HiveField(1)
          required this.img,
      @HiveField(2)
          this.publishers = const [],
      @HiveField(3)
          required this.subscribed,
      @HiveField(4)
      @JsonKey(name: 'total_votes')
          required this.totalVotes,
      @HiveField(5)
      @JsonKey(name: 'count_chapters')
          required this.countChapters});

  factory _$_BranchModel.fromJson(Map<String, dynamic> json) =>
      _$$_BranchModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String img;
  @JsonKey()
  @override
  @HiveField(2)
  final List<PublisherModel> publishers;
  @override
  @HiveField(3)
  final bool? subscribed;
  @override
  @HiveField(4)
  @JsonKey(name: 'total_votes')
  final int? totalVotes;
  @override
  @HiveField(5)
  @JsonKey(name: 'count_chapters')
  final int? countChapters;

  @override
  String toString() {
    return 'BranchModel(id: $id, img: $img, publishers: $publishers, subscribed: $subscribed, totalVotes: $totalVotes, countChapters: $countChapters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BranchModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality()
                .equals(other.publishers, publishers) &&
            const DeepCollectionEquality()
                .equals(other.subscribed, subscribed) &&
            const DeepCollectionEquality()
                .equals(other.totalVotes, totalVotes) &&
            const DeepCollectionEquality()
                .equals(other.countChapters, countChapters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(publishers),
      const DeepCollectionEquality().hash(subscribed),
      const DeepCollectionEquality().hash(totalVotes),
      const DeepCollectionEquality().hash(countChapters));

  @JsonKey(ignore: true)
  @override
  _$BranchModelCopyWith<_BranchModel> get copyWith =>
      __$BranchModelCopyWithImpl<_BranchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BranchModelToJson(this);
  }
}

abstract class _BranchModel implements BranchModel {
  const factory _BranchModel(
      {@HiveField(0)
          required int id,
      @HiveField(1)
          required String img,
      @HiveField(2)
          List<PublisherModel> publishers,
      @HiveField(3)
          required bool? subscribed,
      @HiveField(4)
      @JsonKey(name: 'total_votes')
          required int? totalVotes,
      @HiveField(5)
      @JsonKey(name: 'count_chapters')
          required int? countChapters}) = _$_BranchModel;

  factory _BranchModel.fromJson(Map<String, dynamic> json) =
      _$_BranchModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get img;
  @override
  @HiveField(2)
  List<PublisherModel> get publishers;
  @override
  @HiveField(3)
  bool? get subscribed;
  @override
  @HiveField(4)
  @JsonKey(name: 'total_votes')
  int? get totalVotes;
  @override
  @HiveField(5)
  @JsonKey(name: 'count_chapters')
  int? get countChapters;
  @override
  @JsonKey(ignore: true)
  _$BranchModelCopyWith<_BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
