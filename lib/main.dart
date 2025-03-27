import 'package:flutter/cupertino.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:permission_handler/permission_handler.dart';

import 'app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await NaverMapSdk.instance.initialize(
      clientId: 'uqiizix3vz',
      onAuthFailed: (ex) {
        print("********* 네이버맵 인증오류 : $ex *********");
      });

  var requestStatus = await Permission.location.request();
  var status = await Permission.location.status;
  if (requestStatus.isPermanentlyDenied || status.isPermanentlyDenied) {
    openAppSettings();
  }

  runApp(App());
}