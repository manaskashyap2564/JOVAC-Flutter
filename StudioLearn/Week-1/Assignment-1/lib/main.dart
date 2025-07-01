import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Card',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Contact', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          leading: Icon(Icons.arrow_back, color: Colors.black),
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(height: 20),

            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile.jpg'), // Add image in assets folder
            ),

            SizedBox(height: 10), // 10 unit below image

            Text(
              'Manas Kashyap',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),

            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5), // 5 unit spacing
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.phone, size: 20),
                        ),
                        SizedBox(width: 10),
                        Text('+91 70840 xxxxx'),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5), // 5 unit spacing
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.email, size: 20),
                        ),
                        SizedBox(width: 10),
                        Text('manas.kashyap_cs.aiml23@gla.ac.in'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
