import 'package:bmi_calc/home_screen.dart';
import 'package:flutter/material.dart';
import 'result_bottom_nav.dart';
import 'screencontainer.dart';
import 'secret.dart';


  //  'if your BMI is: under 18.5kg/m2 – you are considered underweight and possibly malnourished. 18.5 to 24.9kg/m2 – you are within a healthy weight range for young and middle-aged adults. 25.0 to 29.9kg/m2 – you are considered overweight.';

class Resultpage extends StatelessWidget {
  String ?review;
  String ?Bmi;
  String ?intre;

  Resultpage({this.review,this.Bmi,this.intre});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0f0d21),
      appBar: AppBar(
        backgroundColor: Color(0xff0f0d21),
        title: Text(
          'Result Page :)',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      bottomNavigationBar: bootomnav(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Expanded(
              
              child: Text(
                
                'RESULT!!',
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,fontFamily: 'DynaPuff'),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: screen(
              boxcolor: inactivecoloring,
              boxcont: Column(
                children: [
                  Expanded(child: Text(intre.toString(),style: TextStyle(color: Colors.yellow,fontSize: 30,fontWeight: FontWeight.w800,fontFamily: 'DynaPuff'),)),
                  Expanded(child: Text(Bmi.toString(),style: TextStyle(fontWeight: FontWeight.w900,fontSize: 100 ,color: Colors.green,fontFamily: 'DynaPuff'),)),
                  Expanded(child: Text(review.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.red,fontFamily: 'DynaPuff'),)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
