import 'package:flutter/material.dart';
import 'package:web/components/constant/colors.dart';
import 'package:web/components/custom_text/custom_text.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height*1,
      width: width*1,
      color: Appcolor.darkGrey.withOpacity(0.5),
      child: Padding(
        padding:  EdgeInsets.only(top: height*.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: width * 1,
              height: height * .3,
              child: Center(
                child: Container(
                  width: width * .6,
                  height: height * 1,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage('assets/profile.png'),
                        fit: BoxFit.cover,
                      )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

            ),
            Container(
              width: width * 1,
              height: height * .7,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: width*.06),
                child: Column(
                  children: [
                    SizedBox(height: height*.02,),
                    CustomText(
                      text: 'Hello, Wellcome',
                      color: Appcolor.yellow,
                      fontsize: 20,
                    ),
                    SizedBox(
                      height: height * .03,
                    ),
                    CustomTextBold(
                      text: 'I m Furqan Qazi',
                      fontsize: 20,
                      color: Appcolor.yellow,
                    ),
                    SizedBox(
                      height: height * .03,
                    ),
                    CustomText(
                      text:
                      'There are many variations of passages ofLorem Ipsumavailable, but the majority havesuffered\n alteration in someform, by injected humour, ',fontsize: 15,
                      color: Appcolor.grey,
                    ),
                    SizedBox(
                      height: height * .03,
                    ),
                    Container(
                      height: height * .07,
                      width: width * .5,
                      child: Center(
                        child: CustomText(
                          text: 'Contact',
                          color: Colors.black,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Appcolor.yellow,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
