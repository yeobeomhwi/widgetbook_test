import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:map/app.dart';
import 'package:map/component/search_hospital_list_item.dart';
import 'package:map/component/search_text_filed.dart';
import 'package:map/component/zoom_controller.dart';
import 'package:map/pages/findhospital/find_hospital_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app_theme.dart';
import '../../component/hospital_bottom_sheet.dart';
import '../../generated/fonts.gen.dart';
import '../../model/place.dart';

class FindHospitalPage extends StatelessWidget {
  const FindHospitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FindHospitalCubit(),
      child: _View(),
    );
  }
}

class _View extends StatefulWidget {
  _View({super.key});

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  final searchController = TextEditingController();

  late NaverMapController naverMapController;

  PersistentBottomSheetController? dialog;

  late BuildContext listContext;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindHospitalCubit, FindHospitalState>(
      builder: (context, state) {
        final cubit = context.read<FindHospitalCubit>();

        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(
              '병원 찾기',
              style: TextStyle(
                  color: C.primaryHighlight01,
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            ),
            backgroundColor: C.containerBg1,
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  SearchTextFiled(
                    searchController: searchController,
                    onSubmitted: (text) {
                      cubit.searchHospital(text, naverMapController);
                    },
                  ),
                  Expanded(
                    child: NaverMap(
                      options: const NaverMapViewOptions(
                        mapType: NMapType.basic,
                        scaleBarEnable: true,
                        locationButtonEnable: true,
                        logoClickEnable: true,
                        locale: NLocale.systemLocale,
                      ),
                      onMapReady: (controller) async {
                        // 지도 초기 진입시 현재위치 추적모드로 설정
                        naverMapController = controller;
                        naverMapController.setLocationTrackingMode(
                            NLocationTrackingMode.follow);
                      },
                      clusterOptions: NaverMapClusteringOptions(
                        enableZoomRange: NInclusiveRange(0, 16),
                        animationDuration: Duration(milliseconds: 0),
                      ),
                    ),
                  ),
                ],
              ),
              if (state.showSearchBar == true)
                Positioned(
                  top: 65, // 검색창 아래 위치
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          cubit.hideSearchList();
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height -
                              65, // 화면 전체를 가리기 위해
                          color: Colors.black.withOpacity(0.5), // 반투명 검은색 배경
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300, // 리스트뷰 높이 제한
                        decoration: BoxDecoration(color: C.containerBg1),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 12, bottom: 36),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.hospitals.length,
                            itemBuilder: (context, index) {
                              listContext = context;
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SearchHospitalListItem(
                                    hospitals: state.hospitals[index],
                                    onTap: () {
                                      cubit.distance(state.hospitals[index]);
                                      cubit.moveCamera(state.hospitals[index],
                                          naverMapController);
                                      final nextState = context
                                          .read<FindHospitalCubit>()
                                          .state;

                                      if (nextState.selectName != null) {
                                        Scaffold.of(context).showBottomSheet(
                                          showDragHandle: true,
                                          (context) {
                                            return BlocBuilder<
                                                FindHospitalCubit,
                                                FindHospitalState>(
                                              builder: (context, state) {
                                                return HospitalBottomSheet(
                                                    place: state.selectName!);
                                              },
                                            );
                                          },
                                        );
                                      }
                                    },
                                  ),
                                  Divider(),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ZoomController(
                onZoomIn: () {
                  naverMapController?.updateCamera(
                    NCameraUpdate.zoomIn(),
                  );
                },
                onZoomOut: () {
                  naverMapController?.updateCamera(
                    NCameraUpdate.zoomOut(),
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}
