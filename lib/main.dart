import 'package:electronic_rosary/page/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async{
  runApp(const MyApp());
    await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, 
    DeviceOrientation.portraitDown,  
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}