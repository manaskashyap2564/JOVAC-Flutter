import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  bool showWidget = false;
  List<bool> tasks = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'assignment 4',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Interactive Demo', style: TextStyle(color: Colors.white)),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Text('Counter', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 8),
              Text('Tap the button to increment the counter.', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              Text('Count: $counter', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[300],
                    foregroundColor: Colors.black,
                    shape: StadiumBorder(),
                  ),
                  child: Text('Increment'),
                ),
              ),
              SizedBox(height: 30),
              Text('Toggle Visibility', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 8),
              Text('Toggle the visibility of the widget below.', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Show Widget', style: TextStyle(color: Colors.white)),
                  Switch(
                    value: showWidget,
                    onChanged: (val) {
                      setState(() {
                        showWidget = val;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              if (showWidget)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://picsum.photos/300/200',
                  ),
                ),
              SizedBox(height: 30),
              Text('Task List', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 8),
              Text('Mark tasks as completed by checking the boxes.', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              for (int i = 0; i < tasks.length; i++)
                CheckboxListTile(
                  title: Text('Task ${i + 1}: ${['Buy groceries', 'Finish report', 'Call mom'][i]}', style: TextStyle(color: Colors.white)),
                  value: tasks[i],
                  onChanged: (val) {
                    setState(() {
                      tasks[i] = val!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.trailing,
                  checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  activeColor: Colors.green,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
