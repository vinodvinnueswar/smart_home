import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smart_home/homepager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => Homepage()), (
          route) => false);
    }
    );

    return Scaffold(
      backgroundColor: Colors.orange[700],
      body:
         Center(child:
         Container(
           decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage("assests/smart-home.png",)
               ),),

           child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
          children:[


           Container(
             // decoration: const Decoration(BoxDecoration(boxShadow: BoxShadow(color:Colors.grey))),

             height: 110,
             child: Text("smart home",style: TextStyle(fontSize: 35.5,fontWeight:FontWeight.w900,
                 color: Colors.black,fontStyle:FontStyle.italic),),
           )
    ]    ),
    ),
         ),
    );
  }
}

