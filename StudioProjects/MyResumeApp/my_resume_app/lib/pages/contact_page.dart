import 'package:flutter/material.dart';

void main() {
  runApp(const ContactPage());
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'assignment3',
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text('Contact', style: TextStyle(color: Colors.black)),
        //   centerTitle: true,
        //   leading: Icon(Icons.arrow_back, color: Colors.black),
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        // ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We'd love to hear from you! Whether you have a question, feedback, or just want to say hello, please don't hesitate to reach out.",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              Text('Contact Information', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Email'), Text('support@example.com')]),
              SizedBox(height: 8),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Phone'), Text('+1 (555) 123-4567')]),
              SizedBox(height: 8),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Address'), Expanded(child: Text('123 Main Street, Anytown, USA', textAlign: TextAlign.right))]),
              SizedBox(height: 20),
              Text('Contact Form', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Your  Name',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Your  Email',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: '',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text('Send Message'),
                ),
              ),
              SizedBox(height: 20),
              Text('Follow Us', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 16),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Icon(Icons.facebook),
                    ),
                    SizedBox(height: 4),
                    Text('Facebook'),
                    SizedBox(height: 16),
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Icon(Icons.alternate_email),
                    ),
                    SizedBox(height: 4),
                    Text('Twitter'),
                    SizedBox(height: 16),
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Icon(Icons.camera_alt),
                    ),
                    SizedBox(height: 4),
                    Text('Instagram'),
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: 2,
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
