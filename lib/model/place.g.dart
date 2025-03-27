// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceImpl _$$PlaceImplFromJson(Map<String, dynamic> json) => _$PlaceImpl(
      addr: json['addr'] as String,
      hospUrl: json['hospUrl'] as String?,
      yadmNm: json['yadmNm'] as String,
      telno: json['telno'] as String?,
      XPos: json['XPos'] as String,
      YPos: json['YPos'] as String,
      mdeptSdrCnt: json['mdeptSdrCnt'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'addr': instance.addr,
      'hospUrl': instance.hospUrl,
      'yadmNm': instance.yadmNm,
      'telno': instance.telno,
      'XPos': instance.XPos,
      'YPos': instance.YPos,
      'mdeptSdrCnt': instance.mdeptSdrCnt,
      'distance': instance.distance,
    };
