import 'package:flutter/material.dart';
import 'package:smart_home/smartDevices.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  List mySmartDevices=[

    ["Smart Light","lib/icons/light.png",false],
    ["Smart AC","lib/icons/ac.png",false],
    ["Smart Fan","lib/icons/fan.png",false],
    ["Smart TV","lib/icons/monitor.png",false],
  ];
  void powerSwitchChanged(bool value,int index){
    setState(() {
      mySmartDevices[index][2]=value;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black12,
      body:Container(

        decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assests/img 2.jpg"),
          fit: BoxFit.fill,
        )
        ),


        child: SafeArea(
        
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 25 ) ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("lib/icons/menu.png",height: 45,color: Colors.white),

            Icon(Icons.person,size: 45,color: Colors.white,),
          ],
        ),
      ),

            SizedBox(height: 30.5,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 40.5),
            child:Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome ",style: TextStyle(color: Colors.white,fontSize: 15),),
                Text("Home",style: TextStyle(fontSize: 40,color: Colors.white),)

              ],
            )
            ),

            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child:
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 40.5),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Smart Devices",style: TextStyle(color: Colors.white,fontSize: 20),)
              ],

            )
            ),
       Expanded(child: GridView.builder(
         padding: EdgeInsets.all(20),
         itemCount: mySmartDevices.length,
           gridDelegate:
                         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,

                         childAspectRatio: 1/1.3),


           itemBuilder: (context,index){

           return SmartDevicesBox(
             smartDeviceName:mySmartDevices[index][0],
             iconPath:mySmartDevices[index][1],
             powerOn:mySmartDevices[index][2],
             onChanged: (value) => powerSwitchChanged(value,index),

           );

           }
           )
       )


    ],
    ),
      ),
      ),
    );
  }
}
