import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'chaallenge1',
      home: Scaffold(
        appBar: AppBar(),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 200,
              color: Colors.grey,
              child:
              Column(
                children: [

                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(110),
                        color: Color(0xFFf2c8a0)
                    ),
                    child: CircleAvatar(
                      // backgroundImage: ,
                    ),
                  ),

                  Text(
                    'Manas Kashyap',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ),
                  ),

                ],
              ),

            ),
            Row(
              children: [
                Badge(
                  // key: 'L',
                  smallSize: 20,
                  backgroundColor: Colors.greenAccent,
                ),
                Text(
                  'Manas Kashyap',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Badge(
                  // key: 'L',
                  smallSize: 20,
                  backgroundColor: Colors.lightBlue,
                ),
                Text(
                  'Manas Kashyap',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,

                  // textDirection: TextAlign.ltr,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}