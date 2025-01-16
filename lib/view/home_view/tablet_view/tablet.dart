
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';
import 'package:web/view/home_view/tablet_view/about_tablet.dart';
import 'package:web/view/home_view/tablet_view/home_tablet.dart';
import 'package:web/view/home_view/tablet_view/portfolio_tablet.dart';
import 'package:web/view/home_view/tablet_view/services_tablet.dart';

class HomeViewTablet extends StatefulWidget {
  const HomeViewTablet({super.key});

  @override
  State<HomeViewTablet> createState() => _HomeViewTabletState();
}

class _HomeViewTabletState extends State<HomeViewTablet> {
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
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         Padding(
           padding: EdgeInsets.only(left: width*.1),
           child: Row(children: [
             CustomTextBold(text: 'About'),
             CustomTextBold(text: 'Me.',color: Appcolor.yellow,),
           ],),
         ),
        Row(children: [
          TextButton(
            onPressed: () => _scrollToWidget(_homeKey, 'HOME'),
            child: CustomText(
              text: 'HOME',
              color: _selectedButton == 'HOME' ? Colors.yellow : Appcolor.grey,
            ),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () => _scrollToWidget(_aboutMeKey, 'ABOUT'),
            child: CustomText(
              text: 'ABOUT',
              color: _selectedButton == 'ABOUT' ? Colors.yellow : Appcolor.grey,
            ),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () => _scrollToWidget(_servicesKey, 'SERVICE'),
            child: CustomText(
              text: 'SERVICE',
              color: _selectedButton == 'SERVICE' ? Colors.yellow : Appcolor.grey,
            ),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () => _scrollToWidget(_portfolioKey, 'PORTFOLIO'),
            child: CustomText(
              text: 'PORTFOLIO',
              color: _selectedButton == 'PORTFOLIO' ? Colors.yellow : Appcolor.grey,
            ),
          ),
        ],)
        ],),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              key: _homeKey,
              child: HomeTablet(),
            ),
            SizedBox(height: 30),
            Container(
              key: _aboutMeKey,
              child: AboutMeTablet(),
            ),
            SizedBox(height: 30),
            Container(
              key: _servicesKey,
              child: ServicesTablet(),
            ),
            SizedBox(height: 30),
            Container(
              key: _portfolioKey,
              child: PortfolioTablet(),
            ),
          ],
        ),
      ),
    );
  }
}

