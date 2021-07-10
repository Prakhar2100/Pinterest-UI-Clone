//Prakhar Kochar
//BT19CSE032
//CSE-A
//ITW-FINAL-PROJECT
//lINK TO THE WEB APP MADE ::  'https://prakharbt19cse032.web.app'
//lINK TO THE VIDEO :: 'https://drive.google.com/file/d/1qk1c_GQ-lYrwWLm2_M0IHIUfOQvdPJE-/view?usp=sharing',

import 'package:flutter/material.dart';
import 'grido.dart';
  
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BT19CSE032 ',
      home: ActionOnThePeak(),
    );
  }
}

