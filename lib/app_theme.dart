import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'generated/fonts.gen.dart';

late AppText T;
late AppColor C;

class AppTheme {
  BuildContext context;

  AppTheme(this.context) {
    T = AppText(this);
    C = AppColor.basic();
  }

  ThemeData get theme => ThemeData(
        primaryColor: const Color(0xffE5954B),
        primaryColorLight: const Color(0xffBFB2AA),
        primaryColorDark: const Color(0xff8D7566),
        brightness: Brightness.light,
        textTheme: textTheme,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xffE5954B),
        ),
        scaffoldBackgroundColor: C.containerBg1,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          },
        ),
        bottomSheetTheme:
            BottomSheetThemeData(dragHandleColor: C.primaryLight01, backgroundColor: C.sysWhite),
      );

  TextStyle _defaultText({TextStyle? textStyle}) =>
      GoogleFonts.notoSans(textStyle: textStyle)
          .copyWith(fontFamily: Fonts.nanumSquareRound);

  TextTheme get textTheme => TextTheme(
        // 57, regular
        displayLarge:
            _defaultText(textStyle: Theme.of(context).textTheme.displayLarge),
        // 45, regular
        displayMedium:
            _defaultText(textStyle: Theme.of(context).textTheme.displayMedium)
                .copyWith(
          fontSize: scaledFontSize(21, maxFontSize: 24),
          fontWeight: FontWeight.w800,
        ),
        // 36, regular
        displaySmall:
            _defaultText(textStyle: Theme.of(context).textTheme.displaySmall)
                .copyWith(
          fontSize: scaledFontSize(16, maxFontSize: 18),
          fontWeight: FontWeight.w800,
        ),
        // 32, regular
        headlineLarge:
            _defaultText(textStyle: Theme.of(context).textTheme.headlineLarge)
                .copyWith(
          // fontSize: scaledFontSize(18, maxFontSize: 24),
          fontSize: scaledFontSize(19, maxFontSize: 25),
          fontWeight: FontWeight.w800,
        ),
        // 28, regular
        headlineMedium:
            _defaultText(textStyle: Theme.of(context).textTheme.headlineMedium)
                .copyWith(
          // fontSize: scaledFontSize(15, maxFontSize: 18),
          fontSize: scaledFontSize(16, maxFontSize: 19),
          fontWeight: FontWeight.w800,
          // fontSize: 30.sp,
          // fontWeight: FontWeight.w400,
        ),
        // 24, regular
        headlineSmall:
            _defaultText(textStyle: Theme.of(context).textTheme.headlineSmall),
        // 22, medium
        titleLarge:
            _defaultText(textStyle: Theme.of(context).textTheme.titleLarge),
        // 16, medium
        titleMedium:
            _defaultText(textStyle: Theme.of(context).textTheme.titleMedium),
        // 14, medium
        titleSmall:
            _defaultText(textStyle: Theme.of(context).textTheme.titleSmall)
                .copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 14.sp,
        ),
        // 16, regular
        bodyLarge:
            _defaultText(textStyle: Theme.of(context).textTheme.bodyLarge)
                .copyWith(
          fontWeight: FontWeight.w700,
          fontSize: scaledFontSize(14, maxFontSize: 16),
        ),
        // 14, regular
        bodyMedium:
            _defaultText(textStyle: Theme.of(context).textTheme.bodyMedium)
                .copyWith(
          fontWeight: FontWeight.w500,
          // fontSize: scaledFontSize(14, maxFontSize: 16),
          fontSize: scaledFontSize(15, maxFontSize: 17),
        ),
        // 12, regular
        bodySmall:
            _defaultText(textStyle: Theme.of(context).textTheme.bodySmall)
                .copyWith(
          // fontSize: scaledFontSize(12, maxFontSize: 14),
          fontSize: scaledFontSize(13, maxFontSize: 15),
          fontWeight: FontWeight.w400,
        ),
        // 14, medium
        labelLarge:
            _defaultText(textStyle: Theme.of(context).textTheme.labelLarge)
                .copyWith(
          // fontSize: scaledFontSize(14, maxFontSize: 16),
          fontSize: scaledFontSize(15, maxFontSize: 17),
          fontWeight: FontWeight.w700,
        ),
        // 12, medium
        labelMedium:
            _defaultText(textStyle: Theme.of(context).textTheme.labelMedium)
                .copyWith(
          // fontSize: scaledFontSize(13, maxFontSize: 15),
          fontSize: scaledFontSize(14, maxFontSize: 16),
          fontWeight: FontWeight.w700,
        ),
        // 11, medium
        labelSmall:
            _defaultText(textStyle: Theme.of(context).textTheme.labelSmall)
                .copyWith(
          // fontSize: scaledFontSize(12, maxFontSize: 14),
          fontSize: scaledFontSize(13, maxFontSize: 15),
          fontWeight: FontWeight.w400,
        ),
      );
}

