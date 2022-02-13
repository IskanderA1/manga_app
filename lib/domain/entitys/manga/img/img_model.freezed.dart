// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'img_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImgModel _$ImgModelFromJson(Map<String, dynamic> json) {
  return _ImgModel.fromJson(json);
}

/// @nodoc
class _$ImgModelTearOff {
  const _$ImgModelTearOff();

  _ImgModel call(
      {@HiveField(0)
      @JsonKey(name: 'high', defaultValue: '')
          required String high,
      @HiveField(1)
      @JsonKey(name: 'mid', defaultValue: '')
          required String mid,
      @HiveField(2)
      @JsonKey(name: 'lov', defaultValue: '')
          required String lov}) {
    return _ImgModel(
      high: high,
      mid: mid,
      lov: lov,
    );
  }

  ImgModel fromJson(Map<String, Object?> json) {
    return ImgModel.fromJson(json);
  }
}

/// @nodoc
const $ImgModel = _$ImgModelTearOff();

/// @nodoc
mixin _$ImgModel {
  @HiveField(0)
  @JsonKey(name: 'high', defaultValue: '')
  String get high => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'mid', defaultValue: '')
  String get mid => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'lov', defaultValue: '')
  String get lov => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImgModelCopyWith<ImgModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImgModelCopyWith<$Res> {
  factory $ImgModelCopyWith(ImgModel value, $Res Function(ImgModel) then) =
      _$ImgModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'high', defaultValue: '') String high,
      @HiveField(1) @JsonKey(name: 'mid', defaultValue: '') String mid,
      @HiveField(2) @JsonKey(name: 'lov', defaultValue: '') String lov});
}

/// @nodoc
class _$ImgModelCopyWithImpl<$Res> implements $ImgModelCopyWith<$Res> {
  _$ImgModelCopyWithImpl(this._value, this._then);

  final ImgModel _value;
  // ignore: unused_field
  final $Res Function(ImgModel) _then;

  @override
  $Res call({
    Object? high = freezed,
    Object? mid = freezed,
    Object? lov = freezed,
  }) {
    return _then(_value.copyWith(
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as String,
      mid: mid == freezed
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as String,
      lov: lov == freezed
          ? _value.lov
          : lov // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImgModelCopyWith<$Res> implements $ImgModelCopyWith<$Res> {
  factory _$ImgModelCopyWith(_ImgModel value, $Res Function(_ImgModel) then) =
      __$ImgModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'high', defaultValue: '') String high,
      @HiveField(1) @JsonKey(name: 'mid', defaultValue: '') String mid,
      @HiveField(2) @JsonKey(name: 'lov', defaultValue: '') String lov});
}

/// @nodoc
class __$ImgModelCopyWithImpl<$Res> extends _$ImgModelCopyWithImpl<$Res>
    implements _$ImgModelCopyWith<$Res> {
  __$ImgModelCopyWithImpl(_ImgModel _value, $Res Function(_ImgModel) _then)
      : super(_value, (v) => _then(v as _ImgModel));

  @override
  _ImgModel get _value => super._value as _ImgModel;

  @override
  $Res call({
    Object? high = freezed,
    Object? mid = freezed,
    Object? lov = freezed,
  }) {
    return _then(_ImgModel(
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as String,
      mid: mid == freezed
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as String,
      lov: lov == freezed
          ? _value.lov
          : lov // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 6, adapterName: 'ImgModelAdapter')
class _$_ImgModel implements _ImgModel {
  const _$_ImgModel(
      {@HiveField(0)
      @JsonKey(name: 'high', defaultValue: '')
          required this.high,
      @HiveField(1)
      @JsonKey(name: 'mid', defaultValue: '')
          required this.mid,
      @HiveField(2)
      @JsonKey(name: 'lov', defaultValue: '')
          required this.lov});

  factory _$_ImgModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImgModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'high', defaultValue: '')
  final String high;
  @override
  @HiveField(1)
  @JsonKey(name: 'mid', defaultValue: '')
  final String mid;
  @override
  @HiveField(2)
  @JsonKey(name: 'lov', defaultValue: '')
  final String lov;

  @override
  String toString() {
    return 'ImgModel(high: $high, mid: $mid, lov: $lov)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImgModel &&
            const DeepCollectionEquality().equals(other.high, high) &&
            const DeepCollectionEquality().equals(other.mid, mid) &&
            const DeepCollectionEquality().equals(other.lov, lov));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(high),
      const DeepCollectionEquality().hash(mid),
      const DeepCollectionEquality().hash(lov));

  @JsonKey(ignore: true)
  @override
  _$ImgModelCopyWith<_ImgModel> get copyWith =>
      __$ImgModelCopyWithImpl<_ImgModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImgModelToJson(this);
  }
}

abstract class _ImgModel implements ImgModel {
  const factory _ImgModel(
      {@HiveField(0)
      @JsonKey(name: 'high', defaultValue: '')
          required String high,
      @HiveField(1)
      @JsonKey(name: 'mid', defaultValue: '')
          required String mid,
      @HiveField(2)
      @JsonKey(name: 'lov', defaultValue: '')
          required String lov}) = _$_ImgModel;

  factory _ImgModel.fromJson(Map<String, dynamic> json) = _$_ImgModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'high', defaultValue: '')
  String get high;
  @override
  @HiveField(1)
  @JsonKey(name: 'mid', defaultValue: '')
  String get mid;
  @override
  @HiveField(2)
  @JsonKey(name: 'lov', defaultValue: '')
  String get lov;
  @override
  @JsonKey(ignore: true)
  _$ImgModelCopyWith<_ImgModel> get copyWith =>
      throw _privateConstructorUsedError;
}
