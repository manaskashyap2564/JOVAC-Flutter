import 'package:flutter/material.dart';
import 'package:projectd8/pages/counter_app.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigation Bar',
      // home:BottomAppBarPage() ,
      home:Counter(),
    );
  }
}