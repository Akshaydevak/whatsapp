import 'package:flutter/material.dart';

Widget customBoldTex(String text,{double size=22}){
  return      Text(text,style: TextStyle(fontSize: size,fontWeight: FontWeight.bold),);
}