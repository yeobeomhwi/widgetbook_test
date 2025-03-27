import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:map/model/place.dart';

import '../app_theme.dart';
import '../generated/fonts.gen.dart';
import '../model/place.dart';

class HospitalBottomSheet extends StatelessWidget {
  final Place place;

  const HospitalBottomSheet({super.key, required this.place});

  @override
  Widget build(BuildContext context) {

    // 거리계산

    return Container(
      height: 231,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildStatus(),
            _buildHospitalName(),
            _buildDistanceAndAddress(),
            _buildHolidayInfo(),
            const Divider(),
            _buildSelectButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatus() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 54.w,
          height: 22.h,
          decoration: BoxDecoration(
            color: C.containerBt1On,
            borderRadius: BorderRadius.circular(5), // Optional: adding rounded corners
          ),
          alignment: Alignment.center, // Center the text inside the container
          child: Text(
            '진료중',
            style: TextStyle(
              fontFamily: Fonts.nanumSquareRound,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Ensure text is readable
            ),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }


  // 병원 이름
  Widget _buildHospitalName() {
    return Text(
      place.yadmNm ?? '',
      style: TextStyle(
        fontFamily: Fonts.nanumSquareRound,
        fontSize: 18,
        fontWeight: FontWeight.w800,
        color: C.primaryHighlight01,
      ),
    );
  }

  //거리 주소
  Widget _buildDistanceAndAddress() {
    return Column(
      children: [
        const SizedBox(height: 14),
        Row(
          children: [
            Text(
              '${place.distance!.toStringAsFixed(0)}m' ?? '',
              style: TextStyle(
                fontFamily: Fonts.nanumSquareRound,
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: C.primaryHighlight02,
              ),
            ),
            SizedBox(width: 11.w),
            Expanded(
              child: Text(
               place.addr ?? '',
                style: TextStyle(
                  color: C.primaryMid01,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: Fonts.nanumSquareRound,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(height: 9),
      ],
    );
  }

  //휴무일
  Widget _buildHolidayInfo() {
    return Row(
      children: [
        const Icon(Icons.add),
        const Text('매주 일요일, 공유일 휴무'),
      ],
    );
  }

  // 병원 선택 버튼
  Widget _buildSelectButton() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: C.containerBt1On),
            onPressed: () {},
            child: Text(
              '병원 선택',
              style: TextStyle(
                color: C.containerBg1,
                fontFamily: Fonts.nanumSquareRound,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
