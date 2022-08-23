import 'dart:ui';
import 'package:bmi_calc/secret.dart';

import 'actionbuttons.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screencontainer.dart';
import 'boxcontent.dart';
import 'Result_page.dart';
const apptext=TextStyle(color:Colors.white,fontSize: 23,fontFamily: 'DynaPuff');
const heavytext=TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w900,fontFamily: 'DynaPuff');
int height=181;
int weight=50;
int age=25;

 const activecoloring = Colors.cyan;
const inactivecoloring = Color(0xff12122a);

enum Gender { male, female,slider }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? Selectedcolor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR :)',
          style: apptext,
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: screen(
                    boxcolor:
                    Selectedcolor == Gender.male
                          ? activecoloring
                          : inactivecoloring,
                    boxcont:  boxcont(FontAwesomeIcons.mars, 'Male'),onpress: ( ){setState(() {
                    Selectedcolor=Gender.male;
                  });
                  },)),
              Expanded(
                  child: screen(
                     boxcolor: Selectedcolor == Gender.female
                          ? activecoloring
                          : inactivecoloring,
                     boxcont: boxcont(FontAwesomeIcons.venus, 'Female'),onpress: ( ){setState(() {
                       Selectedcolor=Gender.female;
                     });
                       },


                     ))
            ],
          )),
          Expanded(
              child: screen(
                boxcolor: activecoloring,
              boxcont: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: 'DynaPuff'),),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(height.toString(),style:heavytext),

                      Text('cm',style:TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'DynaPuff') ,),

                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 3.5,
                      trackShape: RoundedRectSliderTrackShape(),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),


                      activeTickMarkColor: Colors.red,
                  activeTrackColor: Colors.white,
                     inactiveTrackColor: Colors.grey,
                      thumbColor: Colors.pink,
                      overlayColor: Color(0x99721041),
                    ),
                    child: Slider(value:height.toDouble(),

                      min: 150.0,
                      max: 220.0,
                      onChanged: (double value){setState(() {
                       height=value.round();
                      });


                      },


                    ),
                  ),

                ],
              ),)),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: screen(
                    boxcolor:activecoloring,boxcont: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT',style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: 'DynaPuff'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(weight.toString(),style: heavytext,),
                        Text('kg',style: TextStyle(color: Colors.white,fontSize: 25),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buttons(but: FontAwesomeIcons.plus,press: (){setState(() {
                          weight++;
                        });},),
                        buttons(but: FontAwesomeIcons.minus,press: (){setState(() {
                          weight--;
                        });},),
                      ],
                    )


                  ],
                ),),
              ),
              Expanded(
                child: screen(
                    boxcolor:activecoloring, boxcont: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE',style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: 'DynaPuff'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(age.toString(),style: heavytext,),
                        Text('years',style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: 'DynaPuff'),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buttons(but: FontAwesomeIcons.plus,press:(){setState(() {
                          age++;
                        });}),
                        buttons(but: FontAwesomeIcons.minus,press: (){setState(() {
                          age--;
                        });},),
                      ],
                    )


                  ],
                ),),
              )
            ],
          )),
          GestureDetector(
            onTap: (){
              Brain result= Brain(height: height,weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Resultpage(
                  Bmi: result.Calculate(),
                  intre: result.intre(),
                  review: result.review(),


                );
              })); 
            },

            child: Container(

              child: Center(child: Text('Calculate BMI',style: heavytext,)),
              height: 90,
              width: double.infinity,
              color: Colors.teal,
              padding: EdgeInsets.only(bottom: 40),
            ),
          ),
        ],
      ),
    );
  }
}
