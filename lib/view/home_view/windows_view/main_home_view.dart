import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';

class MainHomeView extends StatelessWidget {
  const MainHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(
      color: Appcolor.darkGrey.withOpacity(0.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width*.5,
            height: height*1,
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
            height: height*1,
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
    );
  }
}
