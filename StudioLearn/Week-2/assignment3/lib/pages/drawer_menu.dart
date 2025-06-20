import 'package:flutter/material.dart';



void main(){
  runApp(DrawerApp());
}

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigation Bar',
      home:Scaffold(
        appBar: AppBar(),
        body:Center(        
          child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text('Hello')),
              ListTile(leading: Icon(Icons.home), title: Text('Home')),
              ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ],
          ),
        ),),
        ),
      );
  }
}