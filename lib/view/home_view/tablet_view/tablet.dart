import 'package:flutter/material.dart';


class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return  Container(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width*.35,
              height: height*0.15,
              color: Colors.yellow,
            ),
            SizedBox(height: 20,),
            Container(
              width: width*1,
              height: height*0.35,
              color: Colors.red,
              child: Center(child: Text('Tablet View',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  width: width*.47,
                  height: height*.25,
                  color: Colors.blue,
                ),
                Container(
                  width: width*.47,
                  height: height*.25,
                  color: Colors.blue,
                ),
              ],),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width*.4,
                  height: height*.03,
                  color: Colors.grey,
                ),
                Container(
                  width: width*.47,
                  height: height*.03,
                  color: Colors.grey,
                ),
              ],),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width*.47,
                  height: height*.03,
                  color: Colors.grey,
                ),
                Container(
                  width: width*.47,
                  height: height*.03,
                  color: Colors.grey,
                ),

              ],),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width*.47,
                  height: height*.03,
                  color: Colors.grey,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: width*.1),
                  child: Container(
                    width: width*.37,
                    height: height*.03,
                    color: Colors.grey,
                  ),
                ),

              ],)
          ],),
      ),
    );
  }
}
