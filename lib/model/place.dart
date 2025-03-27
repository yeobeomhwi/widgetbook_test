import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  factory Place({
    required String addr, // 병원주소 (nullable)
    required String? hospUrl, // 병원 홈페이지 (nullable)
    required String yadmNm, //병원명 (nullable)
    required String? telno, //전화번호 (nullable)
    required String XPos, //X 좌표 (nullable)
    required String YPos, //Y 좌표 (nullable)
    required String? mdeptSdrCnt, //전문의 수 (nullable)
    required double? distance,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
