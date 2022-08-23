import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

double scHeight(double per, BuildContext context){
  double h = MediaQuery.of(context).size.height;
  return h * per/100;
}
double scWidth(double per,BuildContext context){
  double w = MediaQuery.of(context).size.width;
  return w * per/100;
}
TextStyle style1(){
  return TextStyle(
    fontSize: 30,
    fontFamily: 'Yaahow',
  );
}
TextStyle style2(){
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Yaahow',
  );
}
