import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:map/model/place.dart';
import 'package:xml2json/xml2json.dart';
import '../../service/place_api.dart';
import 'package:geolocator/geolocator.dart';

part 'find_hospital_state.dart';

part 'find_hospital_cubit.freezed.dart';

@injectable
class FindHospitalCubit extends Cubit<FindHospitalState> {
  FindHospitalCubit() : super(FindHospitalState());

  final ApiService apiService = ApiService();
  Set<NClusterableMarker> markers = {};

  void showSearchList() => emit(state.copyWith(showSearchBar: true));

  void hideSearchList() => emit(state.copyWith(showSearchBar: false));

  void showBottomSheet() => emit(state.copyWith(showBottomSheet: true));

  void hideBottomSheet() => emit(state.copyWith(showBottomSheet: false));

  // 병원 검색
  void searchHospital(
      String searchHospitalName, NaverMapController controller) async {
    if (searchHospitalName.isEmpty) return;

    emit(state.copyWith(searchHospitalName: searchHospitalName));

    try {
      final hospitalsXml =
          await apiService.getPlaces(query: searchHospitalName);

      final myTransformer = Xml2Json();
      myTransformer.parse(hospitalsXml);
      final json = jsonDecode(myTransformer.toOpenRally());

      final items = json['response']['body']['items']['item'];
      final List<Place> hospitalsJson = items is List
          ? items.map<Place>((item) => Place.fromJson(item)).toList()
          : [Place.fromJson(Map<String, dynamic>.from(items))];

      emit(state.copyWith(hospitals: hospitalsJson));

      showSearchList();
      markHospitalsOnMap(controller);
    } catch (e) {
      print('병원 검색 중 오류 발생: $e');
    }
  }

  // 마커를 클릭하면 moveCamera를 호출하도록 수정
  void markHospitalsOnMap(NaverMapController controller) {
    controller.clearOverlays();
    const double offset = 0.00005;

    for (var hospital in state.hospitals) {
      double latitude = double.parse(hospital.YPos);
      double longitude = double.parse(hospital.XPos);

      // 기존 마커가 같은 위치에 있다면 살짝 이동
      if (markers.any((marker) =>
          marker.position.latitude == latitude &&
          marker.position.longitude == longitude)) {
        longitude += offset;
      }

      final marker = NClusterableMarker(
        icon: NOverlayImage.fromAssetImage('assets/images/map_hospital_sm.png'),
        id: hospital.yadmNm,
        position: NLatLng(latitude, longitude),
      );
      marker.setOnTapListener(
        (marker) {
          print('큐빗 클릭');
          moveCamera(hospital, controller);
        },
      );
      markers.add(marker);
    }

    controller.addOverlayAll(markers.toSet());
  }

  // 마커 클릭시 카메라 이동
  void moveCamera(Place hospital, NaverMapController controller) {
    distance(hospital);
    emit(state.copyWith(selectName: hospital));

    print('moveCamera emit!');

    // 카메라 이동
    controller.updateCamera(
      NCameraUpdate.scrollAndZoomTo(
        target: NLatLng(
          double.parse(hospital.YPos),
          double.parse(hospital.XPos),
        ),
        zoom: 17,
      ),
    );

    // 검색 목록 숨기기
    hideSearchList();
  }



  void distance(Place hospital) async {
    try {
      // 현재 위치 가져오기
      Position position = await Geolocator.getCurrentPosition();
      print(position);

      double currentLat = position.latitude;
      double currentLon = position.longitude;

      var latLng = NLatLng(currentLat, currentLon);
      final targetLatLng = NLatLng(double.parse(hospital.YPos), double.parse(hospital.XPos));

      final distance = latLng.distanceTo(targetLatLng);
      print(distance.toInt());

      final updatedPlace = hospital.copyWith(distance: distance);

      emit(state.copyWith(selectName: updatedPlace));
    } catch (e) {
      print('5');
      print('거리 계산 오류: $e');
    }
  }

}
