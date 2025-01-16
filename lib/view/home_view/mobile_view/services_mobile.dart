import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';

class ServicesMobile extends StatelessWidget {
  const ServicesMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(
      height: height*1,
      width: width*.95,
      color: Appcolor.lightgrey.withOpacity(0.3),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*.05),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CustomTextBold(text: "My",fontsize: 25,),
                CustomTextBold(text: " Service",color: Appcolor.yellow,fontsize: 25,),
              ],),
              SizedBox(height: height*.04,),
              Center(child: CustomText(text: 'There are many variations of passages ofLorem Ipsumavailable, but the majority havesuffered alteration in some form, by injected humour,',color: Colors.grey,fontsize: 15,)),
              SizedBox(height: height*.04,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height*.28,
                      width:width*.8,
                      decoration: BoxDecoration(
                          color: Appcolor.darkBlue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications_active_outlined,color: Appcolor.yellow,size: 35,),
                          SizedBox(height: height*.02,),
                          CustomTextBold(text: 'Digital',fontsize: 20,),
                          CustomTextBold(text: 'Marketing',fontsize: 20,),
                          SizedBox(height: height*.03,),
                          CustomText(text: 'There are many variations of',color: Colors.grey,fontsize: 15,),
                          CustomText(text: 'passages ofLorem Ipsumavailable',color: Colors.grey,fontsize: 15,),
                          CustomText(text: 'but the majority havesuffered',color: Colors.grey,fontsize: 15,),
                          CustomText(text: 'alteration in some',color: Colors.grey,fontsize: 15,),
                        ],),
                    ),
                    SizedBox(height: height*.02,),
                    Container(
                      height: height*.28,
                      width:width*.8,
                      decoration: BoxDecoration(
                          color: Appcolor.darkBlue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications_active_outlined,color: Appcolor.yellow,size: 35,),
                          SizedBox(height: height*.02,),
                          CustomTextBold(text: 'Digital',fontsize: 20,),
                          CustomTextBold(text: 'Marketing',fontsize: 20,),
                          SizedBox(height: height*.03,),
                          CustomText(text: 'There are many variations of',color: Colors.grey,fontsize: 15,),
                          CustomText(text: 'passages ofLorem Ipsumavailable',color: Colors.grey,fontsize: 15,),
                          CustomText(text: 'but the majority havesuffered',color: Colors.grey,fontsize: 15,),
                          CustomText(text: 'alteration in some',color: Colors.grey,fontsize: 15,),
                        ],),
                    ),
                    SizedBox(height: height*.02,),
                    Container(
                      height: height*.28,
                      width:width*.8,
                      decoration: BoxDecoration(
                          color: Appcolor.darkBlue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications_active_outlined,color: Appcolor.yellow,size: 35,),
                          SizedBox(height: height*.02,),
                          CustomTextBold(text: 'Digital',fontsize: 20,),
                          CustomTextBold(text: 'Marketing',fontsize: 20,),
                          SizedBox(height: height*.03,),
                          CustomText(text: 'There are many variations of',color: Colors.grey,fontsize: 15,),
                          CustomText(text: 'passages ofLorem Ipsumavailable',color: Colors.grey,fontsize: 15,),
                          CustomText(text: 'but the majority havesuffered',color: Colors.grey,fontsize: 15,),
                          CustomText(text: 'alteration in some',color: Colors.grey,fontsize: 15,),
                        ],),
                    ),

                  ],),
              ),
            ],),
        ),
      ),
    );
  }
}
