// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_hospital_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FindHospitalState {
//검색한 병원 이름
  String get searchHospitalName => throw _privateConstructorUsedError; //병원 목록
  List<Place> get hospitals =>
      throw _privateConstructorUsedError; //검색 목록창 on off 상태
  bool get showSearchBar =>
      throw _privateConstructorUsedError; //바텀 시트 on off 상태
  bool get showBottomSheet => throw _privateConstructorUsedError;
  Place? get selectName => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;

  /// Create a copy of FindHospitalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FindHospitalStateCopyWith<FindHospitalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindHospitalStateCopyWith<$Res> {
  factory $FindHospitalStateCopyWith(
          FindHospitalState value, $Res Function(FindHospitalState) then) =
      _$FindHospitalStateCopyWithImpl<$Res, FindHospitalState>;
  @useResult
  $Res call(
      {String searchHospitalName,
      List<Place> hospitals,
      bool showSearchBar,
      bool showBottomSheet,
      Place? selectName,
      double? distance});

  $PlaceCopyWith<$Res>? get selectName;
}

/// @nodoc
class _$FindHospitalStateCopyWithImpl<$Res, $Val extends FindHospitalState>
    implements $FindHospitalStateCopyWith<$Res> {
  _$FindHospitalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FindHospitalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchHospitalName = null,
    Object? hospitals = null,
    Object? showSearchBar = null,
    Object? showBottomSheet = null,
    Object? selectName = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      searchHospitalName: null == searchHospitalName
          ? _value.searchHospitalName
          : searchHospitalName // ignore: cast_nullable_to_non_nullable
              as String,
      hospitals: null == hospitals
          ? _value.hospitals
          : hospitals // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      showSearchBar: null == showSearchBar
          ? _value.showSearchBar
          : showSearchBar // ignore: cast_nullable_to_non_nullable
              as bool,
      showBottomSheet: null == showBottomSheet
          ? _value.showBottomSheet
          : showBottomSheet // ignore: cast_nullable_to_non_nullable
              as bool,
      selectName: freezed == selectName
          ? _value.selectName
          : selectName // ignore: cast_nullable_to_non_nullable
              as Place?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of FindHospitalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res>? get selectName {
    if (_value.selectName == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.selectName!, (value) {
      return _then(_value.copyWith(selectName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FindHospitalStateImplCopyWith<$Res>
    implements $FindHospitalStateCopyWith<$Res> {
  factory _$$FindHospitalStateImplCopyWith(_$FindHospitalStateImpl value,
          $Res Function(_$FindHospitalStateImpl) then) =
      __$$FindHospitalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String searchHospitalName,
      List<Place> hospitals,
      bool showSearchBar,
      bool showBottomSheet,
      Place? selectName,
      double? distance});

  @override
  $PlaceCopyWith<$Res>? get selectName;
}

/// @nodoc
class __$$FindHospitalStateImplCopyWithImpl<$Res>
    extends _$FindHospitalStateCopyWithImpl<$Res, _$FindHospitalStateImpl>
    implements _$$FindHospitalStateImplCopyWith<$Res> {
  __$$FindHospitalStateImplCopyWithImpl(_$FindHospitalStateImpl _value,
      $Res Function(_$FindHospitalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FindHospitalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchHospitalName = null,
    Object? hospitals = null,
    Object? showSearchBar = null,
    Object? showBottomSheet = null,
    Object? selectName = freezed,
    Object? distance = freezed,
  }) {
    return _then(_$FindHospitalStateImpl(
      searchHospitalName: null == searchHospitalName
          ? _value.searchHospitalName
          : searchHospitalName // ignore: cast_nullable_to_non_nullable
              as String,
      hospitals: null == hospitals
          ? _value._hospitals
          : hospitals // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      showSearchBar: null == showSearchBar
          ? _value.showSearchBar
          : showSearchBar // ignore: cast_nullable_to_non_nullable
              as bool,
      showBottomSheet: null == showBottomSheet
          ? _value.showBottomSheet
          : showBottomSheet // ignore: cast_nullable_to_non_nullable
              as bool,
      selectName: freezed == selectName
          ? _value.selectName
          : selectName // ignore: cast_nullable_to_non_nullable
              as Place?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$FindHospitalStateImpl implements _FindHospitalState {
  const _$FindHospitalStateImpl(
      {this.searchHospitalName = '',
      final List<Place> hospitals = const [],
      this.showSearchBar = false,
      this.showBottomSheet = false,
      this.selectName,
      this.distance})
      : _hospitals = hospitals;

//검색한 병원 이름
  @override
  @JsonKey()
  final String searchHospitalName;
//병원 목록
  final List<Place> _hospitals;
//병원 목록
  @override
  @JsonKey()
  List<Place> get hospitals {
    if (_hospitals is EqualUnmodifiableListView) return _hospitals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hospitals);
  }

//검색 목록창 on off 상태
  @override
  @JsonKey()
  final bool showSearchBar;
//바텀 시트 on off 상태
  @override
  @JsonKey()
  final bool showBottomSheet;
  @override
  final Place? selectName;
  @override
  final double? distance;

  @override
  String toString() {
    return 'FindHospitalState(searchHospitalName: $searchHospitalName, hospitals: $hospitals, showSearchBar: $showSearchBar, showBottomSheet: $showBottomSheet, selectName: $selectName, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindHospitalStateImpl &&
            (identical(other.searchHospitalName, searchHospitalName) ||
                other.searchHospitalName == searchHospitalName) &&
            const DeepCollectionEquality()
                .equals(other._hospitals, _hospitals) &&
            (identical(other.showSearchBar, showSearchBar) ||
                other.showSearchBar == showSearchBar) &&
            (identical(other.showBottomSheet, showBottomSheet) ||
                other.showBottomSheet == showBottomSheet) &&
            (identical(other.selectName, selectName) ||
                other.selectName == selectName) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchHospitalName,
      const DeepCollectionEquality().hash(_hospitals),
      showSearchBar,
      showBottomSheet,
      selectName,
      distance);

  /// Create a copy of FindHospitalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindHospitalStateImplCopyWith<_$FindHospitalStateImpl> get copyWith =>
      __$$FindHospitalStateImplCopyWithImpl<_$FindHospitalStateImpl>(
          this, _$identity);
}

abstract class _FindHospitalState implements FindHospitalState {
  const factory _FindHospitalState(
      {final String searchHospitalName,
      final List<Place> hospitals,
      final bool showSearchBar,
      final bool showBottomSheet,
      final Place? selectName,
      final double? distance}) = _$FindHospitalStateImpl;

//검색한 병원 이름
  @override
  String get searchHospitalName; //병원 목록
  @override
  List<Place> get hospitals; //검색 목록창 on off 상태
  @override
  bool get showSearchBar; //바텀 시트 on off 상태
  @override
  bool get showBottomSheet;
  @override
  Place? get selectName;
  @override
  double? get distance;

  /// Create a copy of FindHospitalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindHospitalStateImplCopyWith<_$FindHospitalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
