import 'package:flutter/material.dart';
import 'package:smart_home/homepager.dart';
import 'package:smart_home/splashscreen.dart';
void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

    );
  }
}
