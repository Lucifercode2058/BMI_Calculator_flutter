import 'dart:math';
import 'package:flutter/material.dart';

class Brain {
  Brain({required this.height, required this.weight,});
  final int? height;
  final int ?weight;

  double _result = 0;

  String Calculate() {
   _result =  weight! / pow(height!/100, 2) ;
    return _result.toStringAsFixed(1);
  }
  String intre() {
    if(_result>=30) {
      return 'OVERWEIGHT ';
    }
    else if(_result>=18.5 && _result<=25.5  ){
      return'CONGRATULATION!!!FOR HAVING A HEALTHY BODY';
    }else{
      return 'MALNOURISHED OR UNDERWEIGHT';
    }
  }
  String review(){
    if (_result>=30) {

      return 'YOU YOU NEED TO  WORKOUT DAILY AND EAT HEALTHY';
    }
    else if(_result>18.5 && _result<=25.5){
      return'YOU HAVE A HEALTHY BODY IN THIS AGE KEEP ON MAINTAINING  IT';
    }else{

      return 'EAT MUCH NUTRITION AND HIT GYM';
    }
  }

}



