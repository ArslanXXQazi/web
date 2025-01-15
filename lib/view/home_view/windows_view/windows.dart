import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';
import 'package:web/view/home_view/windows_view/about_me.dart';
import 'package:web/view/home_view/windows_view/main_home_view.dart';
import 'package:web/view/home_view/windows_view/services.dart';


class HomeViewWindows extends StatelessWidget {
  const HomeViewWindows({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Appcolor.darkBlue,
      appBar: AppBar(
        backgroundColor: Appcolor.darkBlue,
        title: Row(children: [
          SizedBox(width: width*.11,),
          CustomTextBold(text: 'About'),
          CustomTextBold(text: 'Me.',color: Appcolor.yellow),
        ],),
        actions: [
          TextButton(
            onPressed: () {
              // Add your functionality for 'HOME' here
            },
            child: CustomText(text: 'HOME'),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () {
              // Add your functionality for 'ABOUT' here
            },
            child: CustomText(text: 'ABOUT', color: Appcolor.grey),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () {
              // Add your functionality for 'SERVICE' here
            },
            child: CustomText(text: 'SERVICE', color: Appcolor.grey),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () {
              // Add your functionality for 'PORTFOLIO' here
            },
            child: CustomText(text: 'PORTFOLIO', color: Appcolor.grey),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () {
              // Add your functionality for 'RESUME' here
            },
            child: CustomText(text: 'RESUME', color: Appcolor.grey),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () {
              // Add your functionality for 'BLOG' here
            },
            child: CustomText(text: 'BLOG', color: Appcolor.grey),
          ),
          SizedBox(width: width * 0.009),
          TextButton(
            onPressed: () {
              // Add your functionality for 'CONTACT' here
            },
            child: CustomText(text: 'CONTACT', color: Appcolor.grey),
          ),
          SizedBox(width: width * 0.08),
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            MainHomeView(),
            SizedBox(height: 30,),
            AboutMe(),
            SizedBox(height: 30,),
            Services(),
          ],
        ),
      ),
    );
  }
}
