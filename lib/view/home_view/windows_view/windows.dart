// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:web/components/constant/colors.dart';
// import 'package:web/components/custom_text/custom_text.dart';
// import 'package:web/view/home_view/windows_view/about_me.dart';
// import 'package:web/view/home_view/windows_view/main_home_view.dart';
// import 'package:web/view/home_view/windows_view/portfolio.dart';
// import 'package:web/view/home_view/windows_view/services.dart';
//
//
// class HomeViewWindows extends StatelessWidget {
//   const HomeViewWindows({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double width=MediaQuery.of(context).size.width;
//     double height=MediaQuery.of(context).size.height;
//     return  Scaffold(
//       backgroundColor: Appcolor.darkBlue,
//       appBar: AppBar(
//         backgroundColor: Appcolor.darkBlue,
//         title: Row(children: [
//           SizedBox(width: width*.11,),
//           CustomTextBold(text: 'About'),
//           CustomTextBold(text: 'Me.',color: Appcolor.yellow),
//         ],),
//         actions: [
//           TextButton(
//             onPressed: () {
//               // Add your functionality for 'HOME' here
//             },
//             child: CustomText(text: 'HOME'),
//           ),
//           SizedBox(width: width * 0.009),
//           TextButton(
//             onPressed: () {
//               // Add your functionality for 'ABOUT' here
//             },
//             child: CustomText(text: 'ABOUT', color: Appcolor.grey),
//           ),
//           SizedBox(width: width * 0.009),
//           TextButton(
//             onPressed: () {
//               // Add your functionality for 'SERVICE' here
//             },
//             child: CustomText(text: 'SERVICE', color: Appcolor.grey),
//           ),
//           SizedBox(width: width * 0.009),
//           TextButton(
//             onPressed: () {
//               // Add your functionality for 'PORTFOLIO' here
//             },
//             child: CustomText(text: 'PORTFOLIO', color: Appcolor.grey),
//           ),
//           SizedBox(width: width * 0.009),
//           TextButton(
//             onPressed: () {
//               // Add your functionality for 'RESUME' here
//             },
//             child: CustomText(text: 'RESUME', color: Appcolor.grey),
//           ),
//           SizedBox(width: width * 0.009),
//           TextButton(
//             onPressed: () {
//               // Add your functionality for 'BLOG' here
//             },
//             child: CustomText(text: 'BLOG', color: Appcolor.grey),
//           ),
//           SizedBox(width: width * 0.009),
//           TextButton(
//             onPressed: () {
//               // Add your functionality for 'CONTACT' here
//             },
//             child: CustomText(text: 'CONTACT', color: Appcolor.grey),
//           ),
//           SizedBox(width: width * 0.08),
//         ],
//       ),
//       body:  SingleChildScrollView(
//         child: Column(
//           children: [
//             MainHomeView(),
//             SizedBox(height: 30,),
//             AboutMe(),
//             SizedBox(height: 30,),
//             Services(),
//             SizedBox(height: 30,),
//             Portfolio(),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:web/components/constant/colors.dart';
// import 'package:web/components/custom_text/custom_text.dart';
// import 'package:web/view/home_view/windows_view/about_me.dart';
// import 'package:web/view/home_view/windows_view/main_home_view.dart';
// import 'package:web/view/home_view/windows_view/portfolio.dart';
// import 'package:web/view/home_view/windows_view/services.dart';
//
// class HomeViewWindows extends StatefulWidget {
//   const HomeViewWindows({super.key});
//
//   @override
//   State<HomeViewWindows> createState() => _HomeViewWindowsState();
// }
//
// class _HomeViewWindowsState extends State<HomeViewWindows> {
//   final ScrollController _scrollController = ScrollController();
//
//   // Global keys for widgets
//   final GlobalKey _homeKey = GlobalKey();
//   final GlobalKey _aboutMeKey = GlobalKey();
//   final GlobalKey _servicesKey = GlobalKey();
//   final GlobalKey _portfolioKey = GlobalKey();
//
//   void _scrollToWidget(GlobalKey key) {
//     final context = key.currentContext;
//     if (context != null) {
//       Scrollable.ensureVisible(
//         context,
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       backgroundColor: Appcolor.darkBlue,
//       appBar: AppBar(
//         backgroundColor: Appcolor.darkBlue,
//         title: Row(
//           children: [
//             SizedBox(width: width * .11),
//             CustomTextBold(text: 'About'),
//             CustomTextBold(text: 'Me.', color: Appcolor.yellow),
//           ],
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => _scrollToWidget(_homeKey),
//             child: CustomText(text: 'HOME'),
//           ),
//           SizedBox(width: width * 0.009),
//           TextButton(
//             onPressed: () => _scrollToWidget(_aboutMeKey),
//             child: CustomText(text: 'ABOUT', color: Appcolor.grey),
//           ),
//           SizedBox(width: width * 0.009),
//           TextButton(
//             onPressed: () => _scrollToWidget(_servicesKey),
//             child: CustomText(text: 'SERVICE', color: Appcolor.grey),
//           ),
//           SizedBox(width: width * 0.009),
//           TextButton(
//             onPressed: () => _scrollToWidget(_portfolioKey),
//             child: CustomText(text: 'PORTFOLIO', color: Appcolor.grey),
//           ),
//           SizedBox(width: width * 0.1),
//         ],
//       ),
//       body: SingleChildScrollView(
//         controller: _scrollController,
//         child: Column(
//           children: [
//             Container(
//               key: _homeKey,
//               child: MainHomeView(),
//             ),
//             SizedBox(height: 30),
//             Container(
//               key: _aboutMeKey,
//               child: AboutMe(),
//             ),
//             SizedBox(height: 30),
//             Container(
//               key: _servicesKey,
//               child: Services(),
//             ),
//             SizedBox(height: 30),
//             Container(
//               key: _portfolioKey,
//               child: Portfolio(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';
import 'package:web/view/home_view/windows_view/about_me.dart';
import 'package:web/view/home_view/windows_view/main_home_view.dart';
import 'package:web/view/home_view/windows_view/portfolio.dart';
import 'package:web/view/home_view/windows_view/services.dart';

class HomeViewWindows extends StatefulWidget {
  const HomeViewWindows({super.key});

  @override
  State<HomeViewWindows> createState() => _HomeViewWindowsState();
}

class _HomeViewWindowsState extends State<HomeViewWindows> {
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
        title: Row(
          children: [
            SizedBox(width: width * .11),
            CustomTextBold(text: 'About'),
            CustomTextBold(text: 'Me.', color: Appcolor.yellow),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => _scrollToWidget(_homeKey, 'HOME'),
            child: CustomText(
              text: 'HOME',
              color: _selectedButton == 'HOME' ? Colors.green : Appcolor.grey,
            ),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () => _scrollToWidget(_aboutMeKey, 'ABOUT'),
            child: CustomText(
              text: 'ABOUT',
              color: _selectedButton == 'ABOUT' ? Colors.green : Appcolor.grey,
            ),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () => _scrollToWidget(_servicesKey, 'SERVICE'),
            child: CustomText(
              text: 'SERVICE',
              color: _selectedButton == 'SERVICE' ? Colors.green : Appcolor.grey,
            ),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () => _scrollToWidget(_portfolioKey, 'PORTFOLIO'),
            child: CustomText(
              text: 'PORTFOLIO',
              color: _selectedButton == 'PORTFOLIO' ? Colors.green : Appcolor.grey,
            ),
          ),
          SizedBox(width: width * 0.1),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              key: _homeKey,
              child: MainHomeView(),
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

