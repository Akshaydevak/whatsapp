import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customIconWidget(IconData icon,{Function? onPress}){
  return IconButton(onPressed: (){
    if(onPress!=null){
      onPress();
    }
  }, icon: Icon(icon,color: Colors.white,size: 23,));
}