
import 'package:first2/presentation/resources/them_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  //named constructer
  MyApp._internal();//singlton or single instance

  int  p=0;

  static final MyApp _instance=
       MyApp._internal();//factory

  factory  MyApp()=> _instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: getApplicationTheme(

      ),

    );
  }
}