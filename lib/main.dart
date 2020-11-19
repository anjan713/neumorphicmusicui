import 'package:flutter/material.dart';
import 'mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        backgroundColor: Colors.grey.shade200,
        dialogBackgroundColor: Colors.grey.shade200,
      ),
      home: MainScreen(),
       );
  }
}

