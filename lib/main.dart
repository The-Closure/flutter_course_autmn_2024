import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_session/responsive/adaptive_layout.dart';

import 'view/responsive_page.dart';
import 'view/responsive_widgets_page.dart';

main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return const MyApp();
      }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const AdaptiveLayout(),
    );
  }
}
