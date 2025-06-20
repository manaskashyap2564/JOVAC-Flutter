import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'assignment3',
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text('Home', style: TextStyle(color: Colors.black)),
        //   centerTitle: true,
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   actions: [Icon(Icons.settings, color: Colors.black)],
        // ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text('Welcome to Our App', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('Explore the features and information we offer.', textAlign: TextAlign.center),
                    Text('Stay updated with the latest news and insights.', textAlign: TextAlign.center),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text('App Highlights', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: Icon(Icons.explore, color: Colors.black),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Explore', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Discover new content and features', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: Icon(Icons.email_outlined, color: Colors.black),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Contact', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Get in touch with us', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //     BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        //     BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Contact'),
        //   ],
        // ),
      ),
    );
  }
}
