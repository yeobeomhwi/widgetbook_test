import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'retrofit.g.dart';

@RestApi(baseUrl: "http://apis.data.go.kr/B551182/hospInfoServicev2")
abstract class PlaceApi {
  factory PlaceApi(Dio dio, {String baseUrl}) = _PlaceApi;

  @GET("/getHospBasisList")
  Future<String> searchPlaces({
    @Query("ServiceKey") required String serviceKey, //서비스키
    @Query("dgsbjtCd") required int dgsbjtCd, //진료코드
    @Query("yadmNm") required String yadmNm, //병원명
    @Query("numOfRows")  required int numOfRows, //한페이지 결과수 (기본값 15?)
    @Query("pageNo") required String pageNo // 페이지번호 (페이지 넘길수있게?)
  });
}
