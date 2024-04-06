import 'package:flutter/material.dart';

Widget Explore_container(context, String path, String text1, String text2){
  return Container(
      height: MediaQuery.of(context).size.height*0.18,
      width: MediaQuery.of(context).size.width*0.28,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black.withOpacity(0.2)),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(path,height: 60,),
        Text(text1,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
        Text(text2,style: const TextStyle(fontSize: 10),)
      ],
    ),
  );
}