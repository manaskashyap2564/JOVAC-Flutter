import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile UI',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpg'), // image path
                ),
                SizedBox(height: 10),

                Text(
                  'Manas Kashyap',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(color: Colors.blue),
                ),
                Text(
                  'U.P.',
                  style: TextStyle(color: Colors.blue),
                ),

                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Skills',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Chip(label: Text('UI/UX Design')),
                    Chip(label: Text('User Research')),
                    Chip(label: Text('Prototyping')),
                    Chip(label: Text('Wireframing')),
                    Chip(label: Text('Design Systems')),
                    Chip(label: Text('Interaction Design')),
                  ],
                ),

                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'About',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Manas is a product designer with over 5 years of experience in creating user-centered designs. He specializes in UI/UX design, user research, and prototyping. Ethan is passionate about solving complex problems and creating intuitive and engaging user experiences.',
                  style: TextStyle(fontSize: 14),
                ),

                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Contact',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10),
                    Text('kashyap.manas.glams@gmail.com'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10),
                    Text('+91 70840 xxxxx'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.link),
                    SizedBox(width: 10),
                    Text('linkedin.com/in/manaskashyap2564'),
                  ],
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
      ),
    );
  }
}
