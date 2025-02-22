// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'asset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssetModel _$AssetModelFromJson(Map<String, dynamic> json) {
  return Asset.fromJson(json);
}

/// @nodoc
class _$AssetModelTearOff {
  const _$AssetModelTearOff();

  Asset call(
      String tag,
      String name,
      int typeId,
      int userId,
      String make,
      int created,
      int lastUpdated,
      String condition,
      String urlImage,
      int timesUsed,
      double originalPrice,
      int isAssigned) {
    return Asset(
      tag,
      name,
      typeId,
      userId,
      make,
      created,
      lastUpdated,
      condition,
      urlImage,
      timesUsed,
      originalPrice,
      isAssigned,
    );
  }

  AssetModel fromJson(Map<String, Object> json) {
    return AssetModel.fromJson(json);
  }
}

/// @nodoc
const $AssetModel = _$AssetModelTearOff();

/// @nodoc
mixin _$AssetModel {
  String get tag => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get typeId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get make => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  int get lastUpdated => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  String get urlImage => throw _privateConstructorUsedError;
  int get timesUsed => throw _privateConstructorUsedError;
  double get originalPrice => throw _privateConstructorUsedError;
  int get isAssigned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetModelCopyWith<AssetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetModelCopyWith<$Res> {
  factory $AssetModelCopyWith(
          AssetModel value, $Res Function(AssetModel) then) =
      _$AssetModelCopyWithImpl<$Res>;
  $Res call(
      {String tag,
      String name,
      int typeId,
      int userId,
      String make,
      int created,
      int lastUpdated,
      String condition,
      String urlImage,
      int timesUsed,
      double originalPrice,
      int isAssigned});
}

/// @nodoc
class _$AssetModelCopyWithImpl<$Res> implements $AssetModelCopyWith<$Res> {
  _$AssetModelCopyWithImpl(this._value, this._then);

  final AssetModel _value;
  // ignore: unused_field
  final $Res Function(AssetModel) _then;

  @override
  $Res call({
    Object? tag = freezed,
    Object? name = freezed,
    Object? typeId = freezed,
    Object? userId = freezed,
    Object? make = freezed,
    Object? created = freezed,
    Object? lastUpdated = freezed,
    Object? condition = freezed,
    Object? urlImage = freezed,
    Object? timesUsed = freezed,
    Object? originalPrice = freezed,
    Object? isAssigned = freezed,
  }) {
    return _then(_value.copyWith(
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      make: make == freezed
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as int,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: urlImage == freezed
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      timesUsed: timesUsed == freezed
          ? _value.timesUsed
          : timesUsed // ignore: cast_nullable_to_non_nullable
              as int,
      originalPrice: originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isAssigned: isAssigned == freezed
          ? _value.isAssigned
          : isAssigned // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $AssetCopyWith<$Res> implements $AssetModelCopyWith<$Res> {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) then) =
      _$AssetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String tag,
      String name,
      int typeId,
      int userId,
      String make,
      int created,
      int lastUpdated,
      String condition,
      String urlImage,
      int timesUsed,
      double originalPrice,
      int isAssigned});
}

/// @nodoc
class _$AssetCopyWithImpl<$Res> extends _$AssetModelCopyWithImpl<$Res>
    implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(Asset _value, $Res Function(Asset) _then)
      : super(_value, (v) => _then(v as Asset));

  @override
  Asset get _value => super._value as Asset;

  @override
  $Res call({
    Object? tag = freezed,
    Object? name = freezed,
    Object? typeId = freezed,
    Object? userId = freezed,
    Object? make = freezed,
    Object? created = freezed,
    Object? lastUpdated = freezed,
    Object? condition = freezed,
    Object? urlImage = freezed,
    Object? timesUsed = freezed,
    Object? originalPrice = freezed,
    Object? isAssigned = freezed,
  }) {
    return _then(Asset(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      make == freezed
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as int,
      condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage == freezed
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      timesUsed == freezed
          ? _value.timesUsed
          : timesUsed // ignore: cast_nullable_to_non_nullable
              as int,
      originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isAssigned == freezed
          ? _value.isAssigned
          : isAssigned // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Asset with DiagnosticableTreeMixin implements Asset {
  const _$Asset(
      this.tag,
      this.name,
      this.typeId,
      this.userId,
      this.make,
      this.created,
      this.lastUpdated,
      this.condition,
      this.urlImage,
      this.timesUsed,
      this.originalPrice,
      this.isAssigned);

  factory _$Asset.fromJson(Map<String, dynamic> json) =>
      _$_$AssetFromJson(json);

  @override
  final String tag;
  @override
  final String name;
  @override
  final int typeId;
  @override
  final int userId;
  @override
  final String make;
  @override
  final int created;
  @override
  final int lastUpdated;
  @override
  final String condition;
  @override
  final String urlImage;
  @override
  final int timesUsed;
  @override
  final double originalPrice;
  @override
  final int isAssigned;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AssetModel(tag: $tag, name: $name, typeId: $typeId, userId: $userId, make: $make, created: $created, lastUpdated: $lastUpdated, condition: $condition, urlImage: $urlImage, timesUsed: $timesUsed, originalPrice: $originalPrice, isAssigned: $isAssigned)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AssetModel'))
      ..add(DiagnosticsProperty('tag', tag))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('typeId', typeId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('make', make))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated))
      ..add(DiagnosticsProperty('condition', condition))
      ..add(DiagnosticsProperty('urlImage', urlImage))
      ..add(DiagnosticsProperty('timesUsed', timesUsed))
      ..add(DiagnosticsProperty('originalPrice', originalPrice))
      ..add(DiagnosticsProperty('isAssigned', isAssigned));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Asset &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.make, make) ||
                const DeepCollectionEquality().equals(other.make, make)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
            (identical(other.urlImage, urlImage) ||
                const DeepCollectionEquality()
                    .equals(other.urlImage, urlImage)) &&
            (identical(other.timesUsed, timesUsed) ||
                const DeepCollectionEquality()
                    .equals(other.timesUsed, timesUsed)) &&
            (identical(other.originalPrice, originalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.originalPrice, originalPrice)) &&
            (identical(other.isAssigned, isAssigned) ||
                const DeepCollectionEquality()
                    .equals(other.isAssigned, isAssigned)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(make) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(lastUpdated) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(urlImage) ^
      const DeepCollectionEquality().hash(timesUsed) ^
      const DeepCollectionEquality().hash(originalPrice) ^
      const DeepCollectionEquality().hash(isAssigned);

  @JsonKey(ignore: true)
  @override
  $AssetCopyWith<Asset> get copyWith =>
      _$AssetCopyWithImpl<Asset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$AssetToJson(this);
  }
}

abstract class Asset implements AssetModel {
  const factory Asset(
      String tag,
      String name,
      int typeId,
      int userId,
      String make,
      int created,
      int lastUpdated,
      String condition,
      String urlImage,
      int timesUsed,
      double originalPrice,
      int isAssigned) = _$Asset;

  factory Asset.fromJson(Map<String, dynamic> json) = _$Asset.fromJson;

  @override
  String get tag => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get typeId => throw _privateConstructorUsedError;
  @override
  int get userId => throw _privateConstructorUsedError;
  @override
  String get make => throw _privateConstructorUsedError;
  @override
  int get created => throw _privateConstructorUsedError;
  @override
  int get lastUpdated => throw _privateConstructorUsedError;
  @override
  String get condition => throw _privateConstructorUsedError;
  @override
  String get urlImage => throw _privateConstructorUsedError;
  @override
  int get timesUsed => throw _privateConstructorUsedError;
  @override
  double get originalPrice => throw _privateConstructorUsedError;
  @override
  int get isAssigned => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AssetCopyWith<Asset> get copyWith => throw _privateConstructorUsedError;
}
