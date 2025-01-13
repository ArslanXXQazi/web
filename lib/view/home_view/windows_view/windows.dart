import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';


class HomeViewWindows extends StatelessWidget {
  const HomeViewWindows({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Appcolor.darkGrey,
      appBar: AppBar(
        backgroundColor: Appcolor.darkBlue,
        title: Row(children: [
          SizedBox(width: width*.11,),
          CustomTextBold(text: 'About'),
          CustomTextBold(text: 'Me.',color: Appcolor.yellow),
        ],),
        actions: [
          CustomText(text: 'HOME'),
          SizedBox(width: width*.009,),
          CustomText(text: 'ABOUT',color: Appcolor.grey,),
          SizedBox(width: width*.009,),
          CustomText(text: 'SERVICE',color: Appcolor.grey),
          SizedBox(width: width*.009,),
          CustomText(text: 'PROTFOLIO',color: Appcolor.grey),
          SizedBox(width: width*.009,),
          CustomText(text: 'RESUME',color: Appcolor.grey),
          SizedBox(width: width*.009,),
          CustomText(text: 'BLOG',color: Appcolor.grey),
          SizedBox(width: width*.009,),
          CustomText(text: 'CONTACT',color: Appcolor.grey),
          SizedBox(width: width*.08,),
        ],
      ),
      body: Container(
        height: height*1,
        width: width*1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  width: width*.5,
                  height: height*.85,
                  child: Padding(
                    padding: EdgeInsets.only(left: width*.12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      CustomText(text: 'Hello, Wellcome',color: Appcolor.yellow,),
                      SizedBox(height: height*.1,),
                      CustomTextBold(text: 'I m Anderson Coper',fontsize: 35,),
                        SizedBox(height: height*.03,),
                      CustomText(text: 'There are many variations of passages ofLorem Ipsum\navailable, but the majority havesuffered alteration in some\nform, by injected humour, ',color: Appcolor.grey,),
                        SizedBox(height: height*.03,),
                        Container(
                          height: height*.05,
                          width: width*.1,
                          child: Center(child: CustomText(text: 'Contact',color: Colors.black,),),
                          decoration: BoxDecoration(
                            color: Appcolor.yellow,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        )
                    ],),
                  ),
                ),
                Container(
                  width: width*.5,
                  height: height*.85,
                  child: Center(child:
                  Container(
                    width: width*.17,
                    height: height*.4,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(image: AssetImage('assets/profile.png'),fit: BoxFit.cover,)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  ),
                ),
              ],),
              Container(
                height:height*.15,
                width: width*1,
                color: Appcolor.darkBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
