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
  double rating = 5;
  String? category;
  bool easy = false, design = false, speed = false, support = false, agree = false;

  final nameController = TextEditingController();
  final rollController = TextEditingController();
  final feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 5',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Feedback Form', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: Icon(Icons.arrow_back, color: Colors.black),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name'),
              SizedBox(height: 5),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter  your name',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 16),
              Text('Roll Number'),
              SizedBox(height: 5),
              TextField(
                controller: rollController,
                decoration: InputDecoration(
                  hintText: 'Enter  your roll number',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 16),
              Text('Enter your feedback...'),
              SizedBox(height: 5),
              TextField(
                controller: feedbackController,
                maxLines: 5,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 16),
              Text('Rate your experience'),
              Slider(
                value: rating,
                min: 0,
                max: 10,
                divisions: 10,
                label: rating.toInt().toString(),
                onChanged: (val) {
                  setState(() {
                    rating = val;
                  });
                },
              ),
              Text('${rating.toInt()}'),
              SizedBox(height: 16),
              Text('Select a category'),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<String>(
                  value: category,
                  isExpanded: true,
                  underline: SizedBox(),
                  hint: Text('Choose  a  category'),
                  items: ['Bug', 'UI', 'Performance', 'Other']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      category = val;
                    });
                  },
                ),
              ),
              SizedBox(height: 24),
              Text('What features did you like?', style: TextStyle(fontWeight: FontWeight.bold)),
              CheckboxListTile(
                value: easy,
                onChanged: (val) => setState(() => easy = val!),
                title: Text('Easy to Use'),
              ),
              CheckboxListTile(
                value: design,
                onChanged: (val) => setState(() => design = val!),
                title: Text('Design'),
              ),
              CheckboxListTile(
                value: speed,
                onChanged: (val) => setState(() => speed = val!),
                title: Text('Speed'),
              ),
              CheckboxListTile(
                value: support,
                onChanged: (val) => setState(() => support = val!),
                title: Text('Support'),
              ),
              CheckboxListTile(
                value: agree,
                onChanged: (val) => setState(() => agree = val!),
                title: Text('I agree to the terms and conditions'),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('Name: ${nameController.text}');
                    print('Roll: ${rollController.text}');
                    print('Feedback: ${feedbackController.text}');
                    print('Rating: $rating');
                    print('Category: $category');
                    print('Liked: ${[easy, design, speed, support]}');
                    print('Agree: $agree');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Feedback submitted successfully!')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
