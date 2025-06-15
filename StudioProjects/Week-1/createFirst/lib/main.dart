import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'MyFirst App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyFirst App'),
        ),

        // Center(child: Text('Hello'),)
        // // Container(
        // //   height: 100,
        // //   width: 100,
        // //   color: Colors.deepOrangeAccent,
        // // )
        // Container(
          // height: 100 ,
          // width: 100,
          // color: Colors.orange,
          // child:
        body:Row(
          spacing: 20,
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 20,
                width: 20,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                height: 20,
                width: 20,
                color: Colors.lightBlue,
              ),
              Container(
                height: 20,
                width: 20,
                color: Colors.greenAccent,
              ),
            ],
          ),
        )
    );
  }
}