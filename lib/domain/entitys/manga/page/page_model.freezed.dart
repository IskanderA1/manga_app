// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageModel _$PageModelFromJson(Map<String, dynamic> json) {
  return _PageModel.fromJson(json);
}

/// @nodoc
class _$PageModelTearOff {
  const _$PageModelTearOff();

  _PageModel call(
      {@HiveField(0) required int id,
      @HiveField(1) required String link,
      @HiveField(2) required int page}) {
    return _PageModel(
      id: id,
      link: link,
      page: page,
    );
  }

  PageModel fromJson(Map<String, Object?> json) {
    return PageModel.fromJson(json);
  }
}

/// @nodoc
const $PageModel = _$PageModelTearOff();

/// @nodoc
mixin _$PageModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get link => throw _privateConstructorUsedError;
  @HiveField(2)
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageModelCopyWith<PageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageModelCopyWith<$Res> {
  factory $PageModelCopyWith(PageModel value, $Res Function(PageModel) then) =
      _$PageModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String link,
      @HiveField(2) int page});
}

/// @nodoc
class _$PageModelCopyWithImpl<$Res> implements $PageModelCopyWith<$Res> {
  _$PageModelCopyWithImpl(this._value, this._then);

  final PageModel _value;
  // ignore: unused_field
  final $Res Function(PageModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PageModelCopyWith<$Res> implements $PageModelCopyWith<$Res> {
  factory _$PageModelCopyWith(
          _PageModel value, $Res Function(_PageModel) then) =
      __$PageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String link,
      @HiveField(2) int page});
}

/// @nodoc
class __$PageModelCopyWithImpl<$Res> extends _$PageModelCopyWithImpl<$Res>
    implements _$PageModelCopyWith<$Res> {
  __$PageModelCopyWithImpl(_PageModel _value, $Res Function(_PageModel) _then)
      : super(_value, (v) => _then(v as _PageModel));

  @override
  _PageModel get _value => super._value as _PageModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? page = freezed,
  }) {
    return _then(_PageModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3, adapterName: 'PageModelAdapter')
class _$_PageModel implements _PageModel {
  const _$_PageModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.link,
      @HiveField(2) required this.page});

  factory _$_PageModel.fromJson(Map<String, dynamic> json) =>
      _$$_PageModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String link;
  @override
  @HiveField(2)
  final int page;

  @override
  String toString() {
    return 'PageModel(id: $id, link: $link, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$PageModelCopyWith<_PageModel> get copyWith =>
      __$PageModelCopyWithImpl<_PageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageModelToJson(this);
  }
}

abstract class _PageModel implements PageModel {
  const factory _PageModel(
      {@HiveField(0) required int id,
      @HiveField(1) required String link,
      @HiveField(2) required int page}) = _$_PageModel;

  factory _PageModel.fromJson(Map<String, dynamic> json) =
      _$_PageModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get link;
  @override
  @HiveField(2)
  int get page;
  @override
  @JsonKey(ignore: true)
  _$PageModelCopyWith<_PageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
