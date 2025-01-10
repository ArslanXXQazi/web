import 'package:flutter/material.dart';


class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width*.8,
              height: height*.2,
              color: Colors.orangeAccent,
            ),
            SizedBox(height: 20,),
            Container(
              width: width*.8,
              height: height*0.3,
              color: Colors.lightBlueAccent,
              child: Center(child: Text('Mobile View',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),),
            ),
            SizedBox(height: 10,),
            Container(
              width: width*.8,
              height: height*0.3,
              color: Colors.grey,
            ),

          ],),
      ),
    );
  }
}
