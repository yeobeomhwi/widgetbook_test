import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:map/app_theme.dart';
import 'package:map/pages/home_pages.dart';
import 'package:map/pages/router.dart';
import 'package:widgetbook/widgetbook.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      directories: [
        WidgetbookCategory(
          name: 'test',
          children: [
            WidgetbookUseCase(
              name: 'doq',
              builder: (context) => ScreenUtilInit(
                designSize: const Size(360, 800),
                minTextAdapt: true,
                splitScreenMode: false,
                builder: (context, child) => MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  theme: AppTheme(context).theme,
                  routerConfig: router,
                  title: 'map',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
