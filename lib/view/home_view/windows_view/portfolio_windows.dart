import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(
    height:  height*.9,
    width: width*1,
    color: Appcolor.darkBlue,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    CustomTextBold(text: "My"),
    CustomTextBold(text: " Portfolio",color: Appcolor.yellow,),
    ],
    ),
    SizedBox(height: height*.03,),
    CustomText(text: 'There are many variations of passages ofLorem Ipsum',color: Colors.grey,),
    CustomText(text: 'available, but the majority havesuffered alteration in some',color: Colors.grey,),
    CustomText(text: 'form, by injected humour,',color: Colors.grey,),
    SizedBox(height: height*.05,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Container(
    height: height*.53,
    width: width*.2,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    ),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image(image: AssetImage('assets/image1.png'),fit: BoxFit.cover,)),
    ),
    SizedBox(width: width*.02,),
    Column(
    children: [
    Container(
    height: height*.25,
    width: width*.15,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    ),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image(image: AssetImage('assets/image2.png'),fit: BoxFit.cover,)),
    ),
    SizedBox(height: height*.02,),
    Container(
    height: height*.25,
    width: width*.15,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    ),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image(image: AssetImage('assets/image3.png'),fit: BoxFit.cover,)),
    ),
    ],
    ),
    SizedBox(width: width*.02,),
    Column(
    children: [
    Container(
    height: height*.25,
    width: width*.15,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    ),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image(image: AssetImage('assets/image4.png'),fit: BoxFit.cover,)),
    ),
    SizedBox(height: height*.02,),
    Container(
    height: height*.25,
    width: width*.15,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    ),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image(image: AssetImage('assets/image5.png'),fit: BoxFit.cover,)),
    ),
    ],
    ),
    ],)

    ],),
    );
  }
}
