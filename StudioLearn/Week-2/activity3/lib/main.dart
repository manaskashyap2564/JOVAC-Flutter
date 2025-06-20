import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity 3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.person),
          title: Text('Day 6'),
          actions: [
            Icon(Icons.login),
            SizedBox(width: 20),
            Icon(Icons.logout),
            SizedBox(width: 20),
          ],
          centerTitle: true,
          backgroundColor: Colors.grey,
          foregroundColor: Colors.white,
        ),
        body: Column(children: []),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.purple,
          onPressed: () {
            print('hello');
          },
          child: Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: 
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/img1.png',
                    // fit: BoxFit.cover,
                    // width: double.infinity,
                    // height: 250,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(  
          type: BottomNavigationBarType.fixed,  
          items: [    
            BottomNavigationBarItem(      
                icon: Icon(Icons.home),      
                label: 'Home',      
                tooltip: 'Go to Home',    
              ),    
              BottomNavigationBarItem(      
                icon: Icon(Icons.search),      
                label: 'Search',      
                tooltip: 'Search for something',    
              ),    
              BottomNavigationBarItem(      
                  icon: Icon(Icons.person),      
                  label: 'Profile',      
                  tooltip: 'Go to Profile',    
              ),    
              BottomNavigationBarItem(      
                    icon: Icon(Icons.settings),      
                    label: 'Settings',      
                    tooltip: 'Go to Settings',    
              ),  
            ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //       tooltip: 'Go to Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.search),
        //       label: 'Search',
        //       tooltip: 'Go to Search',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: 'Profile',
        //       tooltip: 'Go to Profile',
        //     ),
        //   ],
        // ),
      ),
    );
  }
}