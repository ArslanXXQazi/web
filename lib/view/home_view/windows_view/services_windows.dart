import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(
      height: height*.9,
      width: width*.85,
      color: Appcolor.lightgrey.withOpacity(0.3),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*.07),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(children: [
            CustomTextBold(text: "My",fontsize: 30,),
            CustomTextBold(text: " Service",color: Appcolor.yellow,fontsize: 30,),
          ],),
          SizedBox(height: height*.04,),
          CustomText(text: 'There are many variations of passages ofLorem Ipsum\navailable, but the majority havesuffered alteration in some\nform, by injected humour,',color: Colors.grey,),
            SizedBox(height: height*.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                height: height*.45,
                width:width*.22,
                decoration: BoxDecoration(
                  color: Appcolor.darkBlue,
                  borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications_active_outlined,color: Appcolor.yellow,size: 40,),
                    SizedBox(height: height*.02,),
                    CustomTextBold(text: 'Digital'),
                    CustomTextBold(text: 'Marketing'),
                    SizedBox(height: height*.03,),
                    CustomText(text: 'There are many variations of',color: Colors.grey,),
                    CustomText(text: 'passages ofLorem Ipsumavailable',color: Colors.grey,),
                    CustomText(text: 'but the majority havesuffered',color: Colors.grey,),
                    CustomText(text: 'alteration in some',color: Colors.grey,),
                ],),
              ),
              Container(
                height: height*.45,
                width:width*.22,
                decoration: BoxDecoration(
                    color: Appcolor.darkBlue,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.web,color: Appcolor.yellow,size: 40,),
                    SizedBox(height: height*.02,),
                    CustomTextBold(text: 'Web'),
                    CustomTextBold(text: 'Development'),
                    SizedBox(height: height*.03,),
                    CustomText(text: 'There are many variations of',color: Colors.grey,),
                    CustomText(text: 'passages ofLorem Ipsumavailable',color: Colors.grey,),
                    CustomText(text: 'but the majority havesuffered',color: Colors.grey,),
                    CustomText(text: 'alteration in some',color: Colors.grey,),
                  ],),
              ),
              Container(
                height: height*.45,
                width:width*.22,
                decoration: BoxDecoration(
                    color: Appcolor.darkBlue,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.auto_graph,color: Appcolor.yellow,size: 40,),
                    SizedBox(height: height*.02,),
                    CustomTextBold(text: 'Creative'),
                    CustomTextBold(text: 'Graphic Design'),
                    SizedBox(height: height*.03,),
                    CustomText(text: 'There are many variations of',color: Colors.grey,),
                    CustomText(text: 'passages ofLorem Ipsumavailable',color: Colors.grey,),
                    CustomText(text: 'but the majority havesuffered',color: Colors.grey,),
                    CustomText(text: 'alteration in some',color: Colors.grey,),
                  ],),
              ),
            ],)
        ],),
      ),
    );
  }
}
