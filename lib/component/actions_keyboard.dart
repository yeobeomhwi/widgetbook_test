import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:map/generated/fonts.gen.dart';

import '../app_theme.dart';

class ActionsKeyboard extends StatefulWidget {
  final VoidCallback onTap;

  const ActionsKeyboard({
    super.key,
    required this.onTap,
  });

  @override
  State<ActionsKeyboard> createState() =>
      _ActionsKeyboardState();
}

class _ActionsKeyboardState
    extends State<ActionsKeyboard> {
  final FocusNode _nodeText2 = FocusNode();

  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
      // 키보드 액션을 추가할 플랫폼 설정
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: C.primaryLight02,
      //이전, 다음 텍스트 필드 이동 아이콘 여부
      nextFocus: false,
      actions: [
        KeyboardActionsItem(
          focusNode: _nodeText2,
          toolbarButtons: [
            //button 1
            (node) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: GestureDetector(
                  onTap: () {
                    widget.onTap();
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        child: Image.asset('assets/icons/map.png'),
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        '병원 찾기',
                        style: TextStyle(
                            color: C.primaryHighlight01,
                            fontFamily: Fonts.nanumSquareRound,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              );
            },
            (node) {
              return Expanded(
                child: Container(),
              );
            }
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      //그냥 KeyboardActions만 사용하면 높이값이 무한이라 UI출력에서 에러가 발생.
      child: KeyboardActions(
        config: _buildConfig(context),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextField(
                  focusNode: _nodeText2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "병원명",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