class AppText {
  final AppTheme _theme;

  AppText(this._theme);

  String get kRoboto => Fonts.roboto;

  String get kNanum => Fonts.nanumSquareRound;

  TextStyleSet get label => TextStyleSet(
        _theme.textTheme.labelSmall!,
        _theme.textTheme.labelMedium!,
        _theme.textTheme.labelLarge!,
      );

  TextStyleSet get body => TextStyleSet(
        _theme.textTheme.bodySmall!,
        _theme.textTheme.bodyMedium!,
        _theme.textTheme.bodyLarge!,
      );

  TextStyleSet get title => TextStyleSet(
        _theme.textTheme.titleSmall!,
        _theme.textTheme.titleMedium!,
        _theme.textTheme.titleLarge!,
      );

  TextStyleSet get headline => TextStyleSet(
        _theme.textTheme.headlineSmall!,
        _theme.textTheme.headlineMedium!,
        _theme.textTheme.headlineLarge!,
      );

  TextStyleSet get display => TextStyleSet(
        _theme.textTheme.displaySmall!,
        _theme.textTheme.displayMedium!,
        _theme.textTheme.displayLarge!,
      );
}

class TextStyleSet {
  final TextStyle s;
  final TextStyle m;
  final TextStyle l;

  TextStyleSet(this.s, this.m, this.l);
}

class AppColor {
  final Color sysWhite;
  final Color sysField;
  final Color containerBg1;
  final Color containerBg2;
  final Color containerBt1On;
  final Color containerBt1Off;
  final Color containerBgLight;
  final Color containerNvBg;

  final Color primaryHighlight01;
  final Color primaryHighlight02;
  final Color primaryMid01;
  final Color primaryMid02;
  final Color primaryMid03;
  final Color primaryLight01;

  final Color error;
  final Color divider;
  final Color primaryInputTxt;
  final Color inputTxt;
  final Color day;
  final Color disableButtonColor;
  final Color disableButtonTextColor;
  final Color modalNoBtn;
  final Color underlineColor;
  final Color primaryLight02;
  final Color incompleteColor;

  AppColor({
    required this.sysWhite,
    required this.sysField,
    required this.containerBg1,
    required this.containerBg2,
    required this.containerBt1On,
    required this.containerBt1Off,
    required this.containerBgLight,
    required this.containerNvBg,
    required this.primaryHighlight01,
    required this.primaryHighlight02,
    required this.primaryMid01,
    required this.primaryMid02,
    required this.primaryMid03,
    required this.primaryLight01,
    required this.error,
    required this.divider,
    required this.primaryInputTxt,
    required this.inputTxt,
    required this.day,
    required this.modalNoBtn,
    required this.underlineColor,
    required this.primaryLight02,
    required this.disableButtonColor,
    required this.disableButtonTextColor,
    required this.incompleteColor,
  });

  factory AppColor.basic() {
    return AppColor(
      /// ================== sys ======================
      sysWhite: const Color(0xFFFFFFFF),
      sysField: const Color(0xFFF3F3F3),

      /// =============================================

      /// ============== Container ====================
      containerBg1: const Color(0xffF9F5EE),
      containerBg2: const Color(0xFFFBF8F0),
      containerBt1On: const Color(0xffE5954B),
      containerBt1Off: const Color(0xffEBDEC8),
      containerBgLight: const Color(0xFFFFFDFA),
      containerNvBg: const Color(0xFFC9B69C),

      /// =============================================

      /// ================ Primary ====================

      primaryHighlight01: const Color(0xFF7A5B5B),
      primaryHighlight02: const Color(0xFF8d7566),
      primaryInputTxt: const Color(0xff726654),
      primaryMid01: const Color(0xFFBBA98B),
      primaryMid02: const Color(0xFFD8CBC0),
      primaryMid03: const Color(0xFFC5BBB7),
      primaryLight01: const Color(0xFFDFD7C7),
      primaryLight02: const Color(0xFFF0ECE0),

      /// =============================================
      error: Colors.red,

      divider: const Color(0xffE1D9CC),
      inputTxt: const Color(0xff7A6356),
      day: const Color(0xFFa47983),
      modalNoBtn: const Color(0xFFb4a69f),
      underlineColor: const Color(0xFFE1D9CC),
      disableButtonColor: const Color(0xFFEBDEC8),
      disableButtonTextColor: const Color(0xFFF9F5EE),
      incompleteColor: const Color(0xFFE37B7B),
    );
  }

  static const Color kakao = Color(0xffF2CD49);
  static const Color kakaoText = Color(0xff371D1E);
  static const Color naver = Color(0xff03C75A);
}

double scaledFontSize(double fontSize, {double maxFontSize = double.infinity}) {
  double scaledSize = fontSize.sp;
  return scaledSize > maxFontSize ? maxFontSize : scaledSize;
}
