import 'package:flutter/material.dart';

Widget Search(context){
  return Container(
    padding: const EdgeInsets.only(left: 10,right: 10),
      height: MediaQuery.of(context).size.height*0.06,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.black)
    ),
    child: Row(
      children: [
        const Icon(Icons.search_sharp,color: Colors.redAccent,),
        SizedBox(width: MediaQuery.of(context).size.width*0.02,),
        SizedBox(
            width: MediaQuery.of(context).size.width*0.68,
            child: const TextField(decoration: InputDecoration(hintText: 'Search "biryani"',border: InputBorder.none),)
        ),
        Container(width: MediaQuery.of(context).size.width*0.002,color: Colors.black,margin: const EdgeInsets.only(top: 4,bottom: 4),),
        SizedBox(width: MediaQuery.of(context).size.width*0.02,),
        const Icon(Icons.mic,color: Colors.redAccent,)
      ],
    ),
  );
}