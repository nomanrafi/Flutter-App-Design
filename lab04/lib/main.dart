import 'package:flutter/material.dart';

void main() {
  runApp(CustomApp());
}

class CustomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Component Customization',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitchOn = false;
  double rating = 2.5;
  final TextEditingController _nameController = TextEditingController();

  List<String> userNotes = [];

  void _addNote() {
    if (_nameController.text.isNotEmpty) {
      setState(() {
        userNotes.add(_nameController.text);
        _nameController.clear();
      });
    }
  }

  void _removeNoteAt(int index) {
    setState(() {
      userNotes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component Showcase'),
        actions: [
          Icon(Icons.build),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.person, size: 30),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Enter Note',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _addNote,
                  child: Text('Add'),
                )
              ],
            ),
            SizedBox(height: 20),
            SwitchListTile(
              title: Text('Enable Dark Mode'),
              value: isSwitchOn,
              onChanged: (value) {
                setState(() {
                  isSwitchOn = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rating:', style: TextStyle(fontSize: 16)),
                Slider(
                  min: 0,
                  max: 5,
                  divisions: 10,
                  value: rating,
                  onChanged: (value) {
                    setState(() {
                      rating = value;
                    });
                  },
                ),
                Text('${rating.toStringAsFixed(1)}'),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: userNotes.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      leading: Icon(Icons.note, color: Colors.teal),
                      title: Text(userNotes[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _removeNoteAt(index),
                      ),
                    ),
                  );
                },
              ),
            ),
            Image.network(
              'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=600',
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}
