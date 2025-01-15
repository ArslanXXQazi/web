import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';
import 'package:web/view/home_view/mobile_view/home_mobile.dart';
import 'package:web/view/home_view/windows_view/about_me_windows.dart';
import 'package:web/view/home_view/windows_view/main_home_view_windows.dart';
import 'package:web/view/home_view/windows_view/portfolio_windows.dart';
import 'package:web/view/home_view/windows_view/services_windows.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({super.key});

  @override
  State<HomeViewMobile> createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
  final ScrollController _scrollController = ScrollController();

  // Global keys for widgets
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutMeKey = GlobalKey();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _portfolioKey = GlobalKey();

  // Variable to track the selected button
  String _selectedButton = 'HOME';

  void _scrollToWidget(GlobalKey key, String buttonName) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
    setState(() {
      _selectedButton = buttonName; // Update the selected button
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Appcolor.darkBlue,
      appBar: AppBar(
        backgroundColor: Appcolor.darkBlue,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            CustomTextBold(text: 'About'),
            CustomTextBold(text: 'Me.',color: Appcolor.yellow,),

            TextButton(
              onPressed: () => _scrollToWidget(_homeKey, 'HOME'),
              child: CustomText(
                text: 'HOME',
                color: _selectedButton == 'HOME' ? Colors.yellow : Appcolor.grey,
              ),
            ),

            TextButton(
              onPressed: () => _scrollToWidget(_aboutMeKey, 'ABOUT'),
              child: CustomText(
                text: 'ABOUT',
                color: _selectedButton == 'ABOUT' ? Colors.yellow : Appcolor.grey,
              ),
            ),

            TextButton(
              onPressed: () => _scrollToWidget(_servicesKey, 'SERVICE'),
              child: CustomText(
                text: 'SERVICE',
                color: _selectedButton == 'SERVICE' ? Colors.yellow : Appcolor.grey,
              ),
            ),

            TextButton(
              onPressed: () => _scrollToWidget(_portfolioKey, 'PORTFOLIO'),
              child: CustomText(
                text: 'PORTFOLIO',
                color: _selectedButton == 'PORTFOLIO' ? Colors.yellow : Appcolor.grey,
              ),
            ),
          ],),
        ),
        actions: [


        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              key: _homeKey,
              child: HomeMobile(),
            ),
            SizedBox(height: 30),
            Container(
              key: _aboutMeKey,
              child: AboutMe(),
            ),
            SizedBox(height: 30),
            Container(
              key: _servicesKey,
              child: Services(),
            ),
            SizedBox(height: 30),
            Container(
              key: _portfolioKey,
              child: Portfolio(),
            ),
          ],
        ),
      ),
    );
  }
}
