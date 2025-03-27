import 'package:flutter/material.dart';
import 'package:map/app_theme.dart';
import 'package:map/generated/fonts.gen.dart';

class SearchTextFiled extends StatelessWidget {
  final TextEditingController searchController;
  final ValueChanged<String> onSubmitted;
  const SearchTextFiled({super.key, required this.searchController, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 40,
          child: TextField(
            controller: searchController,
            cursorColor: C.primaryInputTxt,
            style: TextStyle(
              fontFamily: Fonts.nanumSquareRound,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: C.primaryInputTxt,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: C.primaryMid03,
              ),
              filled: true,
              fillColor: C.primaryLight02,
              labelText: '동네명 또는 소아과 이름으로 검색',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x00ffffff)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x00ffffff)),
              ),
              focusColor: C.primaryMid03,
              labelStyle: TextStyle(color: C.primaryMid03),
            ),
            onSubmitted:onSubmitted
            // onTap: (){
            //   cubit.showSearchList();
            // },
          ),
        ),
      ),
    );
  }
}
