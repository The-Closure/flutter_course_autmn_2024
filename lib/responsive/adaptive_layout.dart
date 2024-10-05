import 'package:flutter/material.dart';

import 'desktop_layout.dart';
import 'mobile_layout.dart';
import 'tablet_layout.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const MobileLayout();
          } else if (constraints.maxWidth < 840) {
            return const TabletLayout();
          } else {
            return const DesktopLayout();
          }
        },
      ),
    );
  }
}
