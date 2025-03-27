import 'dart:io';

import 'package:dio/dio.dart';
import 'package:map/service/retrofit.dart';
import 'package:retrofit/http.dart';

import '../../model/place.dart';

class ApiService {
  late PlaceApi placeApi;

  ApiService() {
    final dio = Dio();
    placeApi = PlaceApi(dio);
  }

  Future<String> getPlaces({
    required String query,
  }) async {
    const String serviceKey =
        "TOlfl5zsDX0idc1uqdtoVkQkk7oSlUV+Mqks/OYbEuYjRtgy8j+4Vv4rrFOFQm9YHCIOlPr91KwSNqe0yJrSEg==";
    try {
      // API 호출 후 결과를 await로 받아오기
      final response = await placeApi.searchPlaces(
        serviceKey: serviceKey,
        dgsbjtCd: 11,
        yadmNm: query,
        numOfRows: 15,
        pageNo: '1',
      );
      return response; // 응답을 반환
    } catch (e) {
      // 에러 발생 시, DioException을 구체적으로 처리
      if (e is DioException) {
        print(
            "Dio 오류: ${e.response?.statusCode} - ${e.response?.statusMessage}");
      } else {
        print("에러: $e");
      }
      return ""; // 에러 발생 시 빈 문자열 반환
    }
  }
}
