
import 'package:contador/src/pages/contador.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build( context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorPage()
    );
  }
}