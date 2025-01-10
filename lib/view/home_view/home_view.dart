import 'package:flutter/material.dart';
import 'package:web/components/responsive_components/responsive_components.dart';
import 'package:web/view/home_view/mobile_view/mobile.dart';
import 'package:web/view/home_view/tablet_view/tablet.dart';
import 'package:web/view/home_view/windows_view/windows.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayOut
        (mobile: const HomeViewMobile(),
          tablet: const HomeViewTablet(),
          windows: const HomeViewWindows(),
      ),
    );
  }
}
