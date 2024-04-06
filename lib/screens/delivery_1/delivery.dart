import 'package:flutter/material.dart';
import 'package:zomato/screens/delivery_1/search/search.dart';
import 'explore_container/explore.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 15,right: 15),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Row(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height*0.04,
                      child: Image.asset("assest/images/icons/location.png")
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text("Empire Business Hub",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                          Icon(Icons.keyboard_arrow_down_sharp)
                        ],
                      ),
                      Text("Sola, Ahmedabad",style: TextStyle(color: Colors.black.withOpacity(0.8)),)
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.09,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.030,
                    child: Image.asset("assest/images/icons/translate.png"),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                  CircleAvatar(child: Text("M"),backgroundColor: Colors.blue.withOpacity(0.5),)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Search(context),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Container(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.5),
                height: MediaQuery.of(context).size.height*0.14,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30)),
                child: Image.asset("assest/images/icons/vip.png"),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Row(
                children: [
                  Expanded(child: Container(color: Colors.black,height: MediaQuery.of(context).size.height*0.0005)),
                  const Text("    EXPLORE    ",style: TextStyle(letterSpacing: 2),),
                  Expanded(child: Container(color: Colors.black,height: MediaQuery.of(context).size.height*0.0005))
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Explore_container(context,"assest/images/food/best-price.png","Offers","Up to 60% OFF"),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Explore_container(context,"assest/images/food/achievement.png","Play & Win","Exciting prizes"),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Explore_container(context,"assest/images/food/christmas-dinner.png","Play & Win","Exciting prizes"),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Explore_container(context,"assest/images/food/masala-dosa.png","Play & Win","Exciting prizes"),
                    SizedBox(width: MediaQuery.of(context).size.width*0.025,),
                    Explore_container(context,"assest/images/food/pasta.png","Play & Win","Exciting prizes"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
