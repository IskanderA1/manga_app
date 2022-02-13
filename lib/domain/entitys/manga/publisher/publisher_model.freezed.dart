// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'publisher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublisherModel _$PublisherModelFromJson(Map<String, dynamic> json) {
  return _PublisherModel.fromJson(json);
}

/// @nodoc
class _$PublisherModelTearOff {
  const _$PublisherModelTearOff();

  _PublisherModel call(
      {@HiveField(0) required int id,
      @HiveField(1) required String name,
      @HiveField(2) required String img,
      @HiveField(3) required String dir,
      @HiveField(4) required String? tagline,
      @HiveField(5) required String? type}) {
    return _PublisherModel(
      id: id,
      name: name,
      img: img,
      dir: dir,
      tagline: tagline,
      type: type,
    );
  }

  PublisherModel fromJson(Map<String, Object?> json) {
    return PublisherModel.fromJson(json);
  }
}

/// @nodoc
const $PublisherModel = _$PublisherModelTearOff();

/// @nodoc
mixin _$PublisherModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get img => throw _privateConstructorUsedError;
  @HiveField(3)
  String get dir => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get tagline => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublisherModelCopyWith<PublisherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublisherModelCopyWith<$Res> {
  factory $PublisherModelCopyWith(
          PublisherModel value, $Res Function(PublisherModel) then) =
      _$PublisherModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String img,
      @HiveField(3) String dir,
      @HiveField(4) String? tagline,
      @HiveField(5) String? type});
}

/// @nodoc
class _$PublisherModelCopyWithImpl<$Res>
    implements $PublisherModelCopyWith<$Res> {
  _$PublisherModelCopyWithImpl(this._value, this._then);

  final PublisherModel _value;
  // ignore: unused_field
  final $Res Function(PublisherModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? img = freezed,
    Object? dir = freezed,
    Object? tagline = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      dir: dir == freezed
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PublisherModelCopyWith<$Res>
    implements $PublisherModelCopyWith<$Res> {
  factory _$PublisherModelCopyWith(
          _PublisherModel value, $Res Function(_PublisherModel) then) =
      __$PublisherModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String img,
      @HiveField(3) String dir,
      @HiveField(4) String? tagline,
      @HiveField(5) String? type});
}

/// @nodoc
class __$PublisherModelCopyWithImpl<$Res>
    extends _$PublisherModelCopyWithImpl<$Res>
    implements _$PublisherModelCopyWith<$Res> {
  __$PublisherModelCopyWithImpl(
      _PublisherModel _value, $Res Function(_PublisherModel) _then)
      : super(_value, (v) => _then(v as _PublisherModel));

  @override
  _PublisherModel get _value => super._value as _PublisherModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? img = freezed,
    Object? dir = freezed,
    Object? tagline = freezed,
    Object? type = freezed,
  }) {
    return _then(_PublisherModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      dir: dir == freezed
          ? _value.dir
          : dir // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2, adapterName: 'PublisherModelAdapter')
class _$_PublisherModel implements _PublisherModel {
  const _$_PublisherModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.img,
      @HiveField(3) required this.dir,
      @HiveField(4) required this.tagline,
      @HiveField(5) required this.type});

  factory _$_PublisherModel.fromJson(Map<String, dynamic> json) =>
      _$$_PublisherModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String img;
  @override
  @HiveField(3)
  final String dir;
  @override
  @HiveField(4)
  final String? tagline;
  @override
  @HiveField(5)
  final String? type;

  @override
  String toString() {
    return 'PublisherModel(id: $id, name: $name, img: $img, dir: $dir, tagline: $tagline, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PublisherModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality().equals(other.dir, dir) &&
            const DeepCollectionEquality().equals(other.tagline, tagline) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(dir),
      const DeepCollectionEquality().hash(tagline),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$PublisherModelCopyWith<_PublisherModel> get copyWith =>
      __$PublisherModelCopyWithImpl<_PublisherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublisherModelToJson(this);
  }
}

abstract class _PublisherModel implements PublisherModel {
  const factory _PublisherModel(
      {@HiveField(0) required int id,
      @HiveField(1) required String name,
      @HiveField(2) required String img,
      @HiveField(3) required String dir,
      @HiveField(4) required String? tagline,
      @HiveField(5) required String? type}) = _$_PublisherModel;

  factory _PublisherModel.fromJson(Map<String, dynamic> json) =
      _$_PublisherModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get img;
  @override
  @HiveField(3)
  String get dir;
  @override
  @HiveField(4)
  String? get tagline;
  @override
  @HiveField(5)
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$PublisherModelCopyWith<_PublisherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
