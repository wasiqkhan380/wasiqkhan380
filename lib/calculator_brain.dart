import 'dart:math';
import 'package:flutter/cupertino.dart';

class  CalculatorBrain{

  CalculatorBrain({@required this.weight,this.height});
  int height;
  int weight;
  double _bmi;
  String  CalculateBMI(){
    _bmi=weight / pow(height / 100, 2);
  return _bmi.toStringAsFixed(1);
}
String getResult() {
  if (_bmi >= 25) {
    return 'overweight';
  } else if (_bmi > 18.5) {
    return 'normal';
  } else {
  return 'underweight';
   }
  }


    String getInterpretation() {
      if (_bmi >= 25) {
        return 'you have heigher than your body weight ! try to more exsercise';
      } else if (_bmi >= 18.5) {
        return 'youhave a normal body weight';
      } {
      return 'you have lower than your body weight ! try to eat more ';

     }
  }
}