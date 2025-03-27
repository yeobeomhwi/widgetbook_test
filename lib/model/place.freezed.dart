// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  String get addr => throw _privateConstructorUsedError; // 병원주소 (nullable)
  String? get hospUrl =>
      throw _privateConstructorUsedError; // 병원 홈페이지 (nullable)
  String get yadmNm => throw _privateConstructorUsedError; //병원명 (nullable)
  String? get telno => throw _privateConstructorUsedError; //전화번호 (nullable)
  String get XPos => throw _privateConstructorUsedError; //X 좌표 (nullable)
  String get YPos => throw _privateConstructorUsedError; //Y 좌표 (nullable)
  String? get mdeptSdrCnt =>
      throw _privateConstructorUsedError; //전문의 수 (nullable)
  double? get distance => throw _privateConstructorUsedError;

  /// Serializes this Place to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {String addr,
      String? hospUrl,
      String yadmNm,
      String? telno,
      String XPos,
      String YPos,
      String? mdeptSdrCnt,
      double? distance});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addr = null,
    Object? hospUrl = freezed,
    Object? yadmNm = null,
    Object? telno = freezed,
    Object? XPos = null,
    Object? YPos = null,
    Object? mdeptSdrCnt = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      addr: null == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      hospUrl: freezed == hospUrl
          ? _value.hospUrl
          : hospUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      yadmNm: null == yadmNm
          ? _value.yadmNm
          : yadmNm // ignore: cast_nullable_to_non_nullable
              as String,
      telno: freezed == telno
          ? _value.telno
          : telno // ignore: cast_nullable_to_non_nullable
              as String?,
      XPos: null == XPos
          ? _value.XPos
          : XPos // ignore: cast_nullable_to_non_nullable
              as String,
      YPos: null == YPos
          ? _value.YPos
          : YPos // ignore: cast_nullable_to_non_nullable
              as String,
      mdeptSdrCnt: freezed == mdeptSdrCnt
          ? _value.mdeptSdrCnt
          : mdeptSdrCnt // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
          _$PlaceImpl value, $Res Function(_$PlaceImpl) then) =
      __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String addr,
      String? hospUrl,
      String yadmNm,
      String? telno,
      String XPos,
      String YPos,
      String? mdeptSdrCnt,
      double? distance});
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
      _$PlaceImpl _value, $Res Function(_$PlaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addr = null,
    Object? hospUrl = freezed,
    Object? yadmNm = null,
    Object? telno = freezed,
    Object? XPos = null,
    Object? YPos = null,
    Object? mdeptSdrCnt = freezed,
    Object? distance = freezed,
  }) {
    return _then(_$PlaceImpl(
      addr: null == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      hospUrl: freezed == hospUrl
          ? _value.hospUrl
          : hospUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      yadmNm: null == yadmNm
          ? _value.yadmNm
          : yadmNm // ignore: cast_nullable_to_non_nullable
              as String,
      telno: freezed == telno
          ? _value.telno
          : telno // ignore: cast_nullable_to_non_nullable
              as String?,
      XPos: null == XPos
          ? _value.XPos
          : XPos // ignore: cast_nullable_to_non_nullable
              as String,
      YPos: null == YPos
          ? _value.YPos
          : YPos // ignore: cast_nullable_to_non_nullable
              as String,
      mdeptSdrCnt: freezed == mdeptSdrCnt
          ? _value.mdeptSdrCnt
          : mdeptSdrCnt // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceImpl implements _Place {
  _$PlaceImpl(
      {required this.addr,
      required this.hospUrl,
      required this.yadmNm,
      required this.telno,
      required this.XPos,
      required this.YPos,
      required this.mdeptSdrCnt,
      required this.distance});

  factory _$PlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceImplFromJson(json);

  @override
  final String addr;
// 병원주소 (nullable)
  @override
  final String? hospUrl;
// 병원 홈페이지 (nullable)
  @override
  final String yadmNm;
//병원명 (nullable)
  @override
  final String? telno;
//전화번호 (nullable)
  @override
  final String XPos;
//X 좌표 (nullable)
  @override
  final String YPos;
//Y 좌표 (nullable)
  @override
  final String? mdeptSdrCnt;
//전문의 수 (nullable)
  @override
  final double? distance;

  @override
  String toString() {
    return 'Place(addr: $addr, hospUrl: $hospUrl, yadmNm: $yadmNm, telno: $telno, XPos: $XPos, YPos: $YPos, mdeptSdrCnt: $mdeptSdrCnt, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.addr, addr) || other.addr == addr) &&
            (identical(other.hospUrl, hospUrl) || other.hospUrl == hospUrl) &&
            (identical(other.yadmNm, yadmNm) || other.yadmNm == yadmNm) &&
            (identical(other.telno, telno) || other.telno == telno) &&
            (identical(other.XPos, XPos) || other.XPos == XPos) &&
            (identical(other.YPos, YPos) || other.YPos == YPos) &&
            (identical(other.mdeptSdrCnt, mdeptSdrCnt) ||
                other.mdeptSdrCnt == mdeptSdrCnt) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, addr, hospUrl, yadmNm, telno,
      XPos, YPos, mdeptSdrCnt, distance);

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceImplToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  factory _Place(
      {required final String addr,
      required final String? hospUrl,
      required final String yadmNm,
      required final String? telno,
      required final String XPos,
      required final String YPos,
      required final String? mdeptSdrCnt,
      required final double? distance}) = _$PlaceImpl;

  factory _Place.fromJson(Map<String, dynamic> json) = _$PlaceImpl.fromJson;

  @override
  String get addr; // 병원주소 (nullable)
  @override
  String? get hospUrl; // 병원 홈페이지 (nullable)
  @override
  String get yadmNm; //병원명 (nullable)
  @override
  String? get telno; //전화번호 (nullable)
  @override
  String get XPos; //X 좌표 (nullable)
  @override
  String get YPos; //Y 좌표 (nullable)
  @override
  String? get mdeptSdrCnt; //전문의 수 (nullable)
  @override
  double? get distance;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
