import 'package:flutter/material.dart';

void main() {
  runApp(const AboutPage());
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'assignment3',
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
          // title: Text('About', style: TextStyle(color: Colors.black)),
          // centerTitle: true,
          // backgroundColor: Colors.white,
          // elevation: 0,
          // leading: Icon(Icons.arrow_back, color: Colors.black),
        // ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Our Mission', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 8),
              Text(
                'Our mission is to provide users with a comprehensive and reliable source of information on a wide range of topics. We strive to make knowledge accessible to everyone, fostering curiosity and lifelong learning.',
              ),
              SizedBox(height: 20),
              Text('Background', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 8),
              Text(
                'This app was developed by a team of passionate individuals dedicated to creating a valuable resource for users seeking information. We believe in the power of knowledge to empower individuals and contribute to a more informed society.',
              ),
              SizedBox(height: 20),
              Text('Contact Us', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 8),
              Text(
                'If you have any questions, feedback, or suggestions, please don’t hesitate to reach out to us at support@infoapp.com. We value your input and are committed to continuously improving our app.',
              ),
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: 1,
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
