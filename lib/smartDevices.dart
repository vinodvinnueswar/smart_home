import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDevicesBox extends StatelessWidget {

  final String smartDeviceName;
  final String iconPath;
  final bool powerOn;
  void Function(bool)?onChanged;

     SmartDevicesBox({
   super.key,
    required this.smartDeviceName,
    required this.iconPath,
    required this.powerOn,
    required this.onChanged,


});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.0),
      child:Container(
        
      decoration: BoxDecoration(color: powerOn?Colors.white10 : Colors.grey,
      borderRadius: BorderRadius.circular(14)),
      padding: EdgeInsets.symmetric(vertical: 20.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[

        Image.asset(iconPath,height: 65,
        color: powerOn?Colors.white:Colors.black,),
          Row(
            children: [
             Expanded(child:Padding(
                 padding:EdgeInsets.only(left: 25),

                     child: Text(smartDeviceName,
                     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,

                     color: powerOn?Colors.white :Colors.black),
                     )
             )
               ,),

              CupertinoSwitch(
                activeColor: Colors.orange,
                thumbColor: Colors.white70,
                trackColor: Colors.black,
                value: powerOn
                ,onChanged: onChanged,
              ),

            ],
          )

      ]
      ),
      ),
    );
  }
}
