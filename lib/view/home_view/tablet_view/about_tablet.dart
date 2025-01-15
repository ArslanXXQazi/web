import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';

class AboutMeTablet extends StatelessWidget {
  const AboutMeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(
      height: height*.9,
      width: double.infinity,
      child: Row(children: [
        Stack(children: [
          Container(
            height: height*1,
            width: width*.5,
            child: Center(
              child: Container(
                height: height*.4,
                width: width*.25,
                decoration: BoxDecoration(
                  color: Appcolor.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Container(
                  height: height*.37,
                  width: width*.23,
                  color: Appcolor.darkBlue,
                )),
              ),
            ),
          ),
          Positioned(
            left: width*.15,top: height*.27,
            child: Container(
              height: height*.4,
              width: width*.25,
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
          height: height*1,
          width: width*.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                CustomTextBold(text: "About",fontsize: 30,),
                CustomTextBold(text: " Me",color: Appcolor.yellow,fontsize: 30,),
              ],),
              SizedBox(height: height*.06,),
              CustomText(text: 'There are many variations of passages ofLorem Ipsumavailable, but the majority havesuffered alteration in some form, by injected humour,',color: Colors.grey,),
              SizedBox(height: height*.03,),
              CustomText(text: 'Passages ofLorem Ipsumavailable, but the majority havesufferedalteration in some form, by injected humour',color: Colors.grey,),
              SizedBox(height: height*.03,),
              Container(
                height: height*.07,
                width: width*.15,
                child: Center(child: CustomText(text: 'Contact Us',color: Colors.black,),),
                decoration: BoxDecoration(
                  color: Appcolor.yellow,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],),
        )
      ],),
    );
  }
}
