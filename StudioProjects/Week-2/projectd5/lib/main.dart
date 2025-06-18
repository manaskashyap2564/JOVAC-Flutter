
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'projectd2',
      home: Scaffold(
        appBar: AppBar(),
        body:
        ListTile(
          leading: Icon(Icons.call),
          title: Text('Contact'),
          subtitle: Text('Call me'),
          trailing: Icon(Icons.arrow_forward),
          tileColor: Colors.red,
          selected:true,
          selectedTileColor: Colors.green,
          selectedColor: Colors.white,
        ),

        // Wrap(
        //   children: [
        //     Container(
        //       color: Colors.red,
        //       height: 50,
        //       width: 200,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //       height: 50,
        //       width: 200,
        //     ),
        //     Container(
        //       color: Colors.orange,
        //       height: 50,
        //       width: 200,
        //     ),
        //   ],
        // ),

        // Container(
        //   child: Icon(Icons.phone),
        // )

        // Row(
        //   children: [
        //     Container(
        //       width: 50,
        //       height: 50,
        //       color: Colors.red,
        //     ),
        //     SizedBox(width: 20,),
        //     Container(
        //       width: 50,
        //       height: 50,
        //       color: Colors.orange,
        //     ),
        //     SizedBox(width: 20,),
        //     Container(
        //       width: 50,
        //       height: 50,
        //       color: Colors.purple,
        //     ),
        //   ],
        // ),

        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 100),
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     color: Colors.red,
        //   ),
        // ),

        // Stack(
          // children:
        //   [
        //     Image.asset('assets/images/img.jpeg'),
        //     Positioned(
        //         left: 20,
        //         child: Text('Girls',style: TextStyle(fontSize: 20),)
        //     ),
        //     Positioned(
        //       right: 10,
        //       child: Image.asset('assets/images/img.jpeg',width: 50,height: 50,),
        //     ),
        //   ],
        // )

        // Center(
        //   child: Container(
        //     height: 200,
        //     width: 200,
        //     color: Colors.red,
        //     child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1zwhySGCEBxRRFYIcQgvOLOpRGqrT3d7Qng&s')
              // Image.asset('assets/images/img1.png',
              // fit: BoxFit.fill,
              // color: Colors.blue,
              // colorBlendMode: BlendMode.darken,
            // ),
          // ),
        // ),

      ),
    );
  }
}
