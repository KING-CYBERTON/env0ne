import 'package:coolapp/envResponse/enviroment.dart';
import 'package:coolapp/envResponse/layouts.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';

void main() => runApp(
  DevicePreview(
    //enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "coolapp",
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      getPages: [
        GetPage(name: '/platformEvn', page: ()=> const EvnPlaform(WebviewEvn: Webview(), MObileviewEvn: MobileView()))
      ],
      initialRoute: '/platformEvn',
    );
  }
}




