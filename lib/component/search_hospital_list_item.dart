import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_theme.dart';
import '../generated/fonts.gen.dart';
import '../model/place.dart';

class SearchHospitalListItem extends StatelessWidget {
  final Place hospitals;
  final VoidCallback onTap;
  const SearchHospitalListItem({super.key, required this.hospitals, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: C.containerBg1,
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Text(
              hospitals.yadmNm,
              style: TextStyle(
                color: C.primaryHighlight01,
                fontFamily:
                Fonts.nanumSquareRound,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              hospitals.addr,
              style: TextStyle(
                color: C.primaryMid01,
                fontFamily:
                Fonts.nanumSquareRound,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
