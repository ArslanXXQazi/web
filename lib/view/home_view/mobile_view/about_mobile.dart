import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(
      height: height*.9,
      width: double.infinity,
      child: Column(children: [
        Stack(children: [
          Container(
            height: height*.4,
            width: width*1,
            child: Center(
              child: Container(
                height: height*.3,
                width: width*.7,
                decoration: BoxDecoration(
                  color: Appcolor.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Container(
                  height: height*.27,
                  width: width*.65,
                  color: Appcolor.darkBlue,
                )),
              ),
            ),
          ),
          Positioned(
            left: width*.2,top: height*.075,
            child: Container(
              height: height*.3,
              width: width*.7,
              decoration: BoxDecoration(
                color: Appcolor.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(image: AssetImage('assets/profile.png'),fit: BoxFit.cover,)),
            ),
          )
        ],),
        Container(
          height: height*.5,
          width: width*1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.04),
            child: Column(
              children: [
                SizedBox(height: height*.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  CustomTextBold(text: "About",fontsize: 25,),
                  CustomTextBold(text: " Me",color: Appcolor.yellow,fontsize: 25,),
                ],),
                SizedBox(height: height*.02,),
                CustomText(text: 'There are many variations of passages ofLorem Ipsumavailable, but the majority havesuffered alteration in some form, by injected humour,',color: Colors.grey,fontsize: 15,),
                SizedBox(height: height*.02,),
                CustomText(text: 'Passages ofLorem Ipsumavailable, but the majority havesufferedalteration in some form, by injected humour',color: Colors.grey,fontsize: 15,),
                SizedBox(height: height*.02,),
                Container(
                  height: height*.07,
                  width: width*.5,
                  child: Center(child: CustomText(text: 'Contact Us',color: Colors.black,),),
                  decoration: BoxDecoration(
                    color: Appcolor.yellow,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],),
          ),
        )
      ],),
    );
  }
}
