import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Row(children: [
      Expanded(
        flex: 50,
          child: Container(
        child:  Stack(
          children: [
           Container(
             height: height*.4,
             width: width*.2,
             decoration: BoxDecoration(
               color: Appcolor.yellow,
               borderRadius: BorderRadius.circular(10),
             ),
             child: Center(
               child: Container(
                 height: height*.37,
                 width: width*.19,
                 color: Appcolor.darkBlue,
               ),
             ),
           ),
            Positioned(
              left: width*.013,bottom: height*.03,
              child: Container(
                height: height*.4,
                width: width*.2,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: Image(image: AssetImage('assets/profile.png'),fit: BoxFit.cover,)),
              ),
            )

          ],
        ),
      )),
      Expanded(
          flex: 50,
          child: Container(
            child:Column(children: [
              Row(
                children: [
                  CustomTextBold(text: "About "),
                  CustomTextBold(text: "Me",color: Appcolor.yellow,),
                ],
              ),
            ],) ,
          )),
    ],);
  }
}
