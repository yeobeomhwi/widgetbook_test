part of 'find_hospital_cubit.dart';

@freezed
class FindHospitalState with _$FindHospitalState {
  const factory FindHospitalState({
    //검색한 병원 이름
    @Default('') String searchHospitalName,
    //병원 목록
    @Default([])  List<Place> hospitals,
    //검색 목록창 on off 상태
    @Default(false) bool showSearchBar,
    //바텀 시트 on off 상태
    @Default(false) bool showBottomSheet,

    Place? selectName,

    double? distance,
}) = _FindHospitalState;

}