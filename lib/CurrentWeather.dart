
import 'package:flutter/material.dart';

Widget currentweather( String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       
        Text(temp,style: TextStyle(fontSize: 60),),
        SizedBox(height: 10,),
        Text(location,style: TextStyle(fontSize: 30),),
        SizedBox(height: 10,),
      ],
    ),
  );
}
